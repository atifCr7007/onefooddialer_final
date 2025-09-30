// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_health.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemHealthStatusEnum _$systemHealthStatusEnum_healthy =
    const SystemHealthStatusEnum._('healthy');
const SystemHealthStatusEnum _$systemHealthStatusEnum_warning =
    const SystemHealthStatusEnum._('warning');
const SystemHealthStatusEnum _$systemHealthStatusEnum_critical =
    const SystemHealthStatusEnum._('critical');
const SystemHealthStatusEnum _$systemHealthStatusEnum_unknownDefaultOpenApi =
    const SystemHealthStatusEnum._('unknownDefaultOpenApi');

SystemHealthStatusEnum _$systemHealthStatusEnumValueOf(String name) {
  switch (name) {
    case 'healthy':
      return _$systemHealthStatusEnum_healthy;
    case 'warning':
      return _$systemHealthStatusEnum_warning;
    case 'critical':
      return _$systemHealthStatusEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$systemHealthStatusEnum_unknownDefaultOpenApi;
    default:
      return _$systemHealthStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemHealthStatusEnum> _$systemHealthStatusEnumValues =
    BuiltSet<SystemHealthStatusEnum>(const <SystemHealthStatusEnum>[
      _$systemHealthStatusEnum_healthy,
      _$systemHealthStatusEnum_warning,
      _$systemHealthStatusEnum_critical,
      _$systemHealthStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<SystemHealthStatusEnum> _$systemHealthStatusEnumSerializer =
    _$SystemHealthStatusEnumSerializer();

class _$SystemHealthStatusEnumSerializer
    implements PrimitiveSerializer<SystemHealthStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'healthy': 'healthy',
    'warning': 'warning',
    'critical': 'critical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'healthy': 'healthy',
    'warning': 'warning',
    'critical': 'critical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemHealthStatusEnum];
  @override
  final String wireName = 'SystemHealthStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemHealthStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemHealthStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemHealthStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemHealth extends SystemHealth {
  @override
  final SystemHealthStatusEnum? status;
  @override
  final int? uptime;
  @override
  final SystemHealthCpu? cpu;
  @override
  final SystemHealthMemory? memory;
  @override
  final SystemHealthDisk? disk;
  @override
  final BuiltList<SystemHealthServicesInner>? services;

  factory _$SystemHealth([void Function(SystemHealthBuilder)? updates]) =>
      (SystemHealthBuilder()..update(updates))._build();

  _$SystemHealth._({
    this.status,
    this.uptime,
    this.cpu,
    this.memory,
    this.disk,
    this.services,
  }) : super._();
  @override
  SystemHealth rebuild(void Function(SystemHealthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemHealthBuilder toBuilder() => SystemHealthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemHealth &&
        status == other.status &&
        uptime == other.uptime &&
        cpu == other.cpu &&
        memory == other.memory &&
        disk == other.disk &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, uptime.hashCode);
    _$hash = $jc(_$hash, cpu.hashCode);
    _$hash = $jc(_$hash, memory.hashCode);
    _$hash = $jc(_$hash, disk.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemHealth')
          ..add('status', status)
          ..add('uptime', uptime)
          ..add('cpu', cpu)
          ..add('memory', memory)
          ..add('disk', disk)
          ..add('services', services))
        .toString();
  }
}

class SystemHealthBuilder
    implements Builder<SystemHealth, SystemHealthBuilder> {
  _$SystemHealth? _$v;

  SystemHealthStatusEnum? _status;
  SystemHealthStatusEnum? get status => _$this._status;
  set status(SystemHealthStatusEnum? status) => _$this._status = status;

  int? _uptime;
  int? get uptime => _$this._uptime;
  set uptime(int? uptime) => _$this._uptime = uptime;

  SystemHealthCpuBuilder? _cpu;
  SystemHealthCpuBuilder get cpu => _$this._cpu ??= SystemHealthCpuBuilder();
  set cpu(SystemHealthCpuBuilder? cpu) => _$this._cpu = cpu;

  SystemHealthMemoryBuilder? _memory;
  SystemHealthMemoryBuilder get memory =>
      _$this._memory ??= SystemHealthMemoryBuilder();
  set memory(SystemHealthMemoryBuilder? memory) => _$this._memory = memory;

  SystemHealthDiskBuilder? _disk;
  SystemHealthDiskBuilder get disk =>
      _$this._disk ??= SystemHealthDiskBuilder();
  set disk(SystemHealthDiskBuilder? disk) => _$this._disk = disk;

  ListBuilder<SystemHealthServicesInner>? _services;
  ListBuilder<SystemHealthServicesInner> get services =>
      _$this._services ??= ListBuilder<SystemHealthServicesInner>();
  set services(ListBuilder<SystemHealthServicesInner>? services) =>
      _$this._services = services;

  SystemHealthBuilder() {
    SystemHealth._defaults(this);
  }

  SystemHealthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _uptime = $v.uptime;
      _cpu = $v.cpu?.toBuilder();
      _memory = $v.memory?.toBuilder();
      _disk = $v.disk?.toBuilder();
      _services = $v.services?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemHealth other) {
    _$v = other as _$SystemHealth;
  }

  @override
  void update(void Function(SystemHealthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemHealth build() => _build();

  _$SystemHealth _build() {
    _$SystemHealth _$result;
    try {
      _$result =
          _$v ??
          _$SystemHealth._(
            status: status,
            uptime: uptime,
            cpu: _cpu?.build(),
            memory: _memory?.build(),
            disk: _disk?.build(),
            services: _services?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cpu';
        _cpu?.build();
        _$failedField = 'memory';
        _memory?.build();
        _$failedField = 'disk';
        _disk?.build();
        _$failedField = 'services';
        _services?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SystemHealth',
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
