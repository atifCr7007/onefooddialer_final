// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Order extends Order {
  @override
  final int? id;
  @override
  final String? orderNo;
  @override
  final OrderCustomer? customer;
  @override
  final OrderProduct? product;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final double? tax;
  @override
  final double? deliveryCharges;
  @override
  final double? netAmount;
  @override
  final String? orderStatus;
  @override
  final String? deliveryStatus;
  @override
  final Date? orderDate;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (OrderBuilder()..update(updates))._build();

  _$Order._({
    this.id,
    this.orderNo,
    this.customer,
    this.product,
    this.quantity,
    this.amount,
    this.tax,
    this.deliveryCharges,
    this.netAmount,
    this.orderStatus,
    this.deliveryStatus,
    this.orderDate,
  }) : super._();
  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        orderNo == other.orderNo &&
        customer == other.customer &&
        product == other.product &&
        quantity == other.quantity &&
        amount == other.amount &&
        tax == other.tax &&
        deliveryCharges == other.deliveryCharges &&
        netAmount == other.netAmount &&
        orderStatus == other.orderStatus &&
        deliveryStatus == other.deliveryStatus &&
        orderDate == other.orderDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNo.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, netAmount.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Order')
          ..add('id', id)
          ..add('orderNo', orderNo)
          ..add('customer', customer)
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('tax', tax)
          ..add('deliveryCharges', deliveryCharges)
          ..add('netAmount', netAmount)
          ..add('orderStatus', orderStatus)
          ..add('deliveryStatus', deliveryStatus)
          ..add('orderDate', orderDate))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _orderNo;
  String? get orderNo => _$this._orderNo;
  set orderNo(String? orderNo) => _$this._orderNo = orderNo;

  OrderCustomerBuilder? _customer;
  OrderCustomerBuilder get customer =>
      _$this._customer ??= OrderCustomerBuilder();
  set customer(OrderCustomerBuilder? customer) => _$this._customer = customer;

  OrderProductBuilder? _product;
  OrderProductBuilder get product => _$this._product ??= OrderProductBuilder();
  set product(OrderProductBuilder? product) => _$this._product = product;

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

  double? _netAmount;
  double? get netAmount => _$this._netAmount;
  set netAmount(double? netAmount) => _$this._netAmount = netAmount;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _deliveryStatus;
  String? get deliveryStatus => _$this._deliveryStatus;
  set deliveryStatus(String? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  Date? _orderDate;
  Date? get orderDate => _$this._orderDate;
  set orderDate(Date? orderDate) => _$this._orderDate = orderDate;

  OrderBuilder() {
    Order._defaults(this);
  }

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderNo = $v.orderNo;
      _customer = $v.customer?.toBuilder();
      _product = $v.product?.toBuilder();
      _quantity = $v.quantity;
      _amount = $v.amount;
      _tax = $v.tax;
      _deliveryCharges = $v.deliveryCharges;
      _netAmount = $v.netAmount;
      _orderStatus = $v.orderStatus;
      _deliveryStatus = $v.deliveryStatus;
      _orderDate = $v.orderDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Order build() => _build();

  _$Order _build() {
    _$Order _$result;
    try {
      _$result =
          _$v ??
          _$Order._(
            id: id,
            orderNo: orderNo,
            customer: _customer?.build(),
            product: _product?.build(),
            quantity: quantity,
            amount: amount,
            tax: tax,
            deliveryCharges: deliveryCharges,
            netAmount: netAmount,
            orderStatus: orderStatus,
            deliveryStatus: deliveryStatus,
            orderDate: orderDate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();
        _$failedField = 'product';
        _product?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
