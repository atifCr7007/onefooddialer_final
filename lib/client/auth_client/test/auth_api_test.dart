import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // Forgot Password
    //
    // Requests a password reset
    //
    //Future<ForgotPassword200Response> forgotPassword(ForgotPasswordRequest forgotPasswordRequest) async
    test('test forgotPassword', () async {
      // TODO
    });

    // Get User
    //
    // Gets the authenticated user
    //
    //Future<GetUser200Response> getUser() async
    test('test getUser', () async {
      // TODO
    });

    // Keycloak Callback
    //
    // Handle the Keycloak callback
    //
    //Future<KeycloakCallback200Response> keycloakCallback(String code, String state) async
    test('test keycloakCallback', () async {
      // TODO
    });

    // Keycloak Login
    //
    // Get the Keycloak login URL
    //
    //Future<KeycloakLogin200Response> keycloakLogin() async
    test('test keycloakLogin', () async {
      // TODO
    });

    // Login
    //
    // Authenticates a user and returns a token
    //
    //Future<Login200Response> login(LoginRequest loginRequest) async
    test('test login', () async {
      // TODO
    });

    // Logout
    //
    // Logs out a user
    //
    //Future<Logout200Response> logout() async
    test('test logout', () async {
      // TODO
    });

    // Refresh Token
    //
    // Refresh an authentication token
    //
    //Future<Login200Response> refreshToken(RefreshTokenRequest refreshTokenRequest) async
    test('test refreshToken', () async {
      // TODO
    });

    // Reset Password
    //
    // Resets a user's password
    //
    //Future<ResetPassword200Response> resetPassword(ResetPasswordRequest resetPasswordRequest) async
    test('test resetPassword', () async {
      // TODO
    });

    // Validate Token
    //
    // Validate an authentication token
    //
    //Future<ValidateToken200Response> validateToken({ ValidateTokenRequest validateTokenRequest }) async
    test('test validateToken', () async {
      // TODO
    });

  });
}
