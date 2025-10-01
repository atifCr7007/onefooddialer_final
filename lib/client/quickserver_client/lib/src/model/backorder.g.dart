// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backorder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Backorder extends Backorder {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final int? orderId;
  @override
  final String? orderNo;
  @override
  final int? customerId;
  @override
  final OrderCustomer? customer;
  @override
  final int? productId;
  @override
  final String? productName;
  @override
  final BackorderProduct? product;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final Date? orderDate;
  @override
  final String? orderMenu;
  @override
  final String? reason;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Backorder([void Function(BackorderBuilder)? updates]) =>
      (BackorderBuilder()..update(updates))._build();

  _$Backorder._({
    this.id,
    this.companyId,
    this.unitId,
    this.orderId,
    this.orderNo,
    this.customerId,
    this.customer,
    this.productId,
    this.productName,
    this.product,
    this.quantity,
    this.amount,
    this.orderDate,
    this.orderMenu,
    this.reason,
    this.status,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Backorder rebuild(void Function(BackorderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackorderBuilder toBuilder() => BackorderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Backorder &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        orderId == other.orderId &&
        orderNo == other.orderNo &&
        customerId == other.customerId &&
        customer == other.customer &&
        productId == other.productId &&
        productName == other.productName &&
        product == other.product &&
        quantity == other.quantity &&
        amount == other.amount &&
        orderDate == other.orderDate &&
        orderMenu == other.orderMenu &&
        reason == other.reason &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderNo.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, orderMenu.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Backorder')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('orderId', orderId)
          ..add('orderNo', orderNo)
          ..add('customerId', customerId)
          ..add('customer', customer)
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('orderDate', orderDate)
          ..add('orderMenu', orderMenu)
          ..add('reason', reason)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class BackorderBuilder implements Builder<Backorder, BackorderBuilder> {
  _$Backorder? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  String? _orderNo;
  String? get orderNo => _$this._orderNo;
  set orderNo(String? orderNo) => _$this._orderNo = orderNo;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  OrderCustomerBuilder? _customer;
  OrderCustomerBuilder get customer =>
      _$this._customer ??= OrderCustomerBuilder();
  set customer(OrderCustomerBuilder? customer) => _$this._customer = customer;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  BackorderProductBuilder? _product;
  BackorderProductBuilder get product =>
      _$this._product ??= BackorderProductBuilder();
  set product(BackorderProductBuilder? product) => _$this._product = product;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  Date? _orderDate;
  Date? get orderDate => _$this._orderDate;
  set orderDate(Date? orderDate) => _$this._orderDate = orderDate;

  String? _orderMenu;
  String? get orderMenu => _$this._orderMenu;
  set orderMenu(String? orderMenu) => _$this._orderMenu = orderMenu;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  BackorderBuilder() {
    Backorder._defaults(this);
  }

  BackorderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _orderId = $v.orderId;
      _orderNo = $v.orderNo;
      _customerId = $v.customerId;
      _customer = $v.customer?.toBuilder();
      _productId = $v.productId;
      _productName = $v.productName;
      _product = $v.product?.toBuilder();
      _quantity = $v.quantity;
      _amount = $v.amount;
      _orderDate = $v.orderDate;
      _orderMenu = $v.orderMenu;
      _reason = $v.reason;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Backorder other) {
    _$v = other as _$Backorder;
  }

  @override
  void update(void Function(BackorderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Backorder build() => _build();

  _$Backorder _build() {
    _$Backorder _$result;
    try {
      _$result =
          _$v ??
          _$Backorder._(
            id: id,
            companyId: companyId,
            unitId: unitId,
            orderId: orderId,
            orderNo: orderNo,
            customerId: customerId,
            customer: _customer?.build(),
            productId: productId,
            productName: productName,
            product: _product?.build(),
            quantity: quantity,
            amount: amount,
            orderDate: orderDate,
            orderMenu: orderMenu,
            reason: reason,
            status: status,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Backorder',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
