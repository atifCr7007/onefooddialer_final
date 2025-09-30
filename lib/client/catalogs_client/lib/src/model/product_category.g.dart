// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductCategoryTypeEnum _$productCategoryTypeEnum_meal =
    const ProductCategoryTypeEnum._('meal');
const ProductCategoryTypeEnum _$productCategoryTypeEnum_product =
    const ProductCategoryTypeEnum._('product');
const ProductCategoryTypeEnum _$productCategoryTypeEnum_extra =
    const ProductCategoryTypeEnum._('extra');
const ProductCategoryTypeEnum _$productCategoryTypeEnum_unknownDefaultOpenApi =
    const ProductCategoryTypeEnum._('unknownDefaultOpenApi');

ProductCategoryTypeEnum _$productCategoryTypeEnumValueOf(String name) {
  switch (name) {
    case 'meal':
      return _$productCategoryTypeEnum_meal;
    case 'product':
      return _$productCategoryTypeEnum_product;
    case 'extra':
      return _$productCategoryTypeEnum_extra;
    case 'unknownDefaultOpenApi':
      return _$productCategoryTypeEnum_unknownDefaultOpenApi;
    default:
      return _$productCategoryTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductCategoryTypeEnum> _$productCategoryTypeEnumValues =
    BuiltSet<ProductCategoryTypeEnum>(const <ProductCategoryTypeEnum>[
      _$productCategoryTypeEnum_meal,
      _$productCategoryTypeEnum_product,
      _$productCategoryTypeEnum_extra,
      _$productCategoryTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProductCategoryTypeEnum> _$productCategoryTypeEnumSerializer =
    _$ProductCategoryTypeEnumSerializer();

class _$ProductCategoryTypeEnumSerializer
    implements PrimitiveSerializer<ProductCategoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'meal': 'meal',
    'product': 'product',
    'extra': 'extra',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'meal': 'meal',
    'product': 'product',
    'extra': 'extra',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductCategoryTypeEnum];
  @override
  final String wireName = 'ProductCategoryTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductCategoryTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductCategoryTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductCategoryTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductCategory extends ProductCategory {
  @override
  final int? id;
  @override
  final String? productCategoryName;
  @override
  final String? description;
  @override
  final String? imagePath;
  @override
  final ProductCategoryTypeEnum? type;
  @override
  final int? sequence;
  @override
  final bool? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ProductCategory([void Function(ProductCategoryBuilder)? updates]) =>
      (ProductCategoryBuilder()..update(updates))._build();

  _$ProductCategory._({
    this.id,
    this.productCategoryName,
    this.description,
    this.imagePath,
    this.type,
    this.sequence,
    this.status,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  ProductCategory rebuild(void Function(ProductCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCategoryBuilder toBuilder() => ProductCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCategory &&
        id == other.id &&
        productCategoryName == other.productCategoryName &&
        description == other.description &&
        imagePath == other.imagePath &&
        type == other.type &&
        sequence == other.sequence &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productCategoryName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductCategory')
          ..add('id', id)
          ..add('productCategoryName', productCategoryName)
          ..add('description', description)
          ..add('imagePath', imagePath)
          ..add('type', type)
          ..add('sequence', sequence)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProductCategoryBuilder
    implements Builder<ProductCategory, ProductCategoryBuilder> {
  _$ProductCategory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _productCategoryName;
  String? get productCategoryName => _$this._productCategoryName;
  set productCategoryName(String? productCategoryName) =>
      _$this._productCategoryName = productCategoryName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  ProductCategoryTypeEnum? _type;
  ProductCategoryTypeEnum? get type => _$this._type;
  set type(ProductCategoryTypeEnum? type) => _$this._type = type;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ProductCategoryBuilder() {
    ProductCategory._defaults(this);
  }

  ProductCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productCategoryName = $v.productCategoryName;
      _description = $v.description;
      _imagePath = $v.imagePath;
      _type = $v.type;
      _sequence = $v.sequence;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCategory other) {
    _$v = other as _$ProductCategory;
  }

  @override
  void update(void Function(ProductCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCategory build() => _build();

  _$ProductCategory _build() {
    final _$result =
        _$v ??
        _$ProductCategory._(
          id: id,
          productCategoryName: productCategoryName,
          description: description,
          imagePath: imagePath,
          type: type,
          sequence: sequence,
          status: status,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
