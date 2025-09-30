// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_permissions_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminPermissionsGet200Response
    extends V2AdminPermissionsGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<V2Permission>? data;

  factory _$V2AdminPermissionsGet200Response([
    void Function(V2AdminPermissionsGet200ResponseBuilder)? updates,
  ]) => (V2AdminPermissionsGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminPermissionsGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminPermissionsGet200Response rebuild(
    void Function(V2AdminPermissionsGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminPermissionsGet200ResponseBuilder toBuilder() =>
      V2AdminPermissionsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminPermissionsGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminPermissionsGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminPermissionsGet200ResponseBuilder
    implements
        Builder<
          V2AdminPermissionsGet200Response,
          V2AdminPermissionsGet200ResponseBuilder
        > {
  _$V2AdminPermissionsGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<V2Permission>? _data;
  ListBuilder<V2Permission> get data =>
      _$this._data ??= ListBuilder<V2Permission>();
  set data(ListBuilder<V2Permission>? data) => _$this._data = data;

  V2AdminPermissionsGet200ResponseBuilder() {
    V2AdminPermissionsGet200Response._defaults(this);
  }

  V2AdminPermissionsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminPermissionsGet200Response other) {
    _$v = other as _$V2AdminPermissionsGet200Response;
  }

  @override
  void update(void Function(V2AdminPermissionsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminPermissionsGet200Response build() => _build();

  _$V2AdminPermissionsGet200Response _build() {
    _$V2AdminPermissionsGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminPermissionsGet200Response._(
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
          r'V2AdminPermissionsGet200Response',
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
