// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_check200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthCheck200Response extends HealthCheck200Response {
  @override
  final String? status;
  @override
  final String? service;
  @override
  final String? version;
  @override
  final DateTime? timestamp;
  @override
  final String? database;

  factory _$HealthCheck200Response([
    void Function(HealthCheck200ResponseBuilder)? updates,
  ]) => (HealthCheck200ResponseBuilder()..update(updates))._build();

  _$HealthCheck200Response._({
    this.status,
    this.service,
    this.version,
    this.timestamp,
    this.database,
  }) : super._();
  @override
  HealthCheck200Response rebuild(
    void Function(HealthCheck200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HealthCheck200ResponseBuilder toBuilder() =>
      HealthCheck200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthCheck200Response &&
        status == other.status &&
        service == other.service &&
        version == other.version &&
        timestamp == other.timestamp &&
        database == other.database;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, service.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, database.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthCheck200Response')
          ..add('status', status)
          ..add('service', service)
          ..add('version', version)
          ..add('timestamp', timestamp)
          ..add('database', database))
        .toString();
  }
}

class HealthCheck200ResponseBuilder
    implements Builder<HealthCheck200Response, HealthCheck200ResponseBuilder> {
  _$HealthCheck200Response? _$v;

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

  String? _database;
  String? get database => _$this._database;
  set database(String? database) => _$this._database = database;

  HealthCheck200ResponseBuilder() {
    HealthCheck200Response._defaults(this);
  }

  HealthCheck200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _service = $v.service;
      _version = $v.version;
      _timestamp = $v.timestamp;
      _database = $v.database;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthCheck200Response other) {
    _$v = other as _$HealthCheck200Response;
  }

  @override
  void update(void Function(HealthCheck200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthCheck200Response build() => _build();

  _$HealthCheck200Response _build() {
    final _$result =
        _$v ??
        _$HealthCheck200Response._(
          status: status,
          service: service,
          version: version,
          timestamp: timestamp,
          database: database,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
