// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesGet200Response extends V2AdminRolesGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<V2Role>? data;

  factory _$V2AdminRolesGet200Response([
    void Function(V2AdminRolesGet200ResponseBuilder)? updates,
  ]) => (V2AdminRolesGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminRolesGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminRolesGet200Response rebuild(
    void Function(V2AdminRolesGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesGet200ResponseBuilder toBuilder() =>
      V2AdminRolesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminRolesGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminRolesGet200ResponseBuilder
    implements
        Builder<V2AdminRolesGet200Response, V2AdminRolesGet200ResponseBuilder> {
  _$V2AdminRolesGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<V2Role>? _data;
  ListBuilder<V2Role> get data => _$this._data ??= ListBuilder<V2Role>();
  set data(ListBuilder<V2Role>? data) => _$this._data = data;

  V2AdminRolesGet200ResponseBuilder() {
    V2AdminRolesGet200Response._defaults(this);
  }

  V2AdminRolesGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesGet200Response other) {
    _$v = other as _$V2AdminRolesGet200Response;
  }

  @override
  void update(void Function(V2AdminRolesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesGet200Response build() => _build();

  _$V2AdminRolesGet200Response _build() {
    _$V2AdminRolesGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesGet200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminRolesGet200Response',
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
