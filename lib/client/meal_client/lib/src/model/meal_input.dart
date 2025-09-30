//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meal_input.g.dart';

/// MealInput
///
/// Properties:
/// * [name] - Name of the meal
/// * [description] - Description of the meal
/// * [unitPrice] - Price of the meal
/// * [items] - JSON object containing meal items
/// * [category] - Menu type (breakfast, lunch, dinner)
/// * [foodType] - Food type (veg, non-veg, beverage)
/// * [productType] - Product type
/// * [productCategory] - Product category
/// * [threshold] - Kitchen capacity
/// * [imagePath] - Path to the meal image
/// * [screen] - Screen where the meal is displayed
/// * [status] - Whether the meal is active
/// * [isSwappable] - Whether the meal can be swapped
/// * [swapWith] - Meals that can be swapped with this meal
/// * [swapCharges] - Charges for swapping the meal
/// * [mealPlans] - Meal plans that include this meal
/// * [isCustom] - Whether the meal is custom
@BuiltValue()
abstract class MealInput implements Built<MealInput, MealInputBuilder> {
  /// Name of the meal
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Description of the meal
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Price of the meal
  @BuiltValueField(wireName: r'unit_price')
  double get unitPrice;

  /// JSON object containing meal items
  @BuiltValueField(wireName: r'items')
  Map<String,dynamic>? get items;

  /// Menu type (breakfast, lunch, dinner)
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Food type (veg, non-veg, beverage)
  @BuiltValueField(wireName: r'food_type')
  MealInputFoodTypeEnum get foodType;
  // enum foodTypeEnum {  veg,  non-veg,  beverage,  };

  /// Product type
  @BuiltValueField(wireName: r'product_type')
  String? get productType;

  /// Product category
  @BuiltValueField(wireName: r'product_category')
  String? get productCategory;

  /// Kitchen capacity
  @BuiltValueField(wireName: r'threshold')
  int? get threshold;

  /// Path to the meal image
  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  /// Screen where the meal is displayed
  @BuiltValueField(wireName: r'screen')
  String? get screen;

  /// Whether the meal is active
  @BuiltValueField(wireName: r'status')
  bool? get status;

  /// Whether the meal can be swapped
  @BuiltValueField(wireName: r'is_swappable')
  bool? get isSwappable;

  /// Meals that can be swapped with this meal
  @BuiltValueField(wireName: r'swap_with')
  String? get swapWith;

  /// Charges for swapping the meal
  @BuiltValueField(wireName: r'swap_charges')
  double? get swapCharges;

  /// Meal plans that include this meal
  @BuiltValueField(wireName: r'meal_plans')
  String? get mealPlans;

  /// Whether the meal is custom
  @BuiltValueField(wireName: r'is_custom')
  bool? get isCustom;

  MealInput._();

  factory MealInput([void updates(MealInputBuilder b)]) = _$MealInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MealInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MealInput> get serializer => _$MealInputSerializer();
}

class _$MealInputSerializer implements PrimitiveSerializer<MealInput> {
  @override
  final Iterable<Type> types = const [MealInput, _$MealInput];

  @override
  final String wireName = r'MealInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MealInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'unit_price';
    yield serializers.serialize(
      object.unitPrice,
      specifiedType: const FullType(double),
    );
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    yield r'food_type';
    yield serializers.serialize(
      object.foodType,
      specifiedType: const FullType(MealInputFoodTypeEnum),
    );
    if (object.productType != null) {
      yield r'product_type';
      yield serializers.serialize(
        object.productType,
        specifiedType: const FullType(String),
      );
    }
    if (object.productCategory != null) {
      yield r'product_category';
      yield serializers.serialize(
        object.productCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.threshold != null) {
      yield r'threshold';
      yield serializers.serialize(
        object.threshold,
        specifiedType: const FullType(int),
      );
    }
    if (object.imagePath != null) {
      yield r'image_path';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.screen != null) {
      yield r'screen';
      yield serializers.serialize(
        object.screen,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSwappable != null) {
      yield r'is_swappable';
      yield serializers.serialize(
        object.isSwappable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.swapWith != null) {
      yield r'swap_with';
      yield serializers.serialize(
        object.swapWith,
        specifiedType: const FullType(String),
      );
    }
    if (object.swapCharges != null) {
      yield r'swap_charges';
      yield serializers.serialize(
        object.swapCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.mealPlans != null) {
      yield r'meal_plans';
      yield serializers.serialize(
        object.mealPlans,
        specifiedType: const FullType(String),
      );
    }
    if (object.isCustom != null) {
      yield r'is_custom';
      yield serializers.serialize(
        object.isCustom,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MealInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MealInputBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'unit_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitPrice = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.items = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'food_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MealInputFoodTypeEnum),
          ) as MealInputFoodTypeEnum;
          result.foodType = valueDes;
          break;
        case r'product_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productType = valueDes;
          break;
        case r'product_category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productCategory = valueDes;
          break;
        case r'threshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.threshold = valueDes;
          break;
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePath = valueDes;
          break;
        case r'screen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.screen = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'is_swappable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSwappable = valueDes;
          break;
        case r'swap_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.swapWith = valueDes;
          break;
        case r'swap_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.swapCharges = valueDes;
          break;
        case r'meal_plans':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mealPlans = valueDes;
          break;
        case r'is_custom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCustom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MealInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MealInputBuilder();
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

class MealInputFoodTypeEnum extends EnumClass {

  /// Food type (veg, non-veg, beverage)
  @BuiltValueEnumConst(wireName: r'veg')
  static const MealInputFoodTypeEnum veg = _$mealInputFoodTypeEnum_veg;
  /// Food type (veg, non-veg, beverage)
  @BuiltValueEnumConst(wireName: r'non-veg')
  static const MealInputFoodTypeEnum nonVeg = _$mealInputFoodTypeEnum_nonVeg;
  /// Food type (veg, non-veg, beverage)
  @BuiltValueEnumConst(wireName: r'beverage')
  static const MealInputFoodTypeEnum beverage = _$mealInputFoodTypeEnum_beverage;
  /// Food type (veg, non-veg, beverage)
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MealInputFoodTypeEnum unknownDefaultOpenApi = _$mealInputFoodTypeEnum_unknownDefaultOpenApi;

  static Serializer<MealInputFoodTypeEnum> get serializer => _$mealInputFoodTypeEnumSerializer;

  const MealInputFoodTypeEnum._(String name): super(name);

  static BuiltSet<MealInputFoodTypeEnum> get values => _$mealInputFoodTypeEnumValues;
  static MealInputFoodTypeEnum valueOf(String name) => _$mealInputFoodTypeEnumValueOf(name);
}

