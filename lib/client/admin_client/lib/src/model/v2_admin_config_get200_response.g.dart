// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminConfigGet200Response extends V2AdminConfigGet200Response {
  @override
  final String? status;
  @override
  final BuiltMap<String, String>? data;

  factory _$V2AdminConfigGet200Response([
    void Function(V2AdminConfigGet200ResponseBuilder)? updates,
  ]) => (V2AdminConfigGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminConfigGet200Response._({this.status, this.data}) : super._();
  @override
  V2AdminConfigGet200Response rebuild(
    void Function(V2AdminConfigGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigGet200ResponseBuilder toBuilder() =>
      V2AdminConfigGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigGet200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminConfigGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class V2AdminConfigGet200ResponseBuilder
    implements
        Builder<
          V2AdminConfigGet200Response,
          V2AdminConfigGet200ResponseBuilder
        > {
  _$V2AdminConfigGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, String>? _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= MapBuilder<String, String>();
  set data(MapBuilder<String, String>? data) => _$this._data = data;

  V2AdminConfigGet200ResponseBuilder() {
    V2AdminConfigGet200Response._defaults(this);
  }

  V2AdminConfigGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminConfigGet200Response other) {
    _$v = other as _$V2AdminConfigGet200Response;
  }

  @override
  void update(void Function(V2AdminConfigGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigGet200Response build() => _build();

  _$V2AdminConfigGet200Response _build() {
    _$V2AdminConfigGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminConfigGet200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminConfigGet200Response',
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
