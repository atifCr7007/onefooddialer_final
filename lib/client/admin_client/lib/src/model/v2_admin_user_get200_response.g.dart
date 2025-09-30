// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_user_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminUserGet200Response extends V2AdminUserGet200Response {
  @override
  final String? status;
  @override
  final V2AdminUserGet200ResponseData? data;

  factory _$V2AdminUserGet200Response([
    void Function(V2AdminUserGet200ResponseBuilder)? updates,
  ]) => (V2AdminUserGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminUserGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminUserGet200Response rebuild(
    void Function(V2AdminUserGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminUserGet200ResponseBuilder toBuilder() =>
      V2AdminUserGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminUserGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminUserGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminUserGet200ResponseBuilder
    implements
        Builder<V2AdminUserGet200Response, V2AdminUserGet200ResponseBuilder> {
  _$V2AdminUserGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  V2AdminUserGet200ResponseDataBuilder? _data;
  V2AdminUserGet200ResponseDataBuilder get data =>
      _$this._data ??= V2AdminUserGet200ResponseDataBuilder();
  set data(V2AdminUserGet200ResponseDataBuilder? data) => _$this._data = data;

  V2AdminUserGet200ResponseBuilder() {
    V2AdminUserGet200Response._defaults(this);
  }

  V2AdminUserGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminUserGet200Response other) {
    _$v = other as _$V2AdminUserGet200Response;
  }

  @override
  void update(void Function(V2AdminUserGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminUserGet200Response build() => _build();

  _$V2AdminUserGet200Response _build() {
    _$V2AdminUserGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminUserGet200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminUserGet200Response',
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
