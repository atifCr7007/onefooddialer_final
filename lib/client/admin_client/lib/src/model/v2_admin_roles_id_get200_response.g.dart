// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesIdGet200Response extends V2AdminRolesIdGet200Response {
  @override
  final String? status;
  @override
  final V2Role? data;

  factory _$V2AdminRolesIdGet200Response([
    void Function(V2AdminRolesIdGet200ResponseBuilder)? updates,
  ]) => (V2AdminRolesIdGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminRolesIdGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminRolesIdGet200Response rebuild(
    void Function(V2AdminRolesIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesIdGet200ResponseBuilder toBuilder() =>
      V2AdminRolesIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminRolesIdGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminRolesIdGet200ResponseBuilder
    implements
        Builder<
          V2AdminRolesIdGet200Response,
          V2AdminRolesIdGet200ResponseBuilder
        > {
  _$V2AdminRolesIdGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  V2RoleBuilder? _data;
  V2RoleBuilder get data => _$this._data ??= V2RoleBuilder();
  set data(V2RoleBuilder? data) => _$this._data = data;

  V2AdminRolesIdGet200ResponseBuilder() {
    V2AdminRolesIdGet200Response._defaults(this);
  }

  V2AdminRolesIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesIdGet200Response other) {
    _$v = other as _$V2AdminRolesIdGet200Response;
  }

  @override
  void update(void Function(V2AdminRolesIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesIdGet200Response build() => _build();

  _$V2AdminRolesIdGet200Response _build() {
    _$V2AdminRolesIdGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesIdGet200Response._(
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
          r'V2AdminRolesIdGet200Response',
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
