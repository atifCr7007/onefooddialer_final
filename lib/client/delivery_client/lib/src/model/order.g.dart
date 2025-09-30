// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderDeliveryStatusEnum _$orderDeliveryStatusEnum_pending =
    const OrderDeliveryStatusEnum._('pending');
const OrderDeliveryStatusEnum _$orderDeliveryStatusEnum_dispatched =
    const OrderDeliveryStatusEnum._('dispatched');
const OrderDeliveryStatusEnum _$orderDeliveryStatusEnum_delivered =
    const OrderDeliveryStatusEnum._('delivered');
const OrderDeliveryStatusEnum _$orderDeliveryStatusEnum_failed =
    const OrderDeliveryStatusEnum._('failed');
const OrderDeliveryStatusEnum _$orderDeliveryStatusEnum_unknownDefaultOpenApi =
    const OrderDeliveryStatusEnum._('unknownDefaultOpenApi');

OrderDeliveryStatusEnum _$orderDeliveryStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$orderDeliveryStatusEnum_pending;
    case 'dispatched':
      return _$orderDeliveryStatusEnum_dispatched;
    case 'delivered':
      return _$orderDeliveryStatusEnum_delivered;
    case 'failed':
      return _$orderDeliveryStatusEnum_failed;
    case 'unknownDefaultOpenApi':
      return _$orderDeliveryStatusEnum_unknownDefaultOpenApi;
    default:
      return _$orderDeliveryStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderDeliveryStatusEnum> _$orderDeliveryStatusEnumValues =
    BuiltSet<OrderDeliveryStatusEnum>(const <OrderDeliveryStatusEnum>[
      _$orderDeliveryStatusEnum_pending,
      _$orderDeliveryStatusEnum_dispatched,
      _$orderDeliveryStatusEnum_delivered,
      _$orderDeliveryStatusEnum_failed,
      _$orderDeliveryStatusEnum_unknownDefaultOpenApi,
    ]);

const OrderOrderStatusEnum _$orderOrderStatusEnum_new_ =
    const OrderOrderStatusEnum._('new_');
const OrderOrderStatusEnum _$orderOrderStatusEnum_processing =
    const OrderOrderStatusEnum._('processing');
const OrderOrderStatusEnum _$orderOrderStatusEnum_complete =
    const OrderOrderStatusEnum._('complete');
const OrderOrderStatusEnum _$orderOrderStatusEnum_cancelled =
    const OrderOrderStatusEnum._('cancelled');
const OrderOrderStatusEnum _$orderOrderStatusEnum_unknownDefaultOpenApi =
    const OrderOrderStatusEnum._('unknownDefaultOpenApi');

OrderOrderStatusEnum _$orderOrderStatusEnumValueOf(String name) {
  switch (name) {
    case 'new_':
      return _$orderOrderStatusEnum_new_;
    case 'processing':
      return _$orderOrderStatusEnum_processing;
    case 'complete':
      return _$orderOrderStatusEnum_complete;
    case 'cancelled':
      return _$orderOrderStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$orderOrderStatusEnum_unknownDefaultOpenApi;
    default:
      return _$orderOrderStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderOrderStatusEnum> _$orderOrderStatusEnumValues =
    BuiltSet<OrderOrderStatusEnum>(const <OrderOrderStatusEnum>[
      _$orderOrderStatusEnum_new_,
      _$orderOrderStatusEnum_processing,
      _$orderOrderStatusEnum_complete,
      _$orderOrderStatusEnum_cancelled,
      _$orderOrderStatusEnum_unknownDefaultOpenApi,
    ]);

const OrderOrderMenuEnum _$orderOrderMenuEnum_lunch =
    const OrderOrderMenuEnum._('lunch');
const OrderOrderMenuEnum _$orderOrderMenuEnum_dinner =
    const OrderOrderMenuEnum._('dinner');
const OrderOrderMenuEnum _$orderOrderMenuEnum_unknownDefaultOpenApi =
    const OrderOrderMenuEnum._('unknownDefaultOpenApi');

OrderOrderMenuEnum _$orderOrderMenuEnumValueOf(String name) {
  switch (name) {
    case 'lunch':
      return _$orderOrderMenuEnum_lunch;
    case 'dinner':
      return _$orderOrderMenuEnum_dinner;
    case 'unknownDefaultOpenApi':
      return _$orderOrderMenuEnum_unknownDefaultOpenApi;
    default:
      return _$orderOrderMenuEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderOrderMenuEnum> _$orderOrderMenuEnumValues =
    BuiltSet<OrderOrderMenuEnum>(const <OrderOrderMenuEnum>[
      _$orderOrderMenuEnum_lunch,
      _$orderOrderMenuEnum_dinner,
      _$orderOrderMenuEnum_unknownDefaultOpenApi,
    ]);

const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_delivery =
    const OrderDeliveryTypeEnum._('delivery');
const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_pickup =
    const OrderDeliveryTypeEnum._('pickup');
const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_unknownDefaultOpenApi =
    const OrderDeliveryTypeEnum._('unknownDefaultOpenApi');

OrderDeliveryTypeEnum _$orderDeliveryTypeEnumValueOf(String name) {
  switch (name) {
    case 'delivery':
      return _$orderDeliveryTypeEnum_delivery;
    case 'pickup':
      return _$orderDeliveryTypeEnum_pickup;
    case 'unknownDefaultOpenApi':
      return _$orderDeliveryTypeEnum_unknownDefaultOpenApi;
    default:
      return _$orderDeliveryTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderDeliveryTypeEnum> _$orderDeliveryTypeEnumValues =
    BuiltSet<OrderDeliveryTypeEnum>(const <OrderDeliveryTypeEnum>[
      _$orderDeliveryTypeEnum_delivery,
      _$orderDeliveryTypeEnum_pickup,
      _$orderDeliveryTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<OrderDeliveryStatusEnum> _$orderDeliveryStatusEnumSerializer =
    _$OrderDeliveryStatusEnumSerializer();
Serializer<OrderOrderStatusEnum> _$orderOrderStatusEnumSerializer =
    _$OrderOrderStatusEnumSerializer();
Serializer<OrderOrderMenuEnum> _$orderOrderMenuEnumSerializer =
    _$OrderOrderMenuEnumSerializer();
Serializer<OrderDeliveryTypeEnum> _$orderDeliveryTypeEnumSerializer =
    _$OrderDeliveryTypeEnumSerializer();

class _$OrderDeliveryStatusEnumSerializer
    implements PrimitiveSerializer<OrderDeliveryStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'dispatched': 'Dispatched',
    'delivered': 'Delivered',
    'failed': 'Failed',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Dispatched': 'dispatched',
    'Delivered': 'delivered',
    'Failed': 'failed',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDeliveryStatusEnum];
  @override
  final String wireName = 'OrderDeliveryStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderDeliveryStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderDeliveryStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderDeliveryStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderOrderStatusEnumSerializer
    implements PrimitiveSerializer<OrderOrderStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'new_': 'New',
    'processing': 'Processing',
    'complete': 'Complete',
    'cancelled': 'Cancelled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'New': 'new_',
    'Processing': 'processing',
    'Complete': 'complete',
    'Cancelled': 'cancelled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderOrderStatusEnum];
  @override
  final String wireName = 'OrderOrderStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderOrderStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderOrderStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderOrderStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderOrderMenuEnumSerializer
    implements PrimitiveSerializer<OrderOrderMenuEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'lunch': 'lunch',
    'dinner': 'dinner',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'lunch': 'lunch',
    'dinner': 'dinner',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderOrderMenuEnum];
  @override
  final String wireName = 'OrderOrderMenuEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderOrderMenuEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderOrderMenuEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderOrderMenuEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderDeliveryTypeEnumSerializer
    implements PrimitiveSerializer<OrderDeliveryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivery': 'delivery',
    'pickup': 'pickup',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delivery': 'delivery',
    'pickup': 'pickup',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDeliveryTypeEnum];
  @override
  final String wireName = 'OrderDeliveryTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderDeliveryTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderDeliveryTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderDeliveryTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Order extends Order {
  @override
  final int? id;
  @override
  final String? orderNo;
  @override
  final int? customerCode;
  @override
  final String? customerName;
  @override
  final String? customerPhone;
  @override
  final String? shipAddress;
  @override
  final Date? orderDate;
  @override
  final OrderDeliveryStatusEnum? deliveryStatus;
  @override
  final OrderOrderStatusEnum? orderStatus;
  @override
  final int? deliveryPerson;
  @override
  final int? locationCode;
  @override
  final DeliveryLocation? location;
  @override
  final double? amount;
  @override
  final double? tax;
  @override
  final double? deliveryCharges;
  @override
  final double? appliedDiscount;
  @override
  final double? total;
  @override
  final String? paymentMode;
  @override
  final bool? amountPaid;
  @override
  final String? fkKitchenCode;
  @override
  final OrderOrderMenuEnum? orderMenu;
  @override
  final String? deliveryTime;
  @override
  final String? deliveryEndTime;
  @override
  final OrderDeliveryTypeEnum? deliveryType;
  @override
  final String? tpDeliveryOrderId;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (OrderBuilder()..update(updates))._build();

  _$Order._({
    this.id,
    this.orderNo,
    this.customerCode,
    this.customerName,
    this.customerPhone,
    this.shipAddress,
    this.orderDate,
    this.deliveryStatus,
    this.orderStatus,
    this.deliveryPerson,
    this.locationCode,
    this.location,
    this.amount,
    this.tax,
    this.deliveryCharges,
    this.appliedDiscount,
    this.total,
    this.paymentMode,
    this.amountPaid,
    this.fkKitchenCode,
    this.orderMenu,
    this.deliveryTime,
    this.deliveryEndTime,
    this.deliveryType,
    this.tpDeliveryOrderId,
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
        customerCode == other.customerCode &&
        customerName == other.customerName &&
        customerPhone == other.customerPhone &&
        shipAddress == other.shipAddress &&
        orderDate == other.orderDate &&
        deliveryStatus == other.deliveryStatus &&
        orderStatus == other.orderStatus &&
        deliveryPerson == other.deliveryPerson &&
        locationCode == other.locationCode &&
        location == other.location &&
        amount == other.amount &&
        tax == other.tax &&
        deliveryCharges == other.deliveryCharges &&
        appliedDiscount == other.appliedDiscount &&
        total == other.total &&
        paymentMode == other.paymentMode &&
        amountPaid == other.amountPaid &&
        fkKitchenCode == other.fkKitchenCode &&
        orderMenu == other.orderMenu &&
        deliveryTime == other.deliveryTime &&
        deliveryEndTime == other.deliveryEndTime &&
        deliveryType == other.deliveryType &&
        tpDeliveryOrderId == other.tpDeliveryOrderId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNo.hashCode);
    _$hash = $jc(_$hash, customerCode.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, shipAddress.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, deliveryStatus.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, deliveryPerson.hashCode);
    _$hash = $jc(_$hash, locationCode.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, appliedDiscount.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, paymentMode.hashCode);
    _$hash = $jc(_$hash, amountPaid.hashCode);
    _$hash = $jc(_$hash, fkKitchenCode.hashCode);
    _$hash = $jc(_$hash, orderMenu.hashCode);
    _$hash = $jc(_$hash, deliveryTime.hashCode);
    _$hash = $jc(_$hash, deliveryEndTime.hashCode);
    _$hash = $jc(_$hash, deliveryType.hashCode);
    _$hash = $jc(_$hash, tpDeliveryOrderId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Order')
          ..add('id', id)
          ..add('orderNo', orderNo)
          ..add('customerCode', customerCode)
          ..add('customerName', customerName)
          ..add('customerPhone', customerPhone)
          ..add('shipAddress', shipAddress)
          ..add('orderDate', orderDate)
          ..add('deliveryStatus', deliveryStatus)
          ..add('orderStatus', orderStatus)
          ..add('deliveryPerson', deliveryPerson)
          ..add('locationCode', locationCode)
          ..add('location', location)
          ..add('amount', amount)
          ..add('tax', tax)
          ..add('deliveryCharges', deliveryCharges)
          ..add('appliedDiscount', appliedDiscount)
          ..add('total', total)
          ..add('paymentMode', paymentMode)
          ..add('amountPaid', amountPaid)
          ..add('fkKitchenCode', fkKitchenCode)
          ..add('orderMenu', orderMenu)
          ..add('deliveryTime', deliveryTime)
          ..add('deliveryEndTime', deliveryEndTime)
          ..add('deliveryType', deliveryType)
          ..add('tpDeliveryOrderId', tpDeliveryOrderId))
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

  int? _customerCode;
  int? get customerCode => _$this._customerCode;
  set customerCode(int? customerCode) => _$this._customerCode = customerCode;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  String? _shipAddress;
  String? get shipAddress => _$this._shipAddress;
  set shipAddress(String? shipAddress) => _$this._shipAddress = shipAddress;

  Date? _orderDate;
  Date? get orderDate => _$this._orderDate;
  set orderDate(Date? orderDate) => _$this._orderDate = orderDate;

  OrderDeliveryStatusEnum? _deliveryStatus;
  OrderDeliveryStatusEnum? get deliveryStatus => _$this._deliveryStatus;
  set deliveryStatus(OrderDeliveryStatusEnum? deliveryStatus) =>
      _$this._deliveryStatus = deliveryStatus;

  OrderOrderStatusEnum? _orderStatus;
  OrderOrderStatusEnum? get orderStatus => _$this._orderStatus;
  set orderStatus(OrderOrderStatusEnum? orderStatus) =>
      _$this._orderStatus = orderStatus;

  int? _deliveryPerson;
  int? get deliveryPerson => _$this._deliveryPerson;
  set deliveryPerson(int? deliveryPerson) =>
      _$this._deliveryPerson = deliveryPerson;

  int? _locationCode;
  int? get locationCode => _$this._locationCode;
  set locationCode(int? locationCode) => _$this._locationCode = locationCode;

  DeliveryLocationBuilder? _location;
  DeliveryLocationBuilder get location =>
      _$this._location ??= DeliveryLocationBuilder();
  set location(DeliveryLocationBuilder? location) =>
      _$this._location = location;

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

  double? _appliedDiscount;
  double? get appliedDiscount => _$this._appliedDiscount;
  set appliedDiscount(double? appliedDiscount) =>
      _$this._appliedDiscount = appliedDiscount;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _paymentMode;
  String? get paymentMode => _$this._paymentMode;
  set paymentMode(String? paymentMode) => _$this._paymentMode = paymentMode;

  bool? _amountPaid;
  bool? get amountPaid => _$this._amountPaid;
  set amountPaid(bool? amountPaid) => _$this._amountPaid = amountPaid;

  String? _fkKitchenCode;
  String? get fkKitchenCode => _$this._fkKitchenCode;
  set fkKitchenCode(String? fkKitchenCode) =>
      _$this._fkKitchenCode = fkKitchenCode;

  OrderOrderMenuEnum? _orderMenu;
  OrderOrderMenuEnum? get orderMenu => _$this._orderMenu;
  set orderMenu(OrderOrderMenuEnum? orderMenu) => _$this._orderMenu = orderMenu;

  String? _deliveryTime;
  String? get deliveryTime => _$this._deliveryTime;
  set deliveryTime(String? deliveryTime) => _$this._deliveryTime = deliveryTime;

  String? _deliveryEndTime;
  String? get deliveryEndTime => _$this._deliveryEndTime;
  set deliveryEndTime(String? deliveryEndTime) =>
      _$this._deliveryEndTime = deliveryEndTime;

  OrderDeliveryTypeEnum? _deliveryType;
  OrderDeliveryTypeEnum? get deliveryType => _$this._deliveryType;
  set deliveryType(OrderDeliveryTypeEnum? deliveryType) =>
      _$this._deliveryType = deliveryType;

  String? _tpDeliveryOrderId;
  String? get tpDeliveryOrderId => _$this._tpDeliveryOrderId;
  set tpDeliveryOrderId(String? tpDeliveryOrderId) =>
      _$this._tpDeliveryOrderId = tpDeliveryOrderId;

  OrderBuilder() {
    Order._defaults(this);
  }

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderNo = $v.orderNo;
      _customerCode = $v.customerCode;
      _customerName = $v.customerName;
      _customerPhone = $v.customerPhone;
      _shipAddress = $v.shipAddress;
      _orderDate = $v.orderDate;
      _deliveryStatus = $v.deliveryStatus;
      _orderStatus = $v.orderStatus;
      _deliveryPerson = $v.deliveryPerson;
      _locationCode = $v.locationCode;
      _location = $v.location?.toBuilder();
      _amount = $v.amount;
      _tax = $v.tax;
      _deliveryCharges = $v.deliveryCharges;
      _appliedDiscount = $v.appliedDiscount;
      _total = $v.total;
      _paymentMode = $v.paymentMode;
      _amountPaid = $v.amountPaid;
      _fkKitchenCode = $v.fkKitchenCode;
      _orderMenu = $v.orderMenu;
      _deliveryTime = $v.deliveryTime;
      _deliveryEndTime = $v.deliveryEndTime;
      _deliveryType = $v.deliveryType;
      _tpDeliveryOrderId = $v.tpDeliveryOrderId;
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
            customerCode: customerCode,
            customerName: customerName,
            customerPhone: customerPhone,
            shipAddress: shipAddress,
            orderDate: orderDate,
            deliveryStatus: deliveryStatus,
            orderStatus: orderStatus,
            deliveryPerson: deliveryPerson,
            locationCode: locationCode,
            location: _location?.build(),
            amount: amount,
            tax: tax,
            deliveryCharges: deliveryCharges,
            appliedDiscount: appliedDiscount,
            total: total,
            paymentMode: paymentMode,
            amountPaid: amountPaid,
            fkKitchenCode: fkKitchenCode,
            orderMenu: orderMenu,
            deliveryTime: deliveryTime,
            deliveryEndTime: deliveryEndTime,
            deliveryType: deliveryType,
            tpDeliveryOrderId: tpDeliveryOrderId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        _location?.build();
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
