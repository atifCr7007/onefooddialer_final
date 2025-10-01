// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderCreate extends OrderCreate {
  @override
  final int customerCode;
  @override
  final String customerName;
  @override
  final String phone;
  @override
  final String? emailAddress;
  @override
  final int locationCode;
  @override
  final String locationName;
  @override
  final int productCode;
  @override
  final String productName;
  @override
  final String productType;
  @override
  final int quantity;
  @override
  final double amount;
  @override
  final double? tax;
  @override
  final double? deliveryCharges;
  @override
  final Date orderDate;
  @override
  final String shipAddress;
  @override
  final String orderMenu;

  factory _$OrderCreate([void Function(OrderCreateBuilder)? updates]) =>
      (OrderCreateBuilder()..update(updates))._build();

  _$OrderCreate._(
      {required this.customerCode,
      required this.customerName,
      required this.phone,
      this.emailAddress,
      required this.locationCode,
      required this.locationName,
      required this.productCode,
      required this.productName,
      required this.productType,
      required this.quantity,
      required this.amount,
      this.tax,
      this.deliveryCharges,
      required this.orderDate,
      required this.shipAddress,
      required this.orderMenu})
      : super._();
  @override
  OrderCreate rebuild(void Function(OrderCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderCreateBuilder toBuilder() => OrderCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCreate &&
        customerCode == other.customerCode &&
        customerName == other.customerName &&
        phone == other.phone &&
        emailAddress == other.emailAddress &&
        locationCode == other.locationCode &&
        locationName == other.locationName &&
        productCode == other.productCode &&
        productName == other.productName &&
        productType == other.productType &&
        quantity == other.quantity &&
        amount == other.amount &&
        tax == other.tax &&
        deliveryCharges == other.deliveryCharges &&
        orderDate == other.orderDate &&
        shipAddress == other.shipAddress &&
        orderMenu == other.orderMenu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerCode.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, locationCode.hashCode);
    _$hash = $jc(_$hash, locationName.hashCode);
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, productType.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, shipAddress.hashCode);
    _$hash = $jc(_$hash, orderMenu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderCreate')
          ..add('customerCode', customerCode)
          ..add('customerName', customerName)
          ..add('phone', phone)
          ..add('emailAddress', emailAddress)
          ..add('locationCode', locationCode)
          ..add('locationName', locationName)
          ..add('productCode', productCode)
          ..add('productName', productName)
          ..add('productType', productType)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('tax', tax)
          ..add('deliveryCharges', deliveryCharges)
          ..add('orderDate', orderDate)
          ..add('shipAddress', shipAddress)
          ..add('orderMenu', orderMenu))
        .toString();
  }
}

class OrderCreateBuilder implements Builder<OrderCreate, OrderCreateBuilder> {
  _$OrderCreate? _$v;

  int? _customerCode;
  int? get customerCode => _$this._customerCode;
  set customerCode(int? customerCode) => _$this._customerCode = customerCode;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  int? _locationCode;
  int? get locationCode => _$this._locationCode;
  set locationCode(int? locationCode) => _$this._locationCode = locationCode;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  int? _productCode;
  int? get productCode => _$this._productCode;
  set productCode(int? productCode) => _$this._productCode = productCode;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _productType;
  String? get productType => _$this._productType;
  set productType(String? productType) => _$this._productType = productType;

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

  Date? _orderDate;
  Date? get orderDate => _$this._orderDate;
  set orderDate(Date? orderDate) => _$this._orderDate = orderDate;

  String? _shipAddress;
  String? get shipAddress => _$this._shipAddress;
  set shipAddress(String? shipAddress) => _$this._shipAddress = shipAddress;

  String? _orderMenu;
  String? get orderMenu => _$this._orderMenu;
  set orderMenu(String? orderMenu) => _$this._orderMenu = orderMenu;

  OrderCreateBuilder() {
    OrderCreate._defaults(this);
  }

  OrderCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerCode = $v.customerCode;
      _customerName = $v.customerName;
      _phone = $v.phone;
      _emailAddress = $v.emailAddress;
      _locationCode = $v.locationCode;
      _locationName = $v.locationName;
      _productCode = $v.productCode;
      _productName = $v.productName;
      _productType = $v.productType;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _tax = $v.tax;
      _deliveryCharges = $v.deliveryCharges;
      _orderDate = $v.orderDate;
      _shipAddress = $v.shipAddress;
      _orderMenu = $v.orderMenu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCreate other) {
    _$v = other as _$OrderCreate;
  }

  @override
  void update(void Function(OrderCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderCreate build() => _build();

  _$OrderCreate _build() {
    final _$result = _$v ??
        _$OrderCreate._(
          customerCode: BuiltValueNullFieldError.checkNotNull(
              customerCode, r'OrderCreate', 'customerCode'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'OrderCreate', 'customerName'),
          phone: BuiltValueNullFieldError.checkNotNull(
              phone, r'OrderCreate', 'phone'),
          emailAddress: emailAddress,
          locationCode: BuiltValueNullFieldError.checkNotNull(
              locationCode, r'OrderCreate', 'locationCode'),
          locationName: BuiltValueNullFieldError.checkNotNull(
              locationName, r'OrderCreate', 'locationName'),
          productCode: BuiltValueNullFieldError.checkNotNull(
              productCode, r'OrderCreate', 'productCode'),
          productName: BuiltValueNullFieldError.checkNotNull(
              productName, r'OrderCreate', 'productName'),
          productType: BuiltValueNullFieldError.checkNotNull(
              productType, r'OrderCreate', 'productType'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'OrderCreate', 'quantity'),
          amount: BuiltValueNullFieldError.checkNotNull(
              amount, r'OrderCreate', 'amount'),
          tax: tax,
          deliveryCharges: deliveryCharges,
          orderDate: BuiltValueNullFieldError.checkNotNull(
              orderDate, r'OrderCreate', 'orderDate'),
          shipAddress: BuiltValueNullFieldError.checkNotNull(
              shipAddress, r'OrderCreate', 'shipAddress'),
          orderMenu: BuiltValueNullFieldError.checkNotNull(
              orderMenu, r'OrderCreate', 'orderMenu'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
