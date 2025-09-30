//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_category.g.dart';

/// ProductCategory
///
/// Properties:
/// * [id] 
/// * [productCategoryName] 
/// * [description] 
/// * [imagePath] 
/// * [type] 
/// * [sequence] 
/// * [status] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ProductCategory implements Built<ProductCategory, ProductCategoryBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'product_category_name')
  String? get productCategoryName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'image_path')
  String? get imagePath;

  @BuiltValueField(wireName: r'type')
  ProductCategoryTypeEnum? get type;
  // enum typeEnum {  meal,  product,  extra,  };

  @BuiltValueField(wireName: r'sequence')
  int? get sequence;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  ProductCategory._();

  factory ProductCategory([void updates(ProductCategoryBuilder b)]) = _$ProductCategory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductCategoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductCategory> get serializer => _$ProductCategorySerializer();
}

class _$ProductCategorySerializer implements PrimitiveSerializer<ProductCategory> {
  @override
  final Iterable<Type> types = const [ProductCategory, _$ProductCategory];

  @override
  final String wireName = r'ProductCategory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductCategory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.productCategoryName != null) {
      yield r'product_category_name';
      yield serializers.serialize(
        object.productCategoryName,
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
    if (object.imagePath != null) {
      yield r'image_path';
      yield serializers.serialize(
        object.imagePath,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ProductCategoryTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductCategory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductCategoryBuilder result,
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
        case r'product_category_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productCategoryName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'image_path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePath = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductCategoryTypeEnum),
          ) as ProductCategoryTypeEnum;
          result.type = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductCategory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductCategoryBuilder();
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

class ProductCategoryTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'meal')
  static const ProductCategoryTypeEnum meal = _$productCategoryTypeEnum_meal;
  @BuiltValueEnumConst(wireName: r'product')
  static const ProductCategoryTypeEnum product = _$productCategoryTypeEnum_product;
  @BuiltValueEnumConst(wireName: r'extra')
  static const ProductCategoryTypeEnum extra = _$productCategoryTypeEnum_extra;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProductCategoryTypeEnum unknownDefaultOpenApi = _$productCategoryTypeEnum_unknownDefaultOpenApi;

  static Serializer<ProductCategoryTypeEnum> get serializer => _$productCategoryTypeEnumSerializer;

  const ProductCategoryTypeEnum._(String name): super(name);

  static BuiltSet<ProductCategoryTypeEnum> get values => _$productCategoryTypeEnumValues;
  static ProductCategoryTypeEnum valueOf(String name) => _$productCategoryTypeEnumValueOf(name);
}

