// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_id_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesIdPut200Response extends V2AdminRolesIdPut200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final V2Role? data;

  factory _$V2AdminRolesIdPut200Response([
    void Function(V2AdminRolesIdPut200ResponseBuilder)? updates,
  ]) => (V2AdminRolesIdPut200ResponseBuilder()..update(updates))._build();

  _$V2AdminRolesIdPut200Response._({this.status, this.message, this.data})
    : super._();
  @override
  V2AdminRolesIdPut200Response rebuild(
    void Function(V2AdminRolesIdPut200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesIdPut200ResponseBuilder toBuilder() =>
      V2AdminRolesIdPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesIdPut200Response &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminRolesIdPut200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class V2AdminRolesIdPut200ResponseBuilder
    implements
        Builder<
          V2AdminRolesIdPut200Response,
          V2AdminRolesIdPut200ResponseBuilder
        > {
  _$V2AdminRolesIdPut200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2RoleBuilder? _data;
  V2RoleBuilder get data => _$this._data ??= V2RoleBuilder();
  set data(V2RoleBuilder? data) => _$this._data = data;

  V2AdminRolesIdPut200ResponseBuilder() {
    V2AdminRolesIdPut200Response._defaults(this);
  }

  V2AdminRolesIdPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesIdPut200Response other) {
    _$v = other as _$V2AdminRolesIdPut200Response;
  }

  @override
  void update(void Function(V2AdminRolesIdPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesIdPut200Response build() => _build();

  _$V2AdminRolesIdPut200Response _build() {
    _$V2AdminRolesIdPut200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesIdPut200Response._(
            status: status,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminRolesIdPut200Response',
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
