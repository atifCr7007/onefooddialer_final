//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meal_performance.g.dart';

/// MealPerformance
///
/// Properties:
/// * [productName] 
/// * [qty] 
@BuiltValue()
abstract class MealPerformance implements Built<MealPerformance, MealPerformanceBuilder> {
  @BuiltValueField(wireName: r'product_name')
  String? get productName;

  @BuiltValueField(wireName: r'qty')
  int? get qty;

  MealPerformance._();

  factory MealPerformance([void updates(MealPerformanceBuilder b)]) = _$MealPerformance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MealPerformanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MealPerformance> get serializer => _$MealPerformanceSerializer();
}

class _$MealPerformanceSerializer implements PrimitiveSerializer<MealPerformance> {
  @override
  final Iterable<Type> types = const [MealPerformance, _$MealPerformance];

  @override
  final String wireName = r'MealPerformance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MealPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productName != null) {
      yield r'product_name';
      yield serializers.serialize(
        object.productName,
        specifiedType: const FullType(String),
      );
    }
    if (object.qty != null) {
      yield r'qty';
      yield serializers.serialize(
        object.qty,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MealPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MealPerformanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'qty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  MealPerformance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MealPerformanceBuilder();
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

