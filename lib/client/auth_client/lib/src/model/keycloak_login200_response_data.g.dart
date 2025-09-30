// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak_login200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeycloakLogin200ResponseData extends KeycloakLogin200ResponseData {
  @override
  final String? authUrl;

  factory _$KeycloakLogin200ResponseData([
    void Function(KeycloakLogin200ResponseDataBuilder)? updates,
  ]) => (KeycloakLogin200ResponseDataBuilder()..update(updates))._build();

  _$KeycloakLogin200ResponseData._({this.authUrl}) : super._();
  @override
  KeycloakLogin200ResponseData rebuild(
    void Function(KeycloakLogin200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeycloakLogin200ResponseDataBuilder toBuilder() =>
      KeycloakLogin200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeycloakLogin200ResponseData && authUrl == other.authUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'KeycloakLogin200ResponseData',
    )..add('authUrl', authUrl)).toString();
  }
}

class KeycloakLogin200ResponseDataBuilder
    implements
        Builder<
          KeycloakLogin200ResponseData,
          KeycloakLogin200ResponseDataBuilder
        > {
  _$KeycloakLogin200ResponseData? _$v;

  String? _authUrl;
  String? get authUrl => _$this._authUrl;
  set authUrl(String? authUrl) => _$this._authUrl = authUrl;

  KeycloakLogin200ResponseDataBuilder() {
    KeycloakLogin200ResponseData._defaults(this);
  }

  KeycloakLogin200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authUrl = $v.authUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeycloakLogin200ResponseData other) {
    _$v = other as _$KeycloakLogin200ResponseData;
  }

  @override
  void update(void Function(KeycloakLogin200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeycloakLogin200ResponseData build() => _build();

  _$KeycloakLogin200ResponseData _build() {
    final _$result = _$v ?? _$KeycloakLogin200ResponseData._(authUrl: authUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
