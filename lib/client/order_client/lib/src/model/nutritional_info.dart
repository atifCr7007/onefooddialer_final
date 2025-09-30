//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nutritional_info.g.dart';

/// NutritionalInfo
///
/// Properties:
/// * [calories] - Calories per serving
/// * [protein] - Protein in grams
/// * [carbohydrates] - Carbohydrates in grams
/// * [fat] - Fat in grams
/// * [fiber] - Fiber in grams
/// * [sugar] - Sugar in grams
/// * [sodium] - Sodium in milligrams
@BuiltValue()
abstract class NutritionalInfo implements Built<NutritionalInfo, NutritionalInfoBuilder> {
  /// Calories per serving
  @BuiltValueField(wireName: r'calories')
  int? get calories;

  /// Protein in grams
  @BuiltValueField(wireName: r'protein')
  double? get protein;

  /// Carbohydrates in grams
  @BuiltValueField(wireName: r'carbohydrates')
  double? get carbohydrates;

  /// Fat in grams
  @BuiltValueField(wireName: r'fat')
  double? get fat;

  /// Fiber in grams
  @BuiltValueField(wireName: r'fiber')
  double? get fiber;

  /// Sugar in grams
  @BuiltValueField(wireName: r'sugar')
  double? get sugar;

  /// Sodium in milligrams
  @BuiltValueField(wireName: r'sodium')
  double? get sodium;

  NutritionalInfo._();

  factory NutritionalInfo([void updates(NutritionalInfoBuilder b)]) = _$NutritionalInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NutritionalInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NutritionalInfo> get serializer => _$NutritionalInfoSerializer();
}

class _$NutritionalInfoSerializer implements PrimitiveSerializer<NutritionalInfo> {
  @override
  final Iterable<Type> types = const [NutritionalInfo, _$NutritionalInfo];

  @override
  final String wireName = r'NutritionalInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NutritionalInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.calories != null) {
      yield r'calories';
      yield serializers.serialize(
        object.calories,
        specifiedType: const FullType(int),
      );
    }
    if (object.protein != null) {
      yield r'protein';
      yield serializers.serialize(
        object.protein,
        specifiedType: const FullType(double),
      );
    }
    if (object.carbohydrates != null) {
      yield r'carbohydrates';
      yield serializers.serialize(
        object.carbohydrates,
        specifiedType: const FullType(double),
      );
    }
    if (object.fat != null) {
      yield r'fat';
      yield serializers.serialize(
        object.fat,
        specifiedType: const FullType(double),
      );
    }
    if (object.fiber != null) {
      yield r'fiber';
      yield serializers.serialize(
        object.fiber,
        specifiedType: const FullType(double),
      );
    }
    if (object.sugar != null) {
      yield r'sugar';
      yield serializers.serialize(
        object.sugar,
        specifiedType: const FullType(double),
      );
    }
    if (object.sodium != null) {
      yield r'sodium';
      yield serializers.serialize(
        object.sodium,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NutritionalInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NutritionalInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'calories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.calories = valueDes;
          break;
        case r'protein':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.protein = valueDes;
          break;
        case r'carbohydrates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.carbohydrates = valueDes;
          break;
        case r'fat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.fat = valueDes;
          break;
        case r'fiber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.fiber = valueDes;
          break;
        case r'sugar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sugar = valueDes;
          break;
        case r'sodium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.sodium = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NutritionalInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NutritionalInfoBuilder();
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

