//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_health_memory.g.dart';

/// SystemHealthMemory
///
/// Properties:
/// * [usage] - Memory usage percentage
/// * [used] - Used memory in bytes
/// * [total] - Total memory in bytes
@BuiltValue()
abstract class SystemHealthMemory implements Built<SystemHealthMemory, SystemHealthMemoryBuilder> {
  /// Memory usage percentage
  @BuiltValueField(wireName: r'usage')
  double? get usage;

  /// Used memory in bytes
  @BuiltValueField(wireName: r'used')
  int? get used;

  /// Total memory in bytes
  @BuiltValueField(wireName: r'total')
  int? get total;

  SystemHealthMemory._();

  factory SystemHealthMemory([void updates(SystemHealthMemoryBuilder b)]) = _$SystemHealthMemory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SystemHealthMemoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SystemHealthMemory> get serializer => _$SystemHealthMemorySerializer();
}

class _$SystemHealthMemorySerializer implements PrimitiveSerializer<SystemHealthMemory> {
  @override
  final Iterable<Type> types = const [SystemHealthMemory, _$SystemHealthMemory];

  @override
  final String wireName = r'SystemHealthMemory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SystemHealthMemory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.usage != null) {
      yield r'usage';
      yield serializers.serialize(
        object.usage,
        specifiedType: const FullType(double),
      );
    }
    if (object.used != null) {
      yield r'used';
      yield serializers.serialize(
        object.used,
        specifiedType: const FullType(int),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SystemHealthMemory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SystemHealthMemoryBuilder result,
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
        case r'used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.used = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SystemHealthMemory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SystemHealthMemoryBuilder();
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

