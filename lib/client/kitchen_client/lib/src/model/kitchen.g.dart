// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Kitchen extends Kitchen {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final int? productId;
  @override
  final int? kitchenId;
  @override
  final int? totalOrder;
  @override
  final int? prepared;
  @override
  final int? remainingOrders;
  @override
  final Date? date;
  @override
  final String? orderMenu;
  @override
  final bool? status;
  @override
  final KitchenProduct? product;
  @override
  final KitchenKitchenMaster? kitchenMaster;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Kitchen([void Function(KitchenBuilder)? updates]) =>
      (KitchenBuilder()..update(updates))._build();

  _$Kitchen._(
      {this.id,
      this.companyId,
      this.unitId,
      this.productId,
      this.kitchenId,
      this.totalOrder,
      this.prepared,
      this.remainingOrders,
      this.date,
      this.orderMenu,
      this.status,
      this.product,
      this.kitchenMaster,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  Kitchen rebuild(void Function(KitchenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenBuilder toBuilder() => KitchenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Kitchen &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        productId == other.productId &&
        kitchenId == other.kitchenId &&
        totalOrder == other.totalOrder &&
        prepared == other.prepared &&
        remainingOrders == other.remainingOrders &&
        date == other.date &&
        orderMenu == other.orderMenu &&
        status == other.status &&
        product == other.product &&
        kitchenMaster == other.kitchenMaster &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, kitchenId.hashCode);
    _$hash = $jc(_$hash, totalOrder.hashCode);
    _$hash = $jc(_$hash, prepared.hashCode);
    _$hash = $jc(_$hash, remainingOrders.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, orderMenu.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, kitchenMaster.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Kitchen')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('productId', productId)
          ..add('kitchenId', kitchenId)
          ..add('totalOrder', totalOrder)
          ..add('prepared', prepared)
          ..add('remainingOrders', remainingOrders)
          ..add('date', date)
          ..add('orderMenu', orderMenu)
          ..add('status', status)
          ..add('product', product)
          ..add('kitchenMaster', kitchenMaster)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KitchenBuilder implements Builder<Kitchen, KitchenBuilder> {
  _$Kitchen? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

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

  int? _remainingOrders;
  int? get remainingOrders => _$this._remainingOrders;
  set remainingOrders(int? remainingOrders) =>
      _$this._remainingOrders = remainingOrders;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _orderMenu;
  String? get orderMenu => _$this._orderMenu;
  set orderMenu(String? orderMenu) => _$this._orderMenu = orderMenu;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  KitchenProductBuilder? _product;
  KitchenProductBuilder get product =>
      _$this._product ??= KitchenProductBuilder();
  set product(KitchenProductBuilder? product) => _$this._product = product;

  KitchenKitchenMasterBuilder? _kitchenMaster;
  KitchenKitchenMasterBuilder get kitchenMaster =>
      _$this._kitchenMaster ??= KitchenKitchenMasterBuilder();
  set kitchenMaster(KitchenKitchenMasterBuilder? kitchenMaster) =>
      _$this._kitchenMaster = kitchenMaster;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KitchenBuilder() {
    Kitchen._defaults(this);
  }

  KitchenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _productId = $v.productId;
      _kitchenId = $v.kitchenId;
      _totalOrder = $v.totalOrder;
      _prepared = $v.prepared;
      _remainingOrders = $v.remainingOrders;
      _date = $v.date;
      _orderMenu = $v.orderMenu;
      _status = $v.status;
      _product = $v.product?.toBuilder();
      _kitchenMaster = $v.kitchenMaster?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Kitchen other) {
    _$v = other as _$Kitchen;
  }

  @override
  void update(void Function(KitchenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Kitchen build() => _build();

  _$Kitchen _build() {
    _$Kitchen _$result;
    try {
      _$result = _$v ??
          _$Kitchen._(
            id: id,
            companyId: companyId,
            unitId: unitId,
            productId: productId,
            kitchenId: kitchenId,
            totalOrder: totalOrder,
            prepared: prepared,
            remainingOrders: remainingOrders,
            date: date,
            orderMenu: orderMenu,
            status: status,
            product: _product?.build(),
            kitchenMaster: _kitchenMaster?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
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
            r'Kitchen', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
