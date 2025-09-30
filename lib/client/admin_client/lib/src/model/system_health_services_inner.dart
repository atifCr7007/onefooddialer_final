//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_health_services_inner.g.dart';

/// SystemHealthServicesInner
///
/// Properties:
/// * [name] 
/// * [status] 
/// * [responseTime] - Service response time in milliseconds
@BuiltValue()
abstract class SystemHealthServicesInner implements Built<SystemHealthServicesInner, SystemHealthServicesInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'status')
  SystemHealthServicesInnerStatusEnum? get status;
  // enum statusEnum {  healthy,  warning,  critical,  };

  /// Service response time in milliseconds
  @BuiltValueField(wireName: r'responseTime')
  double? get responseTime;

  SystemHealthServicesInner._();

  factory SystemHealthServicesInner([void updates(SystemHealthServicesInnerBuilder b)]) = _$SystemHealthServicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemHealthServicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemHealthServicesInner> get serializer => _$SystemHealthServicesInnerSerializer();
}

class _$SystemHealthServicesInnerSerializer implements PrimitiveSerializer<SystemHealthServicesInner> {
  @override
  final Iterable<Type> types = const [SystemHealthServicesInner, _$SystemHealthServicesInner];

  @override
  final String wireName = r'SystemHealthServicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemHealthServicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SystemHealthServicesInnerStatusEnum),
      );
    }
    if (object.responseTime != null) {
      yield r'responseTime';
      yield serializers.serialize(
        object.responseTime,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemHealthServicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SystemHealthServicesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SystemHealthServicesInnerStatusEnum),
          ) as SystemHealthServicesInnerStatusEnum;
          result.status = valueDes;
          break;
        case r'responseTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.responseTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemHealthServicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemHealthServicesInnerBuilder();
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

class SystemHealthServicesInnerStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'healthy')
  static const SystemHealthServicesInnerStatusEnum healthy = _$systemHealthServicesInnerStatusEnum_healthy;
  @BuiltValueEnumConst(wireName: r'warning')
  static const SystemHealthServicesInnerStatusEnum warning = _$systemHealthServicesInnerStatusEnum_warning;
  @BuiltValueEnumConst(wireName: r'critical')
  static const SystemHealthServicesInnerStatusEnum critical = _$systemHealthServicesInnerStatusEnum_critical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemHealthServicesInnerStatusEnum unknownDefaultOpenApi = _$systemHealthServicesInnerStatusEnum_unknownDefaultOpenApi;

  static Serializer<SystemHealthServicesInnerStatusEnum> get serializer => _$systemHealthServicesInnerStatusEnumSerializer;

  const SystemHealthServicesInnerStatusEnum._(String name): super(name);

  static BuiltSet<SystemHealthServicesInnerStatusEnum> get values => _$systemHealthServicesInnerStatusEnumValues;
  static SystemHealthServicesInnerStatusEnum valueOf(String name) => _$systemHealthServicesInnerStatusEnumValueOf(name);
}

