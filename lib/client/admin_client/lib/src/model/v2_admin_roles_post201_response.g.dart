// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesPost201Response extends V2AdminRolesPost201Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final V2Role? data;

  factory _$V2AdminRolesPost201Response([
    void Function(V2AdminRolesPost201ResponseBuilder)? updates,
  ]) => (V2AdminRolesPost201ResponseBuilder()..update(updates))._build();

  _$V2AdminRolesPost201Response._({this.status, this.message, this.data})
    : super._();
  @override
  V2AdminRolesPost201Response rebuild(
    void Function(V2AdminRolesPost201ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesPost201ResponseBuilder toBuilder() =>
      V2AdminRolesPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesPost201Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminRolesPost201Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class V2AdminRolesPost201ResponseBuilder
    implements
        Builder<
          V2AdminRolesPost201Response,
          V2AdminRolesPost201ResponseBuilder
        > {
  _$V2AdminRolesPost201Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2RoleBuilder? _data;
  V2RoleBuilder get data => _$this._data ??= V2RoleBuilder();
  set data(V2RoleBuilder? data) => _$this._data = data;

  V2AdminRolesPost201ResponseBuilder() {
    V2AdminRolesPost201Response._defaults(this);
  }

  V2AdminRolesPost201ResponseBuilder get _$this {
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
  void replace(V2AdminRolesPost201Response other) {
    _$v = other as _$V2AdminRolesPost201Response;
  }

  @override
  void update(void Function(V2AdminRolesPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesPost201Response build() => _build();

  _$V2AdminRolesPost201Response _build() {
    _$V2AdminRolesPost201Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesPost201Response._(
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
          r'V2AdminRolesPost201Response',
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
