//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:catalogs_client/src/model/product_category.dart';
import 'package:catalogs_client/src/model/kitchen.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product.g.dart';

/// Product
///
/// Properties:
/// * [id] 
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
/// * [createdAt] 
/// * [updatedAt] 
/// * [category] 
/// * [kitchen] 
@BuiltValue()
abstract class Product implements Built<Product, ProductBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'unit_price')
  double? get unitPrice;

  @BuiltValueField(wireName: r'food_type')
  ProductFoodTypeEnum? get foodType;
  // enum foodTypeEnum {  veg,  non-veg,  };

  @BuiltValueField(wireName: r'product_category_id')
  int? get productCategoryId;

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
  int? get kitchenId;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'category')
  ProductCategory? get category;

  @BuiltValueField(wireName: r'kitchen')
  Kitchen? get kitchen;

  Product._();

  factory Product([void updates(ProductBuilder b)]) = _$Product;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Product> get serializer => _$ProductSerializer();
}

class _$ProductSerializer implements PrimitiveSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];

  @override
  final String wireName = r'Product';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Product object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.unitPrice != null) {
      yield r'unit_price';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.foodType != null) {
      yield r'food_type';
      yield serializers.serialize(
        object.foodType,
        specifiedType: const FullType(ProductFoodTypeEnum),
      );
    }
    if (object.productCategoryId != null) {
      yield r'product_category_id';
      yield serializers.serialize(
        object.productCategoryId,
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
    if (object.kitchenId != null) {
      yield r'kitchen_id';
      yield serializers.serialize(
        object.kitchenId,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(ProductCategory),
      );
    }
    if (object.kitchen != null) {
      yield r'kitchen';
      yield serializers.serialize(
        object.kitchen,
        specifiedType: const FullType(Kitchen),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Product object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
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
            specifiedType: const FullType(ProductFoodTypeEnum),
          ) as ProductFoodTypeEnum;
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
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductCategory),
          ) as ProductCategory;
          result.category.replace(valueDes);
          break;
        case r'kitchen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Kitchen),
          ) as Kitchen;
          result.kitchen.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Product deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductBuilder();
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

class ProductFoodTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'veg')
  static const ProductFoodTypeEnum veg = _$productFoodTypeEnum_veg;
  @BuiltValueEnumConst(wireName: r'non-veg')
  static const ProductFoodTypeEnum nonVeg = _$productFoodTypeEnum_nonVeg;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductFoodTypeEnum unknownDefaultOpenApi = _$productFoodTypeEnum_unknownDefaultOpenApi;

  static Serializer<ProductFoodTypeEnum> get serializer => _$productFoodTypeEnumSerializer;

  const ProductFoodTypeEnum._(String name): super(name);

  static BuiltSet<ProductFoodTypeEnum> get values => _$productFoodTypeEnumValues;
  static ProductFoodTypeEnum valueOf(String name) => _$productFoodTypeEnumValueOf(name);
}

