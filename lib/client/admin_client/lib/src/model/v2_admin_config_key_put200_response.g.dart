// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_key_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminConfigKeyPut200Response extends V2AdminConfigKeyPut200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final V2AdminConfigKeyPut200ResponseData? data;

  factory _$V2AdminConfigKeyPut200Response([
    void Function(V2AdminConfigKeyPut200ResponseBuilder)? updates,
  ]) => (V2AdminConfigKeyPut200ResponseBuilder()..update(updates))._build();

  _$V2AdminConfigKeyPut200Response._({this.status, this.message, this.data})
    : super._();
  @override
  V2AdminConfigKeyPut200Response rebuild(
    void Function(V2AdminConfigKeyPut200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigKeyPut200ResponseBuilder toBuilder() =>
      V2AdminConfigKeyPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigKeyPut200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminConfigKeyPut200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class V2AdminConfigKeyPut200ResponseBuilder
    implements
        Builder<
          V2AdminConfigKeyPut200Response,
          V2AdminConfigKeyPut200ResponseBuilder
        > {
  _$V2AdminConfigKeyPut200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2AdminConfigKeyPut200ResponseDataBuilder? _data;
  V2AdminConfigKeyPut200ResponseDataBuilder get data =>
      _$this._data ??= V2AdminConfigKeyPut200ResponseDataBuilder();
  set data(V2AdminConfigKeyPut200ResponseDataBuilder? data) =>
      _$this._data = data;

  V2AdminConfigKeyPut200ResponseBuilder() {
    V2AdminConfigKeyPut200Response._defaults(this);
  }

  V2AdminConfigKeyPut200ResponseBuilder get _$this {
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
  void replace(V2AdminConfigKeyPut200Response other) {
    _$v = other as _$V2AdminConfigKeyPut200Response;
  }

  @override
  void update(void Function(V2AdminConfigKeyPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigKeyPut200Response build() => _build();

  _$V2AdminConfigKeyPut200Response _build() {
    _$V2AdminConfigKeyPut200Response _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminConfigKeyPut200Response._(
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
          r'V2AdminConfigKeyPut200Response',
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
