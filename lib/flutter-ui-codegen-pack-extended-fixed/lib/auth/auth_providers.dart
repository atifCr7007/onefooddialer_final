import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_service.dart';

class AuthState {
  final bool isAuthenticated;
  final Map<String, dynamic>? user;
  final String? token;
  const AuthState({required this.isAuthenticated, this.user, this.token});
  AuthState copyWith({bool? isAuthenticated, Map<String, dynamic>? user, String? token}) =>
    AuthState(isAuthenticated: isAuthenticated ?? this.isAuthenticated, user: user ?? this.user, token: token ?? this.token);
  static const unauthenticated = AuthState(isAuthenticated: false);
}

class AuthController extends AsyncNotifier<AuthState> {
  final _svc = AuthService();
  @override
  Future<AuthState> build() async {
    final existing = await _svc.getToken();
    if (existing != null) {
      final me = await _svc.me(existing).catchError((_) => null);
      if (me != null) return AuthState(isAuthenticated: true, user: me, token: existing);
    }
    return AuthState.unauthenticated;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final res = await _svc.login(email, password);
      return AuthState(isAuthenticated: true, user: res['user'] as Map<String,dynamic>?, token: res['token'] as String?);
    });
  }

  Future<void> logout() async {
    await _svc.logout(await _svc.getToken());
    await _svc.clear();
    state = const AsyncData(AuthState.unauthenticated);
  }
}

final authControllerProvider = AsyncNotifierProvider<AuthController, AuthState>(() => AuthController());
final authStateProvider = authControllerProvider;
