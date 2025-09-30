// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_key_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminConfigKeyDelete200Response
    extends V2AdminConfigKeyDelete200Response {
  @override
  final String? status;
  @override
  final String? message;

  factory _$V2AdminConfigKeyDelete200Response([
    void Function(V2AdminConfigKeyDelete200ResponseBuilder)? updates,
  ]) => (V2AdminConfigKeyDelete200ResponseBuilder()..update(updates))._build();

  _$V2AdminConfigKeyDelete200Response._({this.status, this.message})
    : super._();
  @override
  V2AdminConfigKeyDelete200Response rebuild(
    void Function(V2AdminConfigKeyDelete200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigKeyDelete200ResponseBuilder toBuilder() =>
      V2AdminConfigKeyDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigKeyDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'V2AdminConfigKeyDelete200Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class V2AdminConfigKeyDelete200ResponseBuilder
    implements
        Builder<
          V2AdminConfigKeyDelete200Response,
          V2AdminConfigKeyDelete200ResponseBuilder
        > {
  _$V2AdminConfigKeyDelete200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V2AdminConfigKeyDelete200ResponseBuilder() {
    V2AdminConfigKeyDelete200Response._defaults(this);
  }

  V2AdminConfigKeyDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminConfigKeyDelete200Response other) {
    _$v = other as _$V2AdminConfigKeyDelete200Response;
  }

  @override
  void update(
    void Function(V2AdminConfigKeyDelete200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigKeyDelete200Response build() => _build();

  _$V2AdminConfigKeyDelete200Response _build() {
    final _$result =
        _$v ??
        _$V2AdminConfigKeyDelete200Response._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
