// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_preparation_resource.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenPreparationResource extends KitchenPreparationResource {
  @override
  final int? id;
  @override
  final int? productId;
  @override
  final int? kitchenId;
  @override
  final int? totalOrder;
  @override
  final int? prepared;
  @override
  final int? remaining;
  @override
  final double? preparationPercentage;
  @override
  final bool? isFullyPrepared;
  @override
  final Date? date;
  @override
  final String? menu;
  @override
  final KitchenPreparationResourceProduct? product;
  @override
  final KitchenKitchenMaster? kitchenMaster;

  factory _$KitchenPreparationResource(
          [void Function(KitchenPreparationResourceBuilder)? updates]) =>
      (KitchenPreparationResourceBuilder()..update(updates))._build();

  _$KitchenPreparationResource._(
      {this.id,
      this.productId,
      this.kitchenId,
      this.totalOrder,
      this.prepared,
      this.remaining,
      this.preparationPercentage,
      this.isFullyPrepared,
      this.date,
      this.menu,
      this.product,
      this.kitchenMaster})
      : super._();
  @override
  KitchenPreparationResource rebuild(
          void Function(KitchenPreparationResourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenPreparationResourceBuilder toBuilder() =>
      KitchenPreparationResourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenPreparationResource &&
        id == other.id &&
        productId == other.productId &&
        kitchenId == other.kitchenId &&
        totalOrder == other.totalOrder &&
        prepared == other.prepared &&
        remaining == other.remaining &&
        preparationPercentage == other.preparationPercentage &&
        isFullyPrepared == other.isFullyPrepared &&
        date == other.date &&
        menu == other.menu &&
        product == other.product &&
        kitchenMaster == other.kitchenMaster;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, kitchenId.hashCode);
    _$hash = $jc(_$hash, totalOrder.hashCode);
    _$hash = $jc(_$hash, prepared.hashCode);
    _$hash = $jc(_$hash, remaining.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, kitchenMaster.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenPreparationResource')
          ..add('id', id)
          ..add('productId', productId)
          ..add('kitchenId', kitchenId)
          ..add('totalOrder', totalOrder)
          ..add('prepared', prepared)
          ..add('remaining', remaining)
          ..add('preparationPercentage', preparationPercentage)
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('date', date)
          ..add('menu', menu)
          ..add('product', product)
          ..add('kitchenMaster', kitchenMaster))
        .toString();
  }
}

class KitchenPreparationResourceBuilder
    implements
        Builder<KitchenPreparationResource, KitchenPreparationResourceBuilder> {
  _$KitchenPreparationResource? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  int? _kitchenId;
  int? get kitchenId => _$this._kitchenId;
  set kitchenId(int? kitchenId) => _$this._kitchenId = kitchenId;

  int? _totalOrder;
  int? get totalOrder => _$this._totalOrder;
  set totalOrder(int? totalOrder) => _$this._totalOrder = totalOrder;

  int? _prepared;
  int? get prepared => _$this._prepared;
  set prepared(int? prepared) => _$this._prepared = prepared;

  int? _remaining;
  int? get remaining => _$this._remaining;
  set remaining(int? remaining) => _$this._remaining = remaining;

  double? _preparationPercentage;
  double? get preparationPercentage => _$this._preparationPercentage;
  set preparationPercentage(double? preparationPercentage) =>
      _$this._preparationPercentage = preparationPercentage;

  bool? _isFullyPrepared;
  bool? get isFullyPrepared => _$this._isFullyPrepared;
  set isFullyPrepared(bool? isFullyPrepared) =>
      _$this._isFullyPrepared = isFullyPrepared;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

  KitchenPreparationResourceProductBuilder? _product;
  KitchenPreparationResourceProductBuilder get product =>
      _$this._product ??= KitchenPreparationResourceProductBuilder();
  set product(KitchenPreparationResourceProductBuilder? product) =>
      _$this._product = product;

  KitchenKitchenMasterBuilder? _kitchenMaster;
  KitchenKitchenMasterBuilder get kitchenMaster =>
      _$this._kitchenMaster ??= KitchenKitchenMasterBuilder();
  set kitchenMaster(KitchenKitchenMasterBuilder? kitchenMaster) =>
      _$this._kitchenMaster = kitchenMaster;

  KitchenPreparationResourceBuilder() {
    KitchenPreparationResource._defaults(this);
  }

  KitchenPreparationResourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productId = $v.productId;
      _kitchenId = $v.kitchenId;
      _totalOrder = $v.totalOrder;
      _prepared = $v.prepared;
      _remaining = $v.remaining;
      _preparationPercentage = $v.preparationPercentage;
      _isFullyPrepared = $v.isFullyPrepared;
      _date = $v.date;
      _menu = $v.menu;
      _product = $v.product?.toBuilder();
      _kitchenMaster = $v.kitchenMaster?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenPreparationResource other) {
    _$v = other as _$KitchenPreparationResource;
  }

  @override
  void update(void Function(KitchenPreparationResourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenPreparationResource build() => _build();

  _$KitchenPreparationResource _build() {
    _$KitchenPreparationResource _$result;
    try {
      _$result = _$v ??
          _$KitchenPreparationResource._(
            id: id,
            productId: productId,
            kitchenId: kitchenId,
            totalOrder: totalOrder,
            prepared: prepared,
            remaining: remaining,
            preparationPercentage: preparationPercentage,
            isFullyPrepared: isFullyPrepared,
            date: date,
            menu: menu,
            product: _product?.build(),
            kitchenMaster: _kitchenMaster?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        _product?.build();
        _$failedField = 'kitchenMaster';
        _kitchenMaster?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'KitchenPreparationResource', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
