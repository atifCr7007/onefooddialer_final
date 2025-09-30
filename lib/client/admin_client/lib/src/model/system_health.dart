//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/system_health_disk.dart';
import 'package:built_collection/built_collection.dart';
import 'package:admin_client/src/model/system_health_services_inner.dart';
import 'package:admin_client/src/model/system_health_cpu.dart';
import 'package:admin_client/src/model/system_health_memory.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_health.g.dart';

/// SystemHealth
///
/// Properties:
/// * [status] - Overall system health status
/// * [uptime] - System uptime in seconds
/// * [cpu] 
/// * [memory] 
/// * [disk] 
/// * [services] 
@BuiltValue()
abstract class SystemHealth implements Built<SystemHealth, SystemHealthBuilder> {
  /// Overall system health status
  @BuiltValueField(wireName: r'status')
  SystemHealthStatusEnum? get status;
  // enum statusEnum {  healthy,  warning,  critical,  };

  /// System uptime in seconds
  @BuiltValueField(wireName: r'uptime')
  int? get uptime;

  @BuiltValueField(wireName: r'cpu')
  SystemHealthCpu? get cpu;

  @BuiltValueField(wireName: r'memory')
  SystemHealthMemory? get memory;

  @BuiltValueField(wireName: r'disk')
  SystemHealthDisk? get disk;

  @BuiltValueField(wireName: r'services')
  BuiltList<SystemHealthServicesInner>? get services;

  SystemHealth._();

  factory SystemHealth([void updates(SystemHealthBuilder b)]) = _$SystemHealth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemHealthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemHealth> get serializer => _$SystemHealthSerializer();
}

class _$SystemHealthSerializer implements PrimitiveSerializer<SystemHealth> {
  @override
  final Iterable<Type> types = const [SystemHealth, _$SystemHealth];

  @override
  final String wireName = r'SystemHealth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemHealthStatusEnum),
      );
    }
    if (object.uptime != null) {
      yield r'uptime';
      yield serializers.serialize(
        object.uptime,
        specifiedType: const FullType(int),
      );
    }
    if (object.cpu != null) {
      yield r'cpu';
      yield serializers.serialize(
        object.cpu,
        specifiedType: const FullType(SystemHealthCpu),
      );
    }
    if (object.memory != null) {
      yield r'memory';
      yield serializers.serialize(
        object.memory,
        specifiedType: const FullType(SystemHealthMemory),
      );
    }
    if (object.disk != null) {
      yield r'disk';
      yield serializers.serialize(
        object.disk,
        specifiedType: const FullType(SystemHealthDisk),
      );
    }
    if (object.services != null) {
      yield r'services';
      yield serializers.serialize(
        object.services,
        specifiedType: const FullType(BuiltList, [FullType(SystemHealthServicesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemHealth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SystemHealthBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealthStatusEnum),
          ) as SystemHealthStatusEnum;
          result.status = valueDes;
          break;
        case r'uptime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.uptime = valueDes;
          break;
        case r'cpu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealthCpu),
          ) as SystemHealthCpu;
          result.cpu.replace(valueDes);
          break;
        case r'memory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealthMemory),
          ) as SystemHealthMemory;
          result.memory.replace(valueDes);
          break;
        case r'disk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealthDisk),
          ) as SystemHealthDisk;
          result.disk.replace(valueDes);
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SystemHealthServicesInner)]),
          ) as BuiltList<SystemHealthServicesInner>;
          result.services.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemHealth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemHealthBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class SystemHealthStatusEnum extends EnumClass {

  /// Overall system health status
  @BuiltValueEnumConst(wireName: r'healthy')
  static const SystemHealthStatusEnum healthy = _$systemHealthStatusEnum_healthy;
  /// Overall system health status
  @BuiltValueEnumConst(wireName: r'warning')
  static const SystemHealthStatusEnum warning = _$systemHealthStatusEnum_warning;
  /// Overall system health status
  @BuiltValueEnumConst(wireName: r'critical')
  static const SystemHealthStatusEnum critical = _$systemHealthStatusEnum_critical;
  /// Overall system health status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemHealthStatusEnum unknownDefaultOpenApi = _$systemHealthStatusEnum_unknownDefaultOpenApi;

  static Serializer<SystemHealthStatusEnum> get serializer => _$systemHealthStatusEnumSerializer;

  const SystemHealthStatusEnum._(String name): super(name);

  static BuiltSet<SystemHealthStatusEnum> get values => _$systemHealthStatusEnumValues;
  static SystemHealthStatusEnum valueOf(String name) => _$systemHealthStatusEnumValueOf(name);
}

