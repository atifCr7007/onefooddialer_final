//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:meal_client/src/model/meal.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_all_meals200_response.g.dart';

/// GetAllMeals200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class GetAllMeals200Response implements Built<GetAllMeals200Response, GetAllMeals200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<Meal>? get data;

  GetAllMeals200Response._();

  factory GetAllMeals200Response([void updates(GetAllMeals200ResponseBuilder b)]) = _$GetAllMeals200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAllMeals200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAllMeals200Response> get serializer => _$GetAllMeals200ResponseSerializer();
}

class _$GetAllMeals200ResponseSerializer implements PrimitiveSerializer<GetAllMeals200Response> {
  @override
  final Iterable<Type> types = const [GetAllMeals200Response, _$GetAllMeals200Response];

  @override
  final String wireName = r'GetAllMeals200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAllMeals200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Meal)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAllMeals200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAllMeals200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Meal)]),
          ) as BuiltList<Meal>;
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
  GetAllMeals200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAllMeals200ResponseBuilder();
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

