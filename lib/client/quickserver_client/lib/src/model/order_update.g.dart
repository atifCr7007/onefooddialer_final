// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderUpdate extends OrderUpdate {
  @override
  final String? customerName;
  @override
  final String? phone;
  @override
  final String? emailAddress;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final double? tax;
  @override
  final double? deliveryCharges;
  @override
  final String? orderStatus;
  @override
  final String? deliveryStatus;
  @override
  final String? shipAddress;

  factory _$OrderUpdate([void Function(OrderUpdateBuilder)? updates]) =>
      (OrderUpdateBuilder()..update(updates))._build();

  _$OrderUpdate._({
    this.customerName,
    this.phone,
    this.emailAddress,
    this.quantity,
    this.amount,
    this.tax,
    this.deliveryCharges,
    this.orderStatus,
    this.deliveryStatus,
    this.shipAddress,
  }) : super._();
  @override
  OrderUpdate rebuild(void Function(OrderUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderUpdateBuilder toBuilder() => OrderUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderUpdate &&
        customerName == other.customerName &&
        phone == other.phone &&
        emailAddress == other.emailAddress &&
        quantity == other.quantity &&
        amount == other.amount &&
        tax == other.tax &&
        deliveryCharges == other.deliveryCharges &&
        orderStatus == other.orderStatus &&
        deliveryStatus == other.deliveryStatus &&
        shipAddress == other.shipAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, shipAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderUpdate')
          ..add('customerName', customerName)
          ..add('phone', phone)
          ..add('emailAddress', emailAddress)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('tax', tax)
          ..add('deliveryCharges', deliveryCharges)
          ..add('orderStatus', orderStatus)
          ..add('deliveryStatus', deliveryStatus)
          ..add('shipAddress', shipAddress))
        .toString();
  }
}

class OrderUpdateBuilder implements Builder<OrderUpdate, OrderUpdateBuilder> {
  _$OrderUpdate? _$v;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  double? _tax;
  double? get tax => _$this._tax;
  set tax(double? tax) => _$this._tax = tax;

  double? _deliveryCharges;
  double? get deliveryCharges => _$this._deliveryCharges;
  set deliveryCharges(double? deliveryCharges) =>
      _$this._deliveryCharges = deliveryCharges;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _deliveryStatus;
  String? get deliveryStatus => _$this._deliveryStatus;
  set deliveryStatus(String? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  String? _shipAddress;
  String? get shipAddress => _$this._shipAddress;
  set shipAddress(String? shipAddress) => _$this._shipAddress = shipAddress;

  OrderUpdateBuilder() {
    OrderUpdate._defaults(this);
  }

  OrderUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _phone = $v.phone;
      _emailAddress = $v.emailAddress;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _tax = $v.tax;
      _deliveryCharges = $v.deliveryCharges;
      _orderStatus = $v.orderStatus;
      _deliveryStatus = $v.deliveryStatus;
      _shipAddress = $v.shipAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderUpdate other) {
    _$v = other as _$OrderUpdate;
  }

  @override
  void update(void Function(OrderUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderUpdate build() => _build();

  _$OrderUpdate _build() {
    final _$result =
        _$v ??
        _$OrderUpdate._(
          customerName: customerName,
          phone: phone,
          emailAddress: emailAddress,
          quantity: quantity,
          amount: amount,
          tax: tax,
          deliveryCharges: deliveryCharges,
          orderStatus: orderStatus,
          deliveryStatus: deliveryStatus,
          shipAddress: shipAddress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
