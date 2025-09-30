// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keycloak_callback200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeycloakCallback200Response extends KeycloakCallback200Response {
  @override
  final String? status;
  @override
  final KeycloakCallback200ResponseData? data;

  factory _$KeycloakCallback200Response([
    void Function(KeycloakCallback200ResponseBuilder)? updates,
  ]) => (KeycloakCallback200ResponseBuilder()..update(updates))._build();

  _$KeycloakCallback200Response._({this.status, this.data}) : super._();
  @override
  KeycloakCallback200Response rebuild(
    void Function(KeycloakCallback200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KeycloakCallback200ResponseBuilder toBuilder() =>
      KeycloakCallback200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeycloakCallback200Response &&
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
    return (newBuiltValueToStringHelper(r'KeycloakCallback200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class KeycloakCallback200ResponseBuilder
    implements
        Builder<
          KeycloakCallback200Response,
          KeycloakCallback200ResponseBuilder
        > {
  _$KeycloakCallback200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  KeycloakCallback200ResponseDataBuilder? _data;
  KeycloakCallback200ResponseDataBuilder get data =>
      _$this._data ??= KeycloakCallback200ResponseDataBuilder();
  set data(KeycloakCallback200ResponseDataBuilder? data) => _$this._data = data;

  KeycloakCallback200ResponseBuilder() {
    KeycloakCallback200Response._defaults(this);
  }

  KeycloakCallback200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeycloakCallback200Response other) {
    _$v = other as _$KeycloakCallback200Response;
  }

  @override
  void update(void Function(KeycloakCallback200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeycloakCallback200Response build() => _build();

  _$KeycloakCallback200Response _build() {
    _$KeycloakCallback200Response _$result;
    try {
      _$result =
          _$v ??
          _$KeycloakCallback200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'KeycloakCallback200Response',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
