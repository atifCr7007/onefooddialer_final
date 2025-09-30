// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_key_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminConfigKeyGet200Response extends V2AdminConfigKeyGet200Response {
  @override
  final String? status;
  @override
  final V2AdminConfigKeyGet200ResponseData? data;

  factory _$V2AdminConfigKeyGet200Response([
    void Function(V2AdminConfigKeyGet200ResponseBuilder)? updates,
  ]) => (V2AdminConfigKeyGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminConfigKeyGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminConfigKeyGet200Response rebuild(
    void Function(V2AdminConfigKeyGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigKeyGet200ResponseBuilder toBuilder() =>
      V2AdminConfigKeyGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigKeyGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminConfigKeyGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminConfigKeyGet200ResponseBuilder
    implements
        Builder<
          V2AdminConfigKeyGet200Response,
          V2AdminConfigKeyGet200ResponseBuilder
        > {
  _$V2AdminConfigKeyGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  V2AdminConfigKeyGet200ResponseDataBuilder? _data;
  V2AdminConfigKeyGet200ResponseDataBuilder get data =>
      _$this._data ??= V2AdminConfigKeyGet200ResponseDataBuilder();
  set data(V2AdminConfigKeyGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  V2AdminConfigKeyGet200ResponseBuilder() {
    V2AdminConfigKeyGet200Response._defaults(this);
  }

  V2AdminConfigKeyGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminConfigKeyGet200Response other) {
    _$v = other as _$V2AdminConfigKeyGet200Response;
  }

  @override
  void update(void Function(V2AdminConfigKeyGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigKeyGet200Response build() => _build();

  _$V2AdminConfigKeyGet200Response _build() {
    _$V2AdminConfigKeyGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminConfigKeyGet200Response._(
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
          r'V2AdminConfigKeyGet200Response',
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
