//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_health_cpu.g.dart';

/// SystemHealthCpu
///
/// Properties:
/// * [usage] - CPU usage percentage
/// * [cores] - Number of CPU cores
@BuiltValue()
abstract class SystemHealthCpu implements Built<SystemHealthCpu, SystemHealthCpuBuilder> {
  /// CPU usage percentage
  @BuiltValueField(wireName: r'usage')
  double? get usage;

  /// Number of CPU cores
  @BuiltValueField(wireName: r'cores')
  int? get cores;

  SystemHealthCpu._();

  factory SystemHealthCpu([void updates(SystemHealthCpuBuilder b)]) = _$SystemHealthCpu;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemHealthCpuBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemHealthCpu> get serializer => _$SystemHealthCpuSerializer();
}

class _$SystemHealthCpuSerializer implements PrimitiveSerializer<SystemHealthCpu> {
  @override
  final Iterable<Type> types = const [SystemHealthCpu, _$SystemHealthCpu];

  @override
  final String wireName = r'SystemHealthCpu';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemHealthCpu object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(double),
      );
    }
    if (object.cores != null) {
      yield r'cores';
      yield serializers.serialize(
        object.cores,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemHealthCpu object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SystemHealthCpuBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'usage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.usage = valueDes;
          break;
        case r'cores':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cores = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemHealthCpu deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemHealthCpuBuilder();
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

