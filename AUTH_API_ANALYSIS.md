# Auth API Analysis - OneFoodDialer

## Overview
The Auth microservice provides authentication and authorization functionality using both legacy (username/password) and Keycloak (SSO) authentication methods. The API is auto-generated from OpenAPI specification and uses Built Value for serialization.

---

## API Methods Summary

### 1. **login** - Standard Username/Password Authentication
**Endpoint:** `POST /auth/login`

**Request:**
- Type: `LoginRequest`
- Fields:
  - `username` (String, required) - Username or email address
  - `password` (String, required) - Password
  - `rememberMe` (bool?, optional) - Whether to remember the user

**Response:**
- Type: `Response<Login200Response>`
- Success Data: `Login200ResponseData`
  - `user` (User?) - User object with profile information
  - `token` (String?) - Authentication token (JWT or bearer token)
  - `tokenType` (String?) - Token type (e.g., "Bearer")

**Error Handling:**
- Throws `DioException` on API call or serialization failure
- HTTP status codes: 200 (success), 401 (unauthorized), 400 (bad request)

**Security:** Requires bearer token authentication (though typically not needed for login itself)

---

### 2. **logout** - User Logout
**Endpoint:** `POST /auth/logout`

**Request:**
- No request body
- Requires authentication token in headers

**Response:**
- Type: `Response<Logout200Response>`
- Success Data: Standard success/message response

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 401 (unauthorized)

**Security:** Requires bearer token authentication

---

### 3. **getUser** - Get Authenticated User Profile
**Endpoint:** `GET /auth/user`

**Request:**
- No request body
- Requires authentication token in headers

**Response:**
- Type: `Response<GetUser200Response>`
- Success Data: `GetUser200ResponseData`
  - `user` (User?) - User object with profile information

**User Object Fields:**
- `id` (int?) - Unique identifier
- `firstName` (String?) - First name
- `lastName` (String?) - Last name
- `email` (String?) - Email address
- `roleId` (int?) - Role ID
- `authType` (String?) - Authentication type (legacy, keycloak, etc.)
- `fullName` (String?) - Full name (computed: first_name + last_name)

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 401 (unauthorized)

**Security:** Requires bearer token authentication

---

### 4. **refreshToken** - Refresh Authentication Token
**Endpoint:** `POST /auth/refresh-token`

**Request:**
- Type: `RefreshTokenRequest`
- Fields:
  - `refreshToken` (String, required) - Refresh token

**Response:**
- Type: `Response<Login200Response>` (same as login)
- Success Data: `Login200ResponseData`
  - `user` (User?) - User object
  - `token` (String?) - New authentication token
  - `tokenType` (String?) - Token type

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 401 (unauthorized), 400 (bad request)

**Security:** Requires bearer token authentication

**Usage:** Call this method when the access token expires to get a new one without requiring the user to log in again.

---

### 5. **forgotPassword** - Request Password Reset
**Endpoint:** `POST /auth/forgot-password`

**Request:**
- Type: `ForgotPasswordRequest`
- Fields:
  - `email` (String, required) - Email address

**Response:**
- Type: `Response<ForgotPassword200Response>`
- Success Data: `ForgotPassword200ResponseData`
  - Typically contains success message and instructions

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 404 (user not found), 400 (bad request)

**Security:** Requires bearer token authentication (though typically public endpoint)

**Flow:** User enters email → Server sends reset link/token to email → User clicks link → resetPassword

---

### 6. **resetPassword** - Reset Password with Token
**Endpoint:** `POST /auth/reset-password`

**Request:**
- Type: `ResetPasswordRequest`
- Fields:
  - `email` (String, required) - Email address
  - `token` (String, required) - Reset token (from email link)
  - `password` (String, required) - New password
  - `passwordConfirmation` (String, required) - Password confirmation

**Response:**
- Type: `Response<ResetPassword200Response>`
- Success Data: Standard success/message response

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 400 (invalid token/passwords don't match), 404 (user not found)

**Security:** Requires bearer token authentication (though typically public endpoint)

**Validation:** Password and passwordConfirmation must match

---

### 7. **validateToken** - Validate Authentication Token
**Endpoint:** `POST /auth/validate-token`

**Request:**
- Type: `ValidateTokenRequest` (optional)
- Fields: Token to validate (structure TBD from model)

**Response:**
- Type: `Response<ValidateToken200Response>`
- Success Data: `ValidateToken200ResponseData`
  - Validation result (valid/invalid, expiry info, etc.)

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 401 (invalid token)

**Security:** Requires bearer token authentication

**Usage:** Check if a token is still valid before making API calls

---

### 8. **keycloakLogin** - Get Keycloak Login URL
**Endpoint:** `GET /auth/keycloak/login`

**Request:**
- No request body

**Response:**
- Type: `Response<KeycloakLogin200Response>`
- Success Data: `KeycloakLogin200ResponseData`
  - Keycloak login URL to redirect user to

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 500 (Keycloak configuration error)

**Security:** Requires bearer token authentication (though typically public endpoint)

**Flow:** Get URL → Redirect user to Keycloak → User authenticates → Keycloak redirects back with code → keycloakCallback

---

### 9. **keycloakCallback** - Handle Keycloak OAuth Callback
**Endpoint:** `GET /auth/keycloak/callback`

**Request:**
- Query Parameters:
  - `code` (String, required) - Authorization code from Keycloak
  - `state` (String, required) - State parameter for CSRF protection

**Response:**
- Type: `Response<KeycloakCallback200Response>`
- Success Data: `KeycloakCallback200ResponseData`
  - `keycloakTokens` - Keycloak token object
  - User information
  - Application token

**Error Handling:**
- Throws `DioException` on failure
- HTTP status codes: 200 (success), 400 (invalid code/state), 401 (unauthorized)

**Security:** Requires bearer token authentication (though typically public endpoint)

**Flow:** This is called automatically by Keycloak redirect after successful authentication

---

## Authentication Flows

### Flow 1: Legacy Login (Username/Password)
1. User enters username/password
2. Call `login(username, password, rememberMe)`
3. Receive `token` and `user` object
4. Store token securely (SharedPreferences/SecureStorage)
5. Include token in all subsequent API calls (Authorization: Bearer {token})
6. When token expires, call `refreshToken(refreshToken)` to get new token
7. On logout, call `logout()` and clear stored token

### Flow 2: Keycloak SSO Login
1. Call `keycloakLogin()` to get Keycloak URL
2. Redirect user to Keycloak URL (web view or browser)
3. User authenticates with Keycloak
4. Keycloak redirects back to app with `code` and `state`
5. Call `keycloakCallback(code, state)`
6. Receive `token` and `user` object
7. Store token and proceed as in Flow 1

### Flow 3: Password Reset
1. User clicks "Forgot Password"
2. User enters email
3. Call `forgotPassword(email)`
4. User receives email with reset link containing token
5. User clicks link, app extracts token
6. User enters new password and confirmation
7. Call `resetPassword(email, token, password, passwordConfirmation)`
8. User can now login with new password

---

## Error Response Structure
All endpoints return standard error structure:
- Type: `Error`
- Fields: (TBD - need to check error.dart model)

Common HTTP Status Codes:
- 200: Success
- 400: Bad Request (validation errors)
- 401: Unauthorized (invalid credentials/token)
- 404: Not Found (user doesn't exist)
- 500: Internal Server Error

---

## Security Considerations

1. **Token Storage:** Store tokens securely using flutter_secure_storage
2. **Token Refresh:** Implement automatic token refresh before expiry
3. **HTTPS Only:** All auth endpoints must use HTTPS in production
4. **Bearer Token:** Include in Authorization header: `Authorization: Bearer {token}`
5. **Keycloak State:** Validate state parameter to prevent CSRF attacks
6. **Password Validation:** Enforce strong password requirements on client side
7. **Token Expiry:** Handle 401 responses by refreshing token or redirecting to login

---

## Next Steps for Implementation

1. Create `AuthResourceClient` wrapper class
2. Implement token storage service (SecureStorage)
3. Create auth state management (Riverpod providers)
4. Build UI screens (Login, Register, Forgot Password, Reset Password)
5. Create auth mock server on port 8012
6. Implement auth guard for protected routes
7. Add automatic token refresh interceptor
8. Create auth integration tests

---

## Notes

- All API methods use Dio for HTTP requests
- All models use Built Value for immutability and serialization
- Bearer token authentication is required for most endpoints
- The API supports both legacy and Keycloak authentication
- Refresh tokens enable seamless token renewal without re-login

