// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backorder_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackorderUpdate extends BackorderUpdate {
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
  final int? productId;
  @override
  final String? productName;
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

  factory _$BackorderUpdate([void Function(BackorderUpdateBuilder)? updates]) =>
      (BackorderUpdateBuilder()..update(updates))._build();

  _$BackorderUpdate._({
    this.companyId,
    this.unitId,
    this.orderId,
    this.orderNo,
    this.customerId,
    this.productId,
    this.productName,
    this.quantity,
    this.amount,
    this.orderDate,
    this.orderMenu,
    this.reason,
    this.status,
  }) : super._();
  @override
  BackorderUpdate rebuild(void Function(BackorderUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackorderUpdateBuilder toBuilder() => BackorderUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackorderUpdate &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        orderId == other.orderId &&
        orderNo == other.orderNo &&
        customerId == other.customerId &&
        productId == other.productId &&
        productName == other.productName &&
        quantity == other.quantity &&
        amount == other.amount &&
        orderDate == other.orderDate &&
        orderMenu == other.orderMenu &&
        reason == other.reason &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderNo.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, orderMenu.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackorderUpdate')
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('orderId', orderId)
          ..add('orderNo', orderNo)
          ..add('customerId', customerId)
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('orderDate', orderDate)
          ..add('orderMenu', orderMenu)
          ..add('reason', reason)
          ..add('status', status))
        .toString();
  }
}

class BackorderUpdateBuilder
    implements Builder<BackorderUpdate, BackorderUpdateBuilder> {
  _$BackorderUpdate? _$v;

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

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

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

  BackorderUpdateBuilder() {
    BackorderUpdate._defaults(this);
  }

  BackorderUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _orderId = $v.orderId;
      _orderNo = $v.orderNo;
      _customerId = $v.customerId;
      _productId = $v.productId;
      _productName = $v.productName;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _orderDate = $v.orderDate;
      _orderMenu = $v.orderMenu;
      _reason = $v.reason;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackorderUpdate other) {
    _$v = other as _$BackorderUpdate;
  }

  @override
  void update(void Function(BackorderUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackorderUpdate build() => _build();

  _$BackorderUpdate _build() {
    final _$result =
        _$v ??
        _$BackorderUpdate._(
          companyId: companyId,
          unitId: unitId,
          orderId: orderId,
          orderNo: orderNo,
          customerId: customerId,
          productId: productId,
          productName: productName,
          quantity: quantity,
          amount: amount,
          orderDate: orderDate,
          orderMenu: orderMenu,
          reason: reason,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
