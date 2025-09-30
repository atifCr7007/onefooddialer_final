// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_health_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminHealthGet200Response extends V2AdminHealthGet200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final DateTime? timestamp;

  factory _$V2AdminHealthGet200Response([
    void Function(V2AdminHealthGet200ResponseBuilder)? updates,
  ]) => (V2AdminHealthGet200ResponseBuilder()..update(updates))._build();

  _$V2AdminHealthGet200Response._({this.status, this.message, this.timestamp})
    : super._();
  @override
  V2AdminHealthGet200Response rebuild(
    void Function(V2AdminHealthGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminHealthGet200ResponseBuilder toBuilder() =>
      V2AdminHealthGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminHealthGet200Response &&
        status == other.status &&
        message == other.message &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminHealthGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class V2AdminHealthGet200ResponseBuilder
    implements
        Builder<
          V2AdminHealthGet200Response,
          V2AdminHealthGet200ResponseBuilder
        > {
  _$V2AdminHealthGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  V2AdminHealthGet200ResponseBuilder() {
    V2AdminHealthGet200Response._defaults(this);
  }

  V2AdminHealthGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminHealthGet200Response other) {
    _$v = other as _$V2AdminHealthGet200Response;
  }

  @override
  void update(void Function(V2AdminHealthGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminHealthGet200Response build() => _build();

  _$V2AdminHealthGet200Response _build() {
    final _$result =
        _$v ??
        _$V2AdminHealthGet200Response._(
          status: status,
          message: message,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
