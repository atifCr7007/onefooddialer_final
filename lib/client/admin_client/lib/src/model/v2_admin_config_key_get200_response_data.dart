//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_config_key_get200_response_data.g.dart';

/// V2AdminConfigKeyGet200ResponseData
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class V2AdminConfigKeyGet200ResponseData implements Built<V2AdminConfigKeyGet200ResponseData, V2AdminConfigKeyGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  V2AdminConfigKeyGet200ResponseData._();

  factory V2AdminConfigKeyGet200ResponseData([void updates(V2AdminConfigKeyGet200ResponseDataBuilder b)]) = _$V2AdminConfigKeyGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminConfigKeyGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminConfigKeyGet200ResponseData> get serializer => _$V2AdminConfigKeyGet200ResponseDataSerializer();
}

class _$V2AdminConfigKeyGet200ResponseDataSerializer implements PrimitiveSerializer<V2AdminConfigKeyGet200ResponseData> {
  @override
  final Iterable<Type> types = const [V2AdminConfigKeyGet200ResponseData, _$V2AdminConfigKeyGet200ResponseData];

  @override
  final String wireName = r'V2AdminConfigKeyGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminConfigKeyGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminConfigKeyGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminConfigKeyGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminConfigKeyGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminConfigKeyGet200ResponseDataBuilder();
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

