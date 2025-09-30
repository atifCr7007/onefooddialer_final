//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_recipe_by_id200_response_data.g.dart';

/// GetRecipeById200ResponseData
///
/// Properties:
/// * [name] 
/// * [recipe] 
@BuiltValue()
abstract class GetRecipeById200ResponseData implements Built<GetRecipeById200ResponseData, GetRecipeById200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'recipe')
  String? get recipe;

  GetRecipeById200ResponseData._();

  factory GetRecipeById200ResponseData([void updates(GetRecipeById200ResponseDataBuilder b)]) = _$GetRecipeById200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRecipeById200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRecipeById200ResponseData> get serializer => _$GetRecipeById200ResponseDataSerializer();
}

class _$GetRecipeById200ResponseDataSerializer implements PrimitiveSerializer<GetRecipeById200ResponseData> {
  @override
  final Iterable<Type> types = const [GetRecipeById200ResponseData, _$GetRecipeById200ResponseData];

  @override
  final String wireName = r'GetRecipeById200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRecipeById200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.recipe != null) {
      yield r'recipe';
      yield serializers.serialize(
        object.recipe,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRecipeById200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetRecipeById200ResponseDataBuilder result,
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
        case r'recipe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipe = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetRecipeById200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRecipeById200ResponseDataBuilder();
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

