//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:meal_client/src/model/meal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_meal_by_id200_response.g.dart';

/// GetMealById200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetMealById200Response implements Built<GetMealById200Response, GetMealById200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  Meal? get data;

  GetMealById200Response._();

  factory GetMealById200Response([void updates(GetMealById200ResponseBuilder b)]) = _$GetMealById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetMealById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetMealById200Response> get serializer => _$GetMealById200ResponseSerializer();
}

class _$GetMealById200ResponseSerializer implements PrimitiveSerializer<GetMealById200Response> {
  @override
  final Iterable<Type> types = const [GetMealById200Response, _$GetMealById200Response];

  @override
  final String wireName = r'GetMealById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetMealById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
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
    GetMealById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetMealById200ResponseBuilder result,
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
  GetMealById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMealById200ResponseBuilder();
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

