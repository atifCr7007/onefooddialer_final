//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_config_by_key200_response_data.g.dart';

/// UpdateConfigByKey200ResponseData
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class UpdateConfigByKey200ResponseData implements Built<UpdateConfigByKey200ResponseData, UpdateConfigByKey200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  UpdateConfigByKey200ResponseData._();

  factory UpdateConfigByKey200ResponseData([void updates(UpdateConfigByKey200ResponseDataBuilder b)]) = _$UpdateConfigByKey200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigByKey200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigByKey200ResponseData> get serializer => _$UpdateConfigByKey200ResponseDataSerializer();
}

class _$UpdateConfigByKey200ResponseDataSerializer implements PrimitiveSerializer<UpdateConfigByKey200ResponseData> {
  @override
  final Iterable<Type> types = const [UpdateConfigByKey200ResponseData, _$UpdateConfigByKey200ResponseData];

  @override
  final String wireName = r'UpdateConfigByKey200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigByKey200ResponseData object, {
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
    UpdateConfigByKey200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigByKey200ResponseDataBuilder result,
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
  UpdateConfigByKey200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigByKey200ResponseDataBuilder();
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

