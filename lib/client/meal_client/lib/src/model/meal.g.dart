// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Meal extends Meal {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double unitPrice;
  @override
  final Map<String, dynamic>? items;
  @override
  final String? category;
  @override
  final String foodType;
  @override
  final String? productType;
  @override
  final String? productCategory;
  @override
  final int? threshold;
  @override
  final String? imagePath;
  @override
  final String? screen;
  @override
  final bool? status;
  @override
  final bool? isSwappable;
  @override
  final String? swapWith;
  @override
  final double? swapCharges;
  @override
  final String? mealPlans;
  @override
  final bool? isCustom;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Meal([void Function(MealBuilder)? updates]) =>
      (MealBuilder()..update(updates))._build();

  _$Meal._({
    this.id,
    this.companyId,
    this.unitId,
    required this.name,
    this.description,
    required this.unitPrice,
    this.items,
    this.category,
    required this.foodType,
    this.productType,
    this.productCategory,
    this.threshold,
    this.imagePath,
    this.screen,
    this.status,
    this.isSwappable,
    this.swapWith,
    this.swapCharges,
    this.mealPlans,
    this.isCustom,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Meal rebuild(void Function(MealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MealBuilder toBuilder() => MealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Meal &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        name == other.name &&
        description == other.description &&
        unitPrice == other.unitPrice &&
        items == other.items &&
        category == other.category &&
        foodType == other.foodType &&
        productType == other.productType &&
        productCategory == other.productCategory &&
        threshold == other.threshold &&
        imagePath == other.imagePath &&
        screen == other.screen &&
        status == other.status &&
        isSwappable == other.isSwappable &&
        swapWith == other.swapWith &&
        swapCharges == other.swapCharges &&
        mealPlans == other.mealPlans &&
        isCustom == other.isCustom &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, foodType.hashCode);
    _$hash = $jc(_$hash, productType.hashCode);
    _$hash = $jc(_$hash, productCategory.hashCode);
    _$hash = $jc(_$hash, threshold.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, screen.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isSwappable.hashCode);
    _$hash = $jc(_$hash, swapWith.hashCode);
    _$hash = $jc(_$hash, swapCharges.hashCode);
    _$hash = $jc(_$hash, mealPlans.hashCode);
    _$hash = $jc(_$hash, isCustom.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Meal')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('name', name)
          ..add('description', description)
          ..add('unitPrice', unitPrice)
          ..add('items', items)
          ..add('category', category)
          ..add('foodType', foodType)
          ..add('productType', productType)
          ..add('productCategory', productCategory)
          ..add('threshold', threshold)
          ..add('imagePath', imagePath)
          ..add('screen', screen)
          ..add('status', status)
          ..add('isSwappable', isSwappable)
          ..add('swapWith', swapWith)
          ..add('swapCharges', swapCharges)
          ..add('mealPlans', mealPlans)
          ..add('isCustom', isCustom)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class MealBuilder implements Builder<Meal, MealBuilder> {
  _$Meal? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  Map<String, dynamic>? _items;
  Map<String, dynamic>? get items => _$this._items;
  set items(Map<String, dynamic>? items) => _$this._items = items;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _foodType;
  String? get foodType => _$this._foodType;
  set foodType(String? foodType) => _$this._foodType = foodType;

  String? _productType;
  String? get productType => _$this._productType;
  set productType(String? productType) => _$this._productType = productType;

  String? _productCategory;
  String? get productCategory => _$this._productCategory;
  set productCategory(String? productCategory) =>
      _$this._productCategory = productCategory;

  int? _threshold;
  int? get threshold => _$this._threshold;
  set threshold(int? threshold) => _$this._threshold = threshold;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _screen;
  String? get screen => _$this._screen;
  set screen(String? screen) => _$this._screen = screen;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _isSwappable;
  bool? get isSwappable => _$this._isSwappable;
  set isSwappable(bool? isSwappable) => _$this._isSwappable = isSwappable;

  String? _swapWith;
  String? get swapWith => _$this._swapWith;
  set swapWith(String? swapWith) => _$this._swapWith = swapWith;

  double? _swapCharges;
  double? get swapCharges => _$this._swapCharges;
  set swapCharges(double? swapCharges) => _$this._swapCharges = swapCharges;

  String? _mealPlans;
  String? get mealPlans => _$this._mealPlans;
  set mealPlans(String? mealPlans) => _$this._mealPlans = mealPlans;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  MealBuilder() {
    Meal._defaults(this);
  }

  MealBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _name = $v.name;
      _description = $v.description;
      _unitPrice = $v.unitPrice;
      _items = $v.items;
      _category = $v.category;
      _foodType = $v.foodType;
      _productType = $v.productType;
      _productCategory = $v.productCategory;
      _threshold = $v.threshold;
      _imagePath = $v.imagePath;
      _screen = $v.screen;
      _status = $v.status;
      _isSwappable = $v.isSwappable;
      _swapWith = $v.swapWith;
      _swapCharges = $v.swapCharges;
      _mealPlans = $v.mealPlans;
      _isCustom = $v.isCustom;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meal other) {
    _$v = other as _$Meal;
  }

  @override
  void update(void Function(MealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Meal build() => _build();

  _$Meal _build() {
    final _$result =
        _$v ??
        _$Meal._(
          id: id,
          companyId: companyId,
          unitId: unitId,
          name: BuiltValueNullFieldError.checkNotNull(name, r'Meal', 'name'),
          description: description,
          unitPrice: BuiltValueNullFieldError.checkNotNull(
            unitPrice,
            r'Meal',
            'unitPrice',
          ),
          items: items,
          category: category,
          foodType: BuiltValueNullFieldError.checkNotNull(
            foodType,
            r'Meal',
            'foodType',
          ),
          productType: productType,
          productCategory: productCategory,
          threshold: threshold,
          imagePath: imagePath,
          screen: screen,
          status: status,
          isSwappable: isSwappable,
          swapWith: swapWith,
          swapCharges: swapCharges,
          mealPlans: mealPlans,
          isCustom: isCustom,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
