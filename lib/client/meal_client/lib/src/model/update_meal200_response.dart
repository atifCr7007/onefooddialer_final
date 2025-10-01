//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:meal_client/src/model/meal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_meal200_response.g.dart';

/// UpdateMeal200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class UpdateMeal200Response implements Built<UpdateMeal200Response, UpdateMeal200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  Meal? get data;

  UpdateMeal200Response._();

  factory UpdateMeal200Response([void updates(UpdateMeal200ResponseBuilder b)]) = _$UpdateMeal200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateMeal200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateMeal200Response> get serializer => _$UpdateMeal200ResponseSerializer();
}

class _$UpdateMeal200ResponseSerializer implements PrimitiveSerializer<UpdateMeal200Response> {
  @override
  final Iterable<Type> types = const [UpdateMeal200Response, _$UpdateMeal200Response];

  @override
  final String wireName = r'UpdateMeal200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateMeal200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Meal),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateMeal200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateMeal200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Meal),
          ) as Meal;
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
  UpdateMeal200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateMeal200ResponseBuilder();
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

