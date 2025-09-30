import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const _kToken = 'token';
  final Dio _dio = Dio(BaseOptions(baseUrl: const String.fromEnvironment('API_URL', defaultValue: '')));

  Future<Map<String, dynamic>> login(String email, String password) async {
    final res = await _dio.post('/auth/login', data: {'email': email, 'password': password});
    final data = res.data as Map<String, dynamic>;
    final token = data['token'] as String?;
    if (token != null) {
      final sp = await SharedPreferences.getInstance();
      await sp.setString(_kToken, token);
      _dio.options.headers['Authorization'] = 'Bearer $token';
    }
    return data;
  }

  Future<void> logout(String? token) async {
    try {
      if (token != null) {
        _dio.options.headers['Authorization'] = 'Bearer $token';
        await _dio.post('/auth/logout');
      }
    } catch (_) {}
  }

  Future<String?> getToken() async {
    final sp = await SharedPreferences.getInstance();
    final t = sp.getString(_kToken);
    if (t != null) _dio.options.headers['Authorization'] = 'Bearer $t';
    return t;
  }

  Future<Map<String, dynamic>?> me(String token) async {
    _dio.options.headers['Authorization'] = 'Bearer $token';
    final res = await _dio.get('/me');
    return res.data as Map<String, dynamic>;
  }

  Future<void> clear() async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove(_kToken);
  }
}
