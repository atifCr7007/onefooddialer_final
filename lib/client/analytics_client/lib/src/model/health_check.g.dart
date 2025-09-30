// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_check.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthCheck extends HealthCheck {
  @override
  final String? status;
  @override
  final String? service;
  @override
  final String? version;
  @override
  final DateTime? timestamp;

  factory _$HealthCheck([void Function(HealthCheckBuilder)? updates]) =>
      (HealthCheckBuilder()..update(updates))._build();

  _$HealthCheck._({this.status, this.service, this.version, this.timestamp})
    : super._();
  @override
  HealthCheck rebuild(void Function(HealthCheckBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthCheckBuilder toBuilder() => HealthCheckBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthCheck &&
        status == other.status &&
        service == other.service &&
        version == other.version &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthCheck')
          ..add('status', status)
          ..add('service', service)
          ..add('version', version)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class HealthCheckBuilder implements Builder<HealthCheck, HealthCheckBuilder> {
  _$HealthCheck? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _service;
  String? get service => _$this._service;
  set service(String? service) => _$this._service = service;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  HealthCheckBuilder() {
    HealthCheck._defaults(this);
  }

  HealthCheckBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _service = $v.service;
      _version = $v.version;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthCheck other) {
    _$v = other as _$HealthCheck;
  }

  @override
  void update(void Function(HealthCheckBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthCheck build() => _build();

  _$HealthCheck _build() {
    final _$result =
        _$v ??
        _$HealthCheck._(
          status: status,
          service: service,
          version: version,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
