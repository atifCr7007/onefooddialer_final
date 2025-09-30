//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get_recipe_by_id200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_recipe_by_id200_response.g.dart';

/// GetRecipeById200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetRecipeById200Response implements Built<GetRecipeById200Response, GetRecipeById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  GetRecipeById200ResponseData? get data;

  GetRecipeById200Response._();

  factory GetRecipeById200Response([void updates(GetRecipeById200ResponseBuilder b)]) = _$GetRecipeById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRecipeById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRecipeById200Response> get serializer => _$GetRecipeById200ResponseSerializer();
}

class _$GetRecipeById200ResponseSerializer implements PrimitiveSerializer<GetRecipeById200Response> {
  @override
  final Iterable<Type> types = const [GetRecipeById200Response, _$GetRecipeById200Response];

  @override
  final String wireName = r'GetRecipeById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRecipeById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(GetRecipeById200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRecipeById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetRecipeById200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetRecipeById200ResponseData),
          ) as GetRecipeById200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetRecipeById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRecipeById200ResponseBuilder();
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

