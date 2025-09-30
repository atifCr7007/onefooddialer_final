// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_id_delete403_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesIdDelete403Response
    extends V2AdminRolesIdDelete403Response {
  @override
  final String? status;
  @override
  final String? message;

  factory _$V2AdminRolesIdDelete403Response([
    void Function(V2AdminRolesIdDelete403ResponseBuilder)? updates,
  ]) => (V2AdminRolesIdDelete403ResponseBuilder()..update(updates))._build();

  _$V2AdminRolesIdDelete403Response._({this.status, this.message}) : super._();
  @override
  V2AdminRolesIdDelete403Response rebuild(
    void Function(V2AdminRolesIdDelete403ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesIdDelete403ResponseBuilder toBuilder() =>
      V2AdminRolesIdDelete403ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesIdDelete403Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminRolesIdDelete403Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class V2AdminRolesIdDelete403ResponseBuilder
    implements
        Builder<
          V2AdminRolesIdDelete403Response,
          V2AdminRolesIdDelete403ResponseBuilder
        > {
  _$V2AdminRolesIdDelete403Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2AdminRolesIdDelete403ResponseBuilder() {
    V2AdminRolesIdDelete403Response._defaults(this);
  }

  V2AdminRolesIdDelete403ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesIdDelete403Response other) {
    _$v = other as _$V2AdminRolesIdDelete403Response;
  }

  @override
  void update(void Function(V2AdminRolesIdDelete403ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesIdDelete403Response build() => _build();

  _$V2AdminRolesIdDelete403Response _build() {
    final _$result =
        _$v ??
        _$V2AdminRolesIdDelete403Response._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
