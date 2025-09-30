// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak_login200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeycloakLogin200Response extends KeycloakLogin200Response {
  @override
  final String? status;
  @override
  final KeycloakLogin200ResponseData? data;

  factory _$KeycloakLogin200Response(
          [void Function(KeycloakLogin200ResponseBuilder)? updates]) =>
      (KeycloakLogin200ResponseBuilder()..update(updates))._build();

  _$KeycloakLogin200Response._({this.status, this.data}) : super._();
  @override
  KeycloakLogin200Response rebuild(
          void Function(KeycloakLogin200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeycloakLogin200ResponseBuilder toBuilder() =>
      KeycloakLogin200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeycloakLogin200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KeycloakLogin200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class KeycloakLogin200ResponseBuilder
    implements
        Builder<KeycloakLogin200Response, KeycloakLogin200ResponseBuilder> {
  _$KeycloakLogin200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  KeycloakLogin200ResponseDataBuilder? _data;
  KeycloakLogin200ResponseDataBuilder get data =>
      _$this._data ??= KeycloakLogin200ResponseDataBuilder();
  set data(KeycloakLogin200ResponseDataBuilder? data) => _$this._data = data;

  KeycloakLogin200ResponseBuilder() {
    KeycloakLogin200Response._defaults(this);
  }

  KeycloakLogin200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeycloakLogin200Response other) {
    _$v = other as _$KeycloakLogin200Response;
  }

  @override
  void update(void Function(KeycloakLogin200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeycloakLogin200Response build() => _build();

  _$KeycloakLogin200Response _build() {
    _$KeycloakLogin200Response _$result;
    try {
      _$result = _$v ??
          _$KeycloakLogin200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KeycloakLogin200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
