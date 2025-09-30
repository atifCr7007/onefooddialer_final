// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordRequest extends ResetPasswordRequest {
  @override
  final String email;
  @override
  final String token;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  factory _$ResetPasswordRequest([
    void Function(ResetPasswordRequestBuilder)? updates,
  ]) => (ResetPasswordRequestBuilder()..update(updates))._build();

  _$ResetPasswordRequest._({
    required this.email,
    required this.token,
    required this.password,
    required this.passwordConfirmation,
  }) : super._();
  @override
  ResetPasswordRequest rebuild(
    void Function(ResetPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResetPasswordRequestBuilder toBuilder() =>
      ResetPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordRequest &&
        email == other.email &&
        token == other.token &&
        password == other.password &&
        passwordConfirmation == other.passwordConfirmation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, passwordConfirmation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetPasswordRequest')
          ..add('email', email)
          ..add('token', token)
          ..add('password', password)
          ..add('passwordConfirmation', passwordConfirmation))
        .toString();
  }
}

class ResetPasswordRequestBuilder
    implements Builder<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  _$ResetPasswordRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _passwordConfirmation;
  String? get passwordConfirmation => _$this._passwordConfirmation;
  set passwordConfirmation(String? passwordConfirmation) =>
      _$this._passwordConfirmation = passwordConfirmation;

  ResetPasswordRequestBuilder() {
    ResetPasswordRequest._defaults(this);
  }

  ResetPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _token = $v.token;
      _password = $v.password;
      _passwordConfirmation = $v.passwordConfirmation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordRequest other) {
    _$v = other as _$ResetPasswordRequest;
  }

  @override
  void update(void Function(ResetPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordRequest build() => _build();

  _$ResetPasswordRequest _build() {
    final _$result =
        _$v ??
        _$ResetPasswordRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'ResetPasswordRequest',
            'email',
          ),
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'ResetPasswordRequest',
            'token',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'ResetPasswordRequest',
            'password',
          ),
          passwordConfirmation: BuiltValueNullFieldError.checkNotNull(
            passwordConfirmation,
            r'ResetPasswordRequest',
            'passwordConfirmation',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
