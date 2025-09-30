//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_health_status503_response_details.g.dart';

/// GetHealthStatus503ResponseDetails
///
/// Properties:
/// * [database] 
/// * [cache] 
/// * [rabbitmq] 
@BuiltValue()
abstract class GetHealthStatus503ResponseDetails implements Built<GetHealthStatus503ResponseDetails, GetHealthStatus503ResponseDetailsBuilder> {
  @BuiltValueField(wireName: r'database')
  String? get database;

  @BuiltValueField(wireName: r'cache')
  String? get cache;

  @BuiltValueField(wireName: r'rabbitmq')
  String? get rabbitmq;

  GetHealthStatus503ResponseDetails._();

  factory GetHealthStatus503ResponseDetails([void updates(GetHealthStatus503ResponseDetailsBuilder b)]) = _$GetHealthStatus503ResponseDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetHealthStatus503ResponseDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetHealthStatus503ResponseDetails> get serializer => _$GetHealthStatus503ResponseDetailsSerializer();
}

class _$GetHealthStatus503ResponseDetailsSerializer implements PrimitiveSerializer<GetHealthStatus503ResponseDetails> {
  @override
  final Iterable<Type> types = const [GetHealthStatus503ResponseDetails, _$GetHealthStatus503ResponseDetails];

  @override
  final String wireName = r'GetHealthStatus503ResponseDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetHealthStatus503ResponseDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.database != null) {
      yield r'database';
      yield serializers.serialize(
        object.database,
        specifiedType: const FullType(String),
      );
    }
    if (object.cache != null) {
      yield r'cache';
      yield serializers.serialize(
        object.cache,
        specifiedType: const FullType(String),
      );
    }
    if (object.rabbitmq != null) {
      yield r'rabbitmq';
      yield serializers.serialize(
        object.rabbitmq,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetHealthStatus503ResponseDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetHealthStatus503ResponseDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'database':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.database = valueDes;
          break;
        case r'cache':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cache = valueDes;
          break;
        case r'rabbitmq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rabbitmq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetHealthStatus503ResponseDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHealthStatus503ResponseDetailsBuilder();
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

