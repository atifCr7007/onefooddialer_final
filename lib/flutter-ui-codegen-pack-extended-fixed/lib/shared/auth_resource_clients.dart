import 'package:dio/dio.dart';
import 'package:auth_client/openapi.dart';
import 'package:built_value/serializer.dart';

/// Auth Resource Client
/// Handles all authentication and authorization operations
class AuthResourceClient {
  final Dio http;
  final AuthApi api;

  AuthResourceClient(this.http, this.api);

  /// Login with username and password
  /// Returns user object and authentication token
  Future<Login200Response?> login({
    required String username,
    required String password,
    bool? rememberMe,
  }) async {
    try {
      print('🔐 Attempting login to: ${http.options.baseUrl}');
      print('📝 Username: $username');

      final request = LoginRequest((b) => b
        ..username = username
        ..password = password
        ..rememberMe = rememberMe);

      print('📤 Sending login request...');
      final response = await api.login(loginRequest: request);
      print('✅ Login successful!');
      return response.data;
    } on DioException catch (e) {
      print('❌ DioException in login:');
      print('   Type: ${e.type}');
      print('   Message: ${e.message}');
      print('   Error: ${e.error}');
      print('   Response: ${e.response}');
      print('   Request URL: ${e.requestOptions.uri}');

      if (e.response?.statusCode == 401) {
        throw Exception('Invalid username or password');
      } else if (e.response?.statusCode == 400) {
        throw Exception('Please provide valid credentials');
      }
      rethrow;
    } catch (e) {
      print('❌ Unexpected error in login: $e');
      rethrow;
    }
  }

  /// Logout the current user
  Future<Logout200Response?> logout() async {
    try {
      final response = await api.logout();
      return response.data;
    } on DioException catch (e) {
      print('Error in logout: ${e.message}');
      if (e.response?.statusCode == 401) {
        throw Exception('Session expired. Please login again.');
      }
      rethrow;
    } catch (e) {
      print('Error in logout: $e');
      rethrow;
    }
  }

  /// Get the authenticated user's profile
  Future<GetUser200Response?> getUser() async {
    try {
      final response = await api.getUser();
      return response.data;
    } on DioException catch (e) {
      print('Error in getUser: ${e.message}');
      if (e.response?.statusCode == 401) {
        throw Exception('Session expired. Please login again.');
      }
      rethrow;
    } catch (e) {
      print('Error in getUser: $e');
      rethrow;
    }
  }

  /// Refresh the authentication token
  /// Returns new token and user object
  Future<Login200Response?> refreshToken(String refreshToken) async {
    try {
      final request = RefreshTokenRequest((b) => b..refreshToken = refreshToken);
      final response = await api.refreshToken(refreshTokenRequest: request);
      return response.data;
    } on DioException catch (e) {
      print('Error in refreshToken: ${e.message}');
      if (e.response?.statusCode == 401) {
        throw Exception('Refresh token expired. Please login again.');
      }
      rethrow;
    } catch (e) {
      print('Error in refreshToken: $e');
      rethrow;
    }
  }

  /// Request password reset email
  Future<ForgotPassword200Response?> forgotPassword(String email) async {
    try {
      final request = ForgotPasswordRequest((b) => b..email = email);
      final response = await api.forgotPassword(forgotPasswordRequest: request);
      return response.data;
    } on DioException catch (e) {
      print('Error in forgotPassword: ${e.message}');
      if (e.response?.statusCode == 404) {
        throw Exception('Email address not found');
      } else if (e.response?.statusCode == 400) {
        throw Exception('Please provide a valid email address');
      }
      rethrow;
    } catch (e) {
      print('Error in forgotPassword: $e');
      rethrow;
    }
  }

  /// Reset password with token from email
  Future<ResetPassword200Response?> resetPassword({
    required String email,
    required String token,
    required String password,
    required String passwordConfirmation,
  }) async {
    try {
      if (password != passwordConfirmation) {
        throw Exception('Passwords do not match');
      }
      
      final request = ResetPasswordRequest((b) => b
        ..email = email
        ..token = token
        ..password = password
        ..passwordConfirmation = passwordConfirmation);
      
      final response = await api.resetPassword(resetPasswordRequest: request);
      return response.data;
    } on DioException catch (e) {
      print('Error in resetPassword: ${e.message}');
      if (e.response?.statusCode == 400) {
        throw Exception('Invalid or expired reset token');
      } else if (e.response?.statusCode == 404) {
        throw Exception('Email address not found');
      }
      rethrow;
    } catch (e) {
      print('Error in resetPassword: $e');
      rethrow;
    }
  }

  /// Validate an authentication token
  Future<ValidateToken200Response?> validateToken(String token) async {
    try {
      final request = ValidateTokenRequest((b) => b);
      final response = await api.validateToken(validateTokenRequest: request);
      return response.data;
    } on DioException catch (e) {
      print('Error in validateToken: ${e.message}');
      if (e.response?.statusCode == 401) {
        throw Exception('Invalid or expired token');
      }
      rethrow;
    } catch (e) {
      print('Error in validateToken: $e');
      rethrow;
    }
  }

  /// Get Keycloak login URL for SSO
  Future<KeycloakLogin200Response?> getKeycloakLoginUrl() async {
    try {
      final response = await api.keycloakLogin();
      return response.data;
    } on DioException catch (e) {
      print('Error in getKeycloakLoginUrl: ${e.message}');
      if (e.response?.statusCode == 500) {
        throw Exception('Keycloak configuration error. Please contact support.');
      }
      rethrow;
    } catch (e) {
      print('Error in getKeycloakLoginUrl: $e');
      rethrow;
    }
  }

  /// Handle Keycloak OAuth callback
  Future<KeycloakCallback200Response?> handleKeycloakCallback({
    required String code,
    required String state,
  }) async {
    try {
      final response = await api.keycloakCallback(code: code, state: state);
      return response.data;
    } on DioException catch (e) {
      print('Error in handleKeycloakCallback: ${e.message}');
      if (e.response?.statusCode == 400) {
        throw Exception('Invalid authorization code or state');
      } else if (e.response?.statusCode == 401) {
        throw Exception('Authentication failed. Please try again.');
      }
      rethrow;
    } catch (e) {
      print('Error in handleKeycloakCallback: $e');
      rethrow;
    }
  }
}

/// Factory function to create AuthResourceClient
AuthResourceClient createAuthClient(Dio dio, Serializers serializers) {
  final api = AuthApi(dio, serializers);
  return AuthResourceClient(dio, api);
}

