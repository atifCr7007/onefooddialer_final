// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak_callback200_response_data_keycloak_tokens.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeycloakCallback200ResponseDataKeycloakTokens
    extends KeycloakCallback200ResponseDataKeycloakTokens {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final int? expiresIn;

  factory _$KeycloakCallback200ResponseDataKeycloakTokens([
    void Function(KeycloakCallback200ResponseDataKeycloakTokensBuilder)?
    updates,
  ]) =>
      (KeycloakCallback200ResponseDataKeycloakTokensBuilder()..update(updates))
          ._build();

  _$KeycloakCallback200ResponseDataKeycloakTokens._({
    this.accessToken,
    this.refreshToken,
    this.expiresIn,
  }) : super._();
  @override
  KeycloakCallback200ResponseDataKeycloakTokens rebuild(
    void Function(KeycloakCallback200ResponseDataKeycloakTokensBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeycloakCallback200ResponseDataKeycloakTokensBuilder toBuilder() =>
      KeycloakCallback200ResponseDataKeycloakTokensBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeycloakCallback200ResponseDataKeycloakTokens &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'KeycloakCallback200ResponseDataKeycloakTokens',
          )
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class KeycloakCallback200ResponseDataKeycloakTokensBuilder
    implements
        Builder<
          KeycloakCallback200ResponseDataKeycloakTokens,
          KeycloakCallback200ResponseDataKeycloakTokensBuilder
        > {
  _$KeycloakCallback200ResponseDataKeycloakTokens? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  KeycloakCallback200ResponseDataKeycloakTokensBuilder() {
    KeycloakCallback200ResponseDataKeycloakTokens._defaults(this);
  }

  KeycloakCallback200ResponseDataKeycloakTokensBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _expiresIn = $v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeycloakCallback200ResponseDataKeycloakTokens other) {
    _$v = other as _$KeycloakCallback200ResponseDataKeycloakTokens;
  }

  @override
  void update(
    void Function(KeycloakCallback200ResponseDataKeycloakTokensBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  KeycloakCallback200ResponseDataKeycloakTokens build() => _build();

  _$KeycloakCallback200ResponseDataKeycloakTokens _build() {
    final _$result =
        _$v ??
        _$KeycloakCallback200ResponseDataKeycloakTokens._(
          accessToken: accessToken,
          refreshToken: refreshToken,
          expiresIn: expiresIn,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
