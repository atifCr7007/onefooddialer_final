// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_health_services_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemHealthServicesInnerStatusEnum
_$systemHealthServicesInnerStatusEnum_healthy =
    const SystemHealthServicesInnerStatusEnum._('healthy');
const SystemHealthServicesInnerStatusEnum
_$systemHealthServicesInnerStatusEnum_warning =
    const SystemHealthServicesInnerStatusEnum._('warning');
const SystemHealthServicesInnerStatusEnum
_$systemHealthServicesInnerStatusEnum_critical =
    const SystemHealthServicesInnerStatusEnum._('critical');
const SystemHealthServicesInnerStatusEnum
_$systemHealthServicesInnerStatusEnum_unknownDefaultOpenApi =
    const SystemHealthServicesInnerStatusEnum._('unknownDefaultOpenApi');

SystemHealthServicesInnerStatusEnum
_$systemHealthServicesInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'healthy':
      return _$systemHealthServicesInnerStatusEnum_healthy;
    case 'warning':
      return _$systemHealthServicesInnerStatusEnum_warning;
    case 'critical':
      return _$systemHealthServicesInnerStatusEnum_critical;
    case 'unknownDefaultOpenApi':
      return _$systemHealthServicesInnerStatusEnum_unknownDefaultOpenApi;
    default:
      return _$systemHealthServicesInnerStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemHealthServicesInnerStatusEnum>
_$systemHealthServicesInnerStatusEnumValues =
    BuiltSet<SystemHealthServicesInnerStatusEnum>(
      const <SystemHealthServicesInnerStatusEnum>[
        _$systemHealthServicesInnerStatusEnum_healthy,
        _$systemHealthServicesInnerStatusEnum_warning,
        _$systemHealthServicesInnerStatusEnum_critical,
        _$systemHealthServicesInnerStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SystemHealthServicesInnerStatusEnum>
_$systemHealthServicesInnerStatusEnumSerializer =
    _$SystemHealthServicesInnerStatusEnumSerializer();

class _$SystemHealthServicesInnerStatusEnumSerializer
    implements PrimitiveSerializer<SystemHealthServicesInnerStatusEnum> {
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
  final Iterable<Type> types = const <Type>[
    SystemHealthServicesInnerStatusEnum,
  ];
  @override
  final String wireName = 'SystemHealthServicesInnerStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SystemHealthServicesInnerStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemHealthServicesInnerStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemHealthServicesInnerStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SystemHealthServicesInner extends SystemHealthServicesInner {
  @override
  final String? name;
  @override
  final SystemHealthServicesInnerStatusEnum? status;
  @override
  final double? responseTime;

  factory _$SystemHealthServicesInner([
    void Function(SystemHealthServicesInnerBuilder)? updates,
  ]) => (SystemHealthServicesInnerBuilder()..update(updates))._build();

  _$SystemHealthServicesInner._({this.name, this.status, this.responseTime})
    : super._();
  @override
  SystemHealthServicesInner rebuild(
    void Function(SystemHealthServicesInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemHealthServicesInnerBuilder toBuilder() =>
      SystemHealthServicesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemHealthServicesInner &&
        name == other.name &&
        status == other.status &&
        responseTime == other.responseTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, responseTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemHealthServicesInner')
          ..add('name', name)
          ..add('status', status)
          ..add('responseTime', responseTime))
        .toString();
  }
}

class SystemHealthServicesInnerBuilder
    implements
        Builder<SystemHealthServicesInner, SystemHealthServicesInnerBuilder> {
  _$SystemHealthServicesInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SystemHealthServicesInnerStatusEnum? _status;
  SystemHealthServicesInnerStatusEnum? get status => _$this._status;
  set status(SystemHealthServicesInnerStatusEnum? status) =>
      _$this._status = status;

  double? _responseTime;
  double? get responseTime => _$this._responseTime;
  set responseTime(double? responseTime) => _$this._responseTime = responseTime;

  SystemHealthServicesInnerBuilder() {
    SystemHealthServicesInner._defaults(this);
  }

  SystemHealthServicesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _status = $v.status;
      _responseTime = $v.responseTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemHealthServicesInner other) {
    _$v = other as _$SystemHealthServicesInner;
  }

  @override
  void update(void Function(SystemHealthServicesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemHealthServicesInner build() => _build();

  _$SystemHealthServicesInner _build() {
    final _$result =
        _$v ??
        _$SystemHealthServicesInner._(
          name: name,
          status: status,
          responseTime: responseTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
