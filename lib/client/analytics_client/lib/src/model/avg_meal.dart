//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'avg_meal.g.dart';

/// AvgMeal
///
/// Properties:
/// * [mealName] 
/// * [qty] 
@BuiltValue()
abstract class AvgMeal implements Built<AvgMeal, AvgMealBuilder> {
  @BuiltValueField(wireName: r'meal_name')
  String? get mealName;

  @BuiltValueField(wireName: r'qty')
  double? get qty;

  AvgMeal._();

  factory AvgMeal([void updates(AvgMealBuilder b)]) = _$AvgMeal;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvgMealBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvgMeal> get serializer => _$AvgMealSerializer();
}

class _$AvgMealSerializer implements PrimitiveSerializer<AvgMeal> {
  @override
  final Iterable<Type> types = const [AvgMeal, _$AvgMeal];

  @override
  final String wireName = r'AvgMeal';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvgMeal object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mealName != null) {
      yield r'meal_name';
      yield serializers.serialize(
        object.mealName,
        specifiedType: const FullType(String),
      );
    }
    if (object.qty != null) {
      yield r'qty';
      yield serializers.serialize(
        object.qty,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AvgMeal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvgMealBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meal_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealName = valueDes;
          break;
        case r'qty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.qty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvgMeal deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvgMealBuilder();
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

