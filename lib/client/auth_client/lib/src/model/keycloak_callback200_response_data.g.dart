// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak_callback200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeycloakCallback200ResponseData
    extends KeycloakCallback200ResponseData {
  @override
  final User? user;
  @override
  final String? token;
  @override
  final String? tokenType;
  @override
  final KeycloakCallback200ResponseDataKeycloakTokens? keycloakTokens;

  factory _$KeycloakCallback200ResponseData(
          [void Function(KeycloakCallback200ResponseDataBuilder)? updates]) =>
      (KeycloakCallback200ResponseDataBuilder()..update(updates))._build();

  _$KeycloakCallback200ResponseData._(
      {this.user, this.token, this.tokenType, this.keycloakTokens})
      : super._();
  @override
  KeycloakCallback200ResponseData rebuild(
          void Function(KeycloakCallback200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeycloakCallback200ResponseDataBuilder toBuilder() =>
      KeycloakCallback200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeycloakCallback200ResponseData &&
        user == other.user &&
        token == other.token &&
        tokenType == other.tokenType &&
        keycloakTokens == other.keycloakTokens;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, keycloakTokens.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeycloakCallback200ResponseData')
          ..add('user', user)
          ..add('token', token)
          ..add('tokenType', tokenType)
          ..add('keycloakTokens', keycloakTokens))
        .toString();
  }
}

class KeycloakCallback200ResponseDataBuilder
    implements
        Builder<KeycloakCallback200ResponseData,
            KeycloakCallback200ResponseDataBuilder> {
  _$KeycloakCallback200ResponseData? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  KeycloakCallback200ResponseDataKeycloakTokensBuilder? _keycloakTokens;
  KeycloakCallback200ResponseDataKeycloakTokensBuilder get keycloakTokens =>
      _$this._keycloakTokens ??=
          KeycloakCallback200ResponseDataKeycloakTokensBuilder();
  set keycloakTokens(
          KeycloakCallback200ResponseDataKeycloakTokensBuilder?
              keycloakTokens) =>
      _$this._keycloakTokens = keycloakTokens;

  KeycloakCallback200ResponseDataBuilder() {
    KeycloakCallback200ResponseData._defaults(this);
  }

  KeycloakCallback200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _token = $v.token;
      _tokenType = $v.tokenType;
      _keycloakTokens = $v.keycloakTokens?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeycloakCallback200ResponseData other) {
    _$v = other as _$KeycloakCallback200ResponseData;
  }

  @override
  void update(void Function(KeycloakCallback200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeycloakCallback200ResponseData build() => _build();

  _$KeycloakCallback200ResponseData _build() {
    _$KeycloakCallback200ResponseData _$result;
    try {
      _$result = _$v ??
          _$KeycloakCallback200ResponseData._(
            user: _user?.build(),
            token: token,
            tokenType: tokenType,
            keycloakTokens: _keycloakTokens?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'keycloakTokens';
        _keycloakTokens?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KeycloakCallback200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
