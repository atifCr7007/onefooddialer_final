import 'dart:io' show Platform;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:auth_client/openapi.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/auth_resource_clients.dart';
import 'package:food_one/config/app_config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/// Secure storage for tokens
/// Uses SharedPreferences for web, FlutterSecureStorage for mobile
class AuthStorage {
  final _secureStorage = const FlutterSecureStorage();
  SharedPreferences? _prefs;

  static const _keyAccessToken = 'access_token';
  static const _keyRefreshToken = 'refresh_token';
  static const _keyTokenType = 'token_type';
  static const _keyUserId = 'user_id';
  static const _keyUserEmail = 'user_email';
  static const _keyUserName = 'user_name';

  Future<void> _initPrefs() async {
    if ((kIsWeb || Platform.isMacOS) && _prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
  }

  Future<void> saveTokens({
    required String accessToken,
    String? refreshToken,
    String? tokenType,
  }) async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      await _prefs!.setString(_keyAccessToken, accessToken);
      if (refreshToken != null) {
        await _prefs!.setString(_keyRefreshToken, refreshToken);
      }
      if (tokenType != null) {
        await _prefs!.setString(_keyTokenType, tokenType);
      }
    } else {
      await _secureStorage.write(key: _keyAccessToken, value: accessToken);
      if (refreshToken != null) {
        await _secureStorage.write(key: _keyRefreshToken, value: refreshToken);
      }
      if (tokenType != null) {
        await _secureStorage.write(key: _keyTokenType, value: tokenType);
      }
    }
  }

  Future<void> saveUser({
    required int userId,
    required String email,
    required String name,
  }) async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      await _prefs!.setString(_keyUserId, userId.toString());
      await _prefs!.setString(_keyUserEmail, email);
      await _prefs!.setString(_keyUserName, name);
    } else {
      await _secureStorage.write(key: _keyUserId, value: userId.toString());
      await _secureStorage.write(key: _keyUserEmail, value: email);
      await _secureStorage.write(key: _keyUserName, value: name);
    }
  }

  Future<String?> getAccessToken() async {
    // Use SharedPreferences for web and macOS (to avoid keychain signing issues)
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      return _prefs!.getString(_keyAccessToken);
    } else {
      return await _secureStorage.read(key: _keyAccessToken);
    }
  }

  Future<String?> getRefreshToken() async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      return _prefs!.getString(_keyRefreshToken);
    } else {
      return await _secureStorage.read(key: _keyRefreshToken);
    }
  }

  Future<String?> getTokenType() async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      return _prefs!.getString(_keyTokenType);
    } else {
      return await _secureStorage.read(key: _keyTokenType);
    }
  }

  Future<Map<String, String?>> getUserInfo() async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      return {
        'userId': _prefs!.getString(_keyUserId),
        'email': _prefs!.getString(_keyUserEmail),
        'name': _prefs!.getString(_keyUserName),
      };
    } else {
      return {
        'userId': await _secureStorage.read(key: _keyUserId),
        'email': await _secureStorage.read(key: _keyUserEmail),
        'name': await _secureStorage.read(key: _keyUserName),
      };
    }
  }

  Future<void> clearAll() async {
    if (kIsWeb || Platform.isMacOS) {
      await _initPrefs();
      await _prefs!.remove(_keyAccessToken);
      await _prefs!.remove(_keyRefreshToken);
      await _prefs!.remove(_keyTokenType);
      await _prefs!.remove(_keyUserId);
      await _prefs!.remove(_keyUserEmail);
      await _prefs!.remove(_keyUserName);
    } else {
      await _secureStorage.deleteAll();
    }
  }

  Future<bool> hasValidToken() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}

/// Auth state model
class AuthState {
  final bool isAuthenticated;
  final User? user;
  final String? token;
  final String? error;
  final bool isLoading;

  const AuthState({
    this.isAuthenticated = false,
    this.user,
    this.token,
    this.error,
    this.isLoading = false,
  });

  AuthState copyWith({
    bool? isAuthenticated,
    User? user,
    String? token,
    String? error,
    bool? isLoading,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      user: user ?? this.user,
      token: token ?? this.token,
      error: error,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

/// Auth service provider
final authStorageProvider = Provider<AuthStorage>((ref) => AuthStorage());

/// Dio instance provider for auth
final _authDioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.authBaseUrl,
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  // Add auth interceptor
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final storage = ref.read(authStorageProvider);
      final token = await storage.getAccessToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      return handler.next(options);
    },
    onError: (error, handler) async {
      // Handle 401 - try to refresh token
      if (error.response?.statusCode == 401) {
        final storage = ref.read(authStorageProvider);
        final refreshToken = await storage.getRefreshToken();

        if (refreshToken != null) {
          try {
            // Create a temporary auth client for refresh
            final tempDio = Dio(BaseOptions(baseUrl: AppConfig.authBaseUrl));
            final tempClient = createAuthClient(tempDio, standardSerializers);
            final response = await tempClient.refreshToken(refreshToken);

            if (response?.data?.token != null) {
              await storage.saveTokens(
                accessToken: response!.data!.token!,
                tokenType: response.data!.tokenType,
              );

              // Retry original request
              error.requestOptions.headers['Authorization'] = 'Bearer ${response.data!.token}';
              final retryResponse = await dio.fetch(error.requestOptions);
              return handler.resolve(retryResponse);
            }
          } catch (e) {
            // Refresh failed, clear tokens and redirect to login
            await storage.clearAll();
          }
        }
      }
      return handler.next(error);
    },
  ));

  return dio;
});

/// Auth resource client provider
final authClientProvider = Provider<AuthResourceClient>((ref) {
  final dio = ref.watch(_authDioProvider);
  final serializers = standardSerializers;
  return createAuthClient(dio, serializers);
});

/// Auth state notifier
class AuthNotifier extends StateNotifier<AuthState> {
  final AuthResourceClient authClient;
  final AuthStorage storage;

  AuthNotifier(this.authClient, this.storage) : super(const AuthState()) {
    _checkAuthStatus();
  }

  Future<void> _checkAuthStatus() async {
    final hasToken = await storage.hasValidToken();
    if (hasToken) {
      try {
        final response = await authClient.getUser();
        if (response?.data?.user != null) {
          state = state.copyWith(
            isAuthenticated: true,
            user: response!.data!.user,
          );
        }
      } catch (e) {
        await storage.clearAll();
        state = state.copyWith(isAuthenticated: false);
      }
    }
  }

  Future<void> login(String username, String password, {bool rememberMe = false}) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final response = await authClient.login(
        username: username,
        password: password,
        rememberMe: rememberMe,
      );
      
      if (response?.data?.token != null && response?.data?.user != null) {
        await storage.saveTokens(
          accessToken: response!.data!.token!,
          tokenType: response.data!.tokenType ?? 'Bearer',
        );
        
        await storage.saveUser(
          userId: response.data!.user!.id ?? 0,
          email: response.data!.user!.email ?? '',
          name: response.data!.user!.fullName ?? '',
        );
        
        state = state.copyWith(
          isAuthenticated: true,
          user: response.data!.user,
          token: response.data!.token,
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  Future<void> logout() async {
    try {
      await authClient.logout();
    } catch (e) {
      print('Logout error: $e');
    } finally {
      await storage.clearAll();
      state = const AuthState();
    }
  }

  Future<void> forgotPassword(String email) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      await authClient.forgotPassword(email);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  Future<void> resetPassword({
    required String email,
    required String token,
    required String password,
    required String passwordConfirmation,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      await authClient.resetPassword(
        email: email,
        token: token,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }
}

/// Auth state provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authClient = ref.watch(authClientProvider);
  final storage = ref.watch(authStorageProvider);
  return AuthNotifier(authClient, storage);
});

/// Check if user is authenticated
final isAuthenticatedProvider = Provider<bool>((ref) {
  return ref.watch(authProvider).isAuthenticated;
});

