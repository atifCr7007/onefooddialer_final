// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductFoodTypeEnum _$productFoodTypeEnum_veg =
    const ProductFoodTypeEnum._('veg');
const ProductFoodTypeEnum _$productFoodTypeEnum_nonVeg =
    const ProductFoodTypeEnum._('nonVeg');
const ProductFoodTypeEnum _$productFoodTypeEnum_unknownDefaultOpenApi =
    const ProductFoodTypeEnum._('unknownDefaultOpenApi');

ProductFoodTypeEnum _$productFoodTypeEnumValueOf(String name) {
  switch (name) {
    case 'veg':
      return _$productFoodTypeEnum_veg;
    case 'nonVeg':
      return _$productFoodTypeEnum_nonVeg;
    case 'unknownDefaultOpenApi':
      return _$productFoodTypeEnum_unknownDefaultOpenApi;
    default:
      return _$productFoodTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductFoodTypeEnum> _$productFoodTypeEnumValues =
    BuiltSet<ProductFoodTypeEnum>(const <ProductFoodTypeEnum>[
  _$productFoodTypeEnum_veg,
  _$productFoodTypeEnum_nonVeg,
  _$productFoodTypeEnum_unknownDefaultOpenApi,
]);

Serializer<ProductFoodTypeEnum> _$productFoodTypeEnumSerializer =
    _$ProductFoodTypeEnumSerializer();

class _$ProductFoodTypeEnumSerializer
    implements PrimitiveSerializer<ProductFoodTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'veg': 'veg',
    'nonVeg': 'non-veg',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'veg': 'veg',
    'non-veg': 'nonVeg',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProductFoodTypeEnum];
  @override
  final String wireName = 'ProductFoodTypeEnum';

  @override
  Object serialize(Serializers serializers, ProductFoodTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProductFoodTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProductFoodTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Product extends Product {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? unitPrice;
  @override
  final ProductFoodTypeEnum? foodType;
  @override
  final int? productCategoryId;
  @override
  final String? imagePath;
  @override
  final String? productSubtype;
  @override
  final int? swapWith;
  @override
  final double? swapCharges;
  @override
  final int? sequence;
  @override
  final bool? status;
  @override
  final int? kitchenId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final ProductCategory? category;
  @override
  final Kitchen? kitchen;

  factory _$Product([void Function(ProductBuilder)? updates]) =>
      (ProductBuilder()..update(updates))._build();

  _$Product._(
      {this.id,
      this.name,
      this.description,
      this.unitPrice,
      this.foodType,
      this.productCategoryId,
      this.imagePath,
      this.productSubtype,
      this.swapWith,
      this.swapCharges,
      this.sequence,
      this.status,
      this.kitchenId,
      this.createdAt,
      this.updatedAt,
      this.category,
      this.kitchen})
      : super._();
  @override
  Product rebuild(void Function(ProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        unitPrice == other.unitPrice &&
        foodType == other.foodType &&
        productCategoryId == other.productCategoryId &&
        imagePath == other.imagePath &&
        productSubtype == other.productSubtype &&
        swapWith == other.swapWith &&
        swapCharges == other.swapCharges &&
        sequence == other.sequence &&
        status == other.status &&
        kitchenId == other.kitchenId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        category == other.category &&
        kitchen == other.kitchen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, foodType.hashCode);
    _$hash = $jc(_$hash, productCategoryId.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, productSubtype.hashCode);
    _$hash = $jc(_$hash, swapWith.hashCode);
    _$hash = $jc(_$hash, swapCharges.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, kitchenId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, kitchen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Product')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('unitPrice', unitPrice)
          ..add('foodType', foodType)
          ..add('productCategoryId', productCategoryId)
          ..add('imagePath', imagePath)
          ..add('productSubtype', productSubtype)
          ..add('swapWith', swapWith)
          ..add('swapCharges', swapCharges)
          ..add('sequence', sequence)
          ..add('status', status)
          ..add('kitchenId', kitchenId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('category', category)
          ..add('kitchen', kitchen))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  ProductFoodTypeEnum? _foodType;
  ProductFoodTypeEnum? get foodType => _$this._foodType;
  set foodType(ProductFoodTypeEnum? foodType) => _$this._foodType = foodType;

  int? _productCategoryId;
  int? get productCategoryId => _$this._productCategoryId;
  set productCategoryId(int? productCategoryId) =>
      _$this._productCategoryId = productCategoryId;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _productSubtype;
  String? get productSubtype => _$this._productSubtype;
  set productSubtype(String? productSubtype) =>
      _$this._productSubtype = productSubtype;

  int? _swapWith;
  int? get swapWith => _$this._swapWith;
  set swapWith(int? swapWith) => _$this._swapWith = swapWith;

  double? _swapCharges;
  double? get swapCharges => _$this._swapCharges;
  set swapCharges(double? swapCharges) => _$this._swapCharges = swapCharges;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  int? _kitchenId;
  int? get kitchenId => _$this._kitchenId;
  set kitchenId(int? kitchenId) => _$this._kitchenId = kitchenId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ProductCategoryBuilder? _category;
  ProductCategoryBuilder get category =>
      _$this._category ??= ProductCategoryBuilder();
  set category(ProductCategoryBuilder? category) => _$this._category = category;

  KitchenBuilder? _kitchen;
  KitchenBuilder get kitchen => _$this._kitchen ??= KitchenBuilder();
  set kitchen(KitchenBuilder? kitchen) => _$this._kitchen = kitchen;

  ProductBuilder() {
    Product._defaults(this);
  }

  ProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _unitPrice = $v.unitPrice;
      _foodType = $v.foodType;
      _productCategoryId = $v.productCategoryId;
      _imagePath = $v.imagePath;
      _productSubtype = $v.productSubtype;
      _swapWith = $v.swapWith;
      _swapCharges = $v.swapCharges;
      _sequence = $v.sequence;
      _status = $v.status;
      _kitchenId = $v.kitchenId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _category = $v.category?.toBuilder();
      _kitchen = $v.kitchen?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Product build() => _build();

  _$Product _build() {
    _$Product _$result;
    try {
      _$result = _$v ??
          _$Product._(
            id: id,
            name: name,
            description: description,
            unitPrice: unitPrice,
            foodType: foodType,
            productCategoryId: productCategoryId,
            imagePath: imagePath,
            productSubtype: productSubtype,
            swapWith: swapWith,
            swapCharges: swapCharges,
            sequence: sequence,
            status: status,
            kitchenId: kitchenId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            category: _category?.build(),
            kitchen: _kitchen?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'kitchen';
        _kitchen?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
