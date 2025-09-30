//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:analytics_client/src/model/meal_performance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'food_popular_year_month_get200_response.g.dart';

/// FoodPopularYearMonthGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class FoodPopularYearMonthGet200Response implements Built<FoodPopularYearMonthGet200Response, FoodPopularYearMonthGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<MealPerformance>? get data;

  FoodPopularYearMonthGet200Response._();

  factory FoodPopularYearMonthGet200Response([void updates(FoodPopularYearMonthGet200ResponseBuilder b)]) = _$FoodPopularYearMonthGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FoodPopularYearMonthGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FoodPopularYearMonthGet200Response> get serializer => _$FoodPopularYearMonthGet200ResponseSerializer();
}

class _$FoodPopularYearMonthGet200ResponseSerializer implements PrimitiveSerializer<FoodPopularYearMonthGet200Response> {
  @override
  final Iterable<Type> types = const [FoodPopularYearMonthGet200Response, _$FoodPopularYearMonthGet200Response];

  @override
  final String wireName = r'FoodPopularYearMonthGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FoodPopularYearMonthGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(MealPerformance)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FoodPopularYearMonthGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FoodPopularYearMonthGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(MealPerformance)]),
          ) as BuiltList<MealPerformance>;
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
  FoodPopularYearMonthGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FoodPopularYearMonthGet200ResponseBuilder();
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

