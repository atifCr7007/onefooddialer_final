// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProductInputFoodTypeEnum _$productInputFoodTypeEnum_veg =
    const ProductInputFoodTypeEnum._('veg');
const ProductInputFoodTypeEnum _$productInputFoodTypeEnum_nonVeg =
    const ProductInputFoodTypeEnum._('nonVeg');
const ProductInputFoodTypeEnum
_$productInputFoodTypeEnum_unknownDefaultOpenApi =
    const ProductInputFoodTypeEnum._('unknownDefaultOpenApi');

ProductInputFoodTypeEnum _$productInputFoodTypeEnumValueOf(String name) {
  switch (name) {
    case 'veg':
      return _$productInputFoodTypeEnum_veg;
    case 'nonVeg':
      return _$productInputFoodTypeEnum_nonVeg;
    case 'unknownDefaultOpenApi':
      return _$productInputFoodTypeEnum_unknownDefaultOpenApi;
    default:
      return _$productInputFoodTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProductInputFoodTypeEnum> _$productInputFoodTypeEnumValues =
    BuiltSet<ProductInputFoodTypeEnum>(const <ProductInputFoodTypeEnum>[
      _$productInputFoodTypeEnum_veg,
      _$productInputFoodTypeEnum_nonVeg,
      _$productInputFoodTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<ProductInputFoodTypeEnum> _$productInputFoodTypeEnumSerializer =
    _$ProductInputFoodTypeEnumSerializer();

class _$ProductInputFoodTypeEnumSerializer
    implements PrimitiveSerializer<ProductInputFoodTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ProductInputFoodTypeEnum];
  @override
  final String wireName = 'ProductInputFoodTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProductInputFoodTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProductInputFoodTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProductInputFoodTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProductInput extends ProductInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final double unitPrice;
  @override
  final ProductInputFoodTypeEnum foodType;
  @override
  final int productCategoryId;
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
  final int kitchenId;

  factory _$ProductInput([void Function(ProductInputBuilder)? updates]) =>
      (ProductInputBuilder()..update(updates))._build();

  _$ProductInput._({
    required this.name,
    this.description,
    required this.unitPrice,
    required this.foodType,
    required this.productCategoryId,
    this.imagePath,
    this.productSubtype,
    this.swapWith,
    this.swapCharges,
    this.sequence,
    this.status,
    required this.kitchenId,
  }) : super._();
  @override
  ProductInput rebuild(void Function(ProductInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductInputBuilder toBuilder() => ProductInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductInput &&
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
        kitchenId == other.kitchenId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductInput')
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
          ..add('kitchenId', kitchenId))
        .toString();
  }
}

class ProductInputBuilder
    implements Builder<ProductInput, ProductInputBuilder> {
  _$ProductInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  ProductInputFoodTypeEnum? _foodType;
  ProductInputFoodTypeEnum? get foodType => _$this._foodType;
  set foodType(ProductInputFoodTypeEnum? foodType) =>
      _$this._foodType = foodType;

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

  ProductInputBuilder() {
    ProductInput._defaults(this);
  }

  ProductInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductInput other) {
    _$v = other as _$ProductInput;
  }

  @override
  void update(void Function(ProductInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductInput build() => _build();

  _$ProductInput _build() {
    final _$result =
        _$v ??
        _$ProductInput._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ProductInput',
            'name',
          ),
          description: description,
          unitPrice: BuiltValueNullFieldError.checkNotNull(
            unitPrice,
            r'ProductInput',
            'unitPrice',
          ),
          foodType: BuiltValueNullFieldError.checkNotNull(
            foodType,
            r'ProductInput',
            'foodType',
          ),
          productCategoryId: BuiltValueNullFieldError.checkNotNull(
            productCategoryId,
            r'ProductInput',
            'productCategoryId',
          ),
          imagePath: imagePath,
          productSubtype: productSubtype,
          swapWith: swapWith,
          swapCharges: swapCharges,
          sequence: sequence,
          status: status,
          kitchenId: BuiltValueNullFieldError.checkNotNull(
            kitchenId,
            r'ProductInput',
            'kitchenId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
