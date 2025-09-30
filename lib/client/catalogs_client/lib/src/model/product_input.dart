//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_input.g.dart';

/// ProductInput
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [unitPrice] 
/// * [foodType] 
/// * [productCategoryId] 
/// * [imagePath] 
/// * [productSubtype] 
/// * [swapWith] 
/// * [swapCharges] 
/// * [sequence] 
/// * [status] 
/// * [kitchenId] 
@BuiltValue()
abstract class ProductInput implements Built<ProductInput, ProductInputBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'unit_price')
  double get unitPrice;

  @BuiltValueField(wireName: r'food_type')
  ProductInputFoodTypeEnum get foodType;
  // enum foodTypeEnum {  veg,  non-veg,  };

  @BuiltValueField(wireName: r'product_category_id')
  int get productCategoryId;

  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  @BuiltValueField(wireName: r'product_subtype')
  String? get productSubtype;

  @BuiltValueField(wireName: r'swap_with')
  int? get swapWith;

  @BuiltValueField(wireName: r'swap_charges')
  double? get swapCharges;

  @BuiltValueField(wireName: r'sequence')
  int? get sequence;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'kitchen_id')
  int get kitchenId;

  ProductInput._();

  factory ProductInput([void updates(ProductInputBuilder b)]) = _$ProductInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductInput> get serializer => _$ProductInputSerializer();
}

class _$ProductInputSerializer implements PrimitiveSerializer<ProductInput> {
  @override
  final Iterable<Type> types = const [ProductInput, _$ProductInput];

  @override
  final String wireName = r'ProductInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductInput object, {
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
    yield r'food_type';
    yield serializers.serialize(
      object.foodType,
      specifiedType: const FullType(ProductInputFoodTypeEnum),
    );
    yield r'product_category_id';
    yield serializers.serialize(
      object.productCategoryId,
      specifiedType: const FullType(int),
    );
    if (object.imagePath != null) {
      yield r'image_path';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.productSubtype != null) {
      yield r'product_subtype';
      yield serializers.serialize(
        object.productSubtype,
        specifiedType: const FullType(String),
      );
    }
    if (object.swapWith != null) {
      yield r'swap_with';
      yield serializers.serialize(
        object.swapWith,
        specifiedType: const FullType(int),
      );
    }
    if (object.swapCharges != null) {
      yield r'swap_charges';
      yield serializers.serialize(
        object.swapCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.sequence != null) {
      yield r'sequence';
      yield serializers.serialize(
        object.sequence,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    yield r'kitchen_id';
    yield serializers.serialize(
      object.kitchenId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductInputBuilder result,
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
        case r'food_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductInputFoodTypeEnum),
          ) as ProductInputFoodTypeEnum;
          result.foodType = valueDes;
          break;
        case r'product_category_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productCategoryId = valueDes;
          break;
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePath = valueDes;
          break;
        case r'product_subtype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productSubtype = valueDes;
          break;
        case r'swap_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.swapWith = valueDes;
          break;
        case r'swap_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.swapCharges = valueDes;
          break;
        case r'sequence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sequence = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'kitchen_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kitchenId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductInputBuilder();
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

class ProductInputFoodTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'veg')
  static const ProductInputFoodTypeEnum veg = _$productInputFoodTypeEnum_veg;
  @BuiltValueEnumConst(wireName: r'non-veg')
  static const ProductInputFoodTypeEnum nonVeg = _$productInputFoodTypeEnum_nonVeg;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductInputFoodTypeEnum unknownDefaultOpenApi = _$productInputFoodTypeEnum_unknownDefaultOpenApi;

  static Serializer<ProductInputFoodTypeEnum> get serializer => _$productInputFoodTypeEnumSerializer;

  const ProductInputFoodTypeEnum._(String name): super(name);

  static BuiltSet<ProductInputFoodTypeEnum> get values => _$productInputFoodTypeEnumValues;
  static ProductInputFoodTypeEnum valueOf(String name) => _$productInputFoodTypeEnumValueOf(name);
}

