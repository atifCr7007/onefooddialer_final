//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_config_by_key200_response_data.g.dart';

/// GetConfigByKey200ResponseData
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class GetConfigByKey200ResponseData implements Built<GetConfigByKey200ResponseData, GetConfigByKey200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  GetConfigByKey200ResponseData._();

  factory GetConfigByKey200ResponseData([void updates(GetConfigByKey200ResponseDataBuilder b)]) = _$GetConfigByKey200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetConfigByKey200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetConfigByKey200ResponseData> get serializer => _$GetConfigByKey200ResponseDataSerializer();
}

class _$GetConfigByKey200ResponseDataSerializer implements PrimitiveSerializer<GetConfigByKey200ResponseData> {
  @override
  final Iterable<Type> types = const [GetConfigByKey200ResponseData, _$GetConfigByKey200ResponseData];

  @override
  final String wireName = r'GetConfigByKey200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetConfigByKey200ResponseData object, {
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
    GetConfigByKey200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetConfigByKey200ResponseDataBuilder result,
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
  GetConfigByKey200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConfigByKey200ResponseDataBuilder();
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

