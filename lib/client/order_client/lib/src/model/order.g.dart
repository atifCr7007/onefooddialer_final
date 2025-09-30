// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatusEnum _$orderStatusEnum_pending = const OrderStatusEnum._(
  'pending',
);
const OrderStatusEnum _$orderStatusEnum_confirmed = const OrderStatusEnum._(
  'confirmed',
);
const OrderStatusEnum _$orderStatusEnum_preparing = const OrderStatusEnum._(
  'preparing',
);
const OrderStatusEnum _$orderStatusEnum_ready = const OrderStatusEnum._(
  'ready',
);
const OrderStatusEnum _$orderStatusEnum_outForDelivery =
    const OrderStatusEnum._('outForDelivery');
const OrderStatusEnum _$orderStatusEnum_delivered = const OrderStatusEnum._(
  'delivered',
);
const OrderStatusEnum _$orderStatusEnum_cancelled = const OrderStatusEnum._(
  'cancelled',
);
const OrderStatusEnum _$orderStatusEnum_unknownDefaultOpenApi =
    const OrderStatusEnum._('unknownDefaultOpenApi');

OrderStatusEnum _$orderStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$orderStatusEnum_pending;
    case 'confirmed':
      return _$orderStatusEnum_confirmed;
    case 'preparing':
      return _$orderStatusEnum_preparing;
    case 'ready':
      return _$orderStatusEnum_ready;
    case 'outForDelivery':
      return _$orderStatusEnum_outForDelivery;
    case 'delivered':
      return _$orderStatusEnum_delivered;
    case 'cancelled':
      return _$orderStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$orderStatusEnum_unknownDefaultOpenApi;
    default:
      return _$orderStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderStatusEnum> _$orderStatusEnumValues =
    BuiltSet<OrderStatusEnum>(const <OrderStatusEnum>[
      _$orderStatusEnum_pending,
      _$orderStatusEnum_confirmed,
      _$orderStatusEnum_preparing,
      _$orderStatusEnum_ready,
      _$orderStatusEnum_outForDelivery,
      _$orderStatusEnum_delivered,
      _$orderStatusEnum_cancelled,
      _$orderStatusEnum_unknownDefaultOpenApi,
    ]);

const OrderPaymentStatusEnum _$orderPaymentStatusEnum_pending =
    const OrderPaymentStatusEnum._('pending');
const OrderPaymentStatusEnum _$orderPaymentStatusEnum_paid =
    const OrderPaymentStatusEnum._('paid');
const OrderPaymentStatusEnum _$orderPaymentStatusEnum_failed =
    const OrderPaymentStatusEnum._('failed');
const OrderPaymentStatusEnum _$orderPaymentStatusEnum_refunded =
    const OrderPaymentStatusEnum._('refunded');
const OrderPaymentStatusEnum _$orderPaymentStatusEnum_partiallyRefunded =
    const OrderPaymentStatusEnum._('partiallyRefunded');
const OrderPaymentStatusEnum _$orderPaymentStatusEnum_unknownDefaultOpenApi =
    const OrderPaymentStatusEnum._('unknownDefaultOpenApi');

OrderPaymentStatusEnum _$orderPaymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$orderPaymentStatusEnum_pending;
    case 'paid':
      return _$orderPaymentStatusEnum_paid;
    case 'failed':
      return _$orderPaymentStatusEnum_failed;
    case 'refunded':
      return _$orderPaymentStatusEnum_refunded;
    case 'partiallyRefunded':
      return _$orderPaymentStatusEnum_partiallyRefunded;
    case 'unknownDefaultOpenApi':
      return _$orderPaymentStatusEnum_unknownDefaultOpenApi;
    default:
      return _$orderPaymentStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderPaymentStatusEnum> _$orderPaymentStatusEnumValues =
    BuiltSet<OrderPaymentStatusEnum>(const <OrderPaymentStatusEnum>[
      _$orderPaymentStatusEnum_pending,
      _$orderPaymentStatusEnum_paid,
      _$orderPaymentStatusEnum_failed,
      _$orderPaymentStatusEnum_refunded,
      _$orderPaymentStatusEnum_partiallyRefunded,
      _$orderPaymentStatusEnum_unknownDefaultOpenApi,
    ]);

const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_delivery =
    const OrderDeliveryTypeEnum._('delivery');
const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_pickup =
    const OrderDeliveryTypeEnum._('pickup');
const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_dineIn =
    const OrderDeliveryTypeEnum._('dineIn');
const OrderDeliveryTypeEnum _$orderDeliveryTypeEnum_unknownDefaultOpenApi =
    const OrderDeliveryTypeEnum._('unknownDefaultOpenApi');

OrderDeliveryTypeEnum _$orderDeliveryTypeEnumValueOf(String name) {
  switch (name) {
    case 'delivery':
      return _$orderDeliveryTypeEnum_delivery;
    case 'pickup':
      return _$orderDeliveryTypeEnum_pickup;
    case 'dineIn':
      return _$orderDeliveryTypeEnum_dineIn;
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
      _$orderDeliveryTypeEnum_dineIn,
      _$orderDeliveryTypeEnum_unknownDefaultOpenApi,
    ]);

const OrderPriorityEnum _$orderPriorityEnum_low = const OrderPriorityEnum._(
  'low',
);
const OrderPriorityEnum _$orderPriorityEnum_normal = const OrderPriorityEnum._(
  'normal',
);
const OrderPriorityEnum _$orderPriorityEnum_high = const OrderPriorityEnum._(
  'high',
);
const OrderPriorityEnum _$orderPriorityEnum_urgent = const OrderPriorityEnum._(
  'urgent',
);
const OrderPriorityEnum _$orderPriorityEnum_unknownDefaultOpenApi =
    const OrderPriorityEnum._('unknownDefaultOpenApi');

OrderPriorityEnum _$orderPriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$orderPriorityEnum_low;
    case 'normal':
      return _$orderPriorityEnum_normal;
    case 'high':
      return _$orderPriorityEnum_high;
    case 'urgent':
      return _$orderPriorityEnum_urgent;
    case 'unknownDefaultOpenApi':
      return _$orderPriorityEnum_unknownDefaultOpenApi;
    default:
      return _$orderPriorityEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderPriorityEnum> _$orderPriorityEnumValues =
    BuiltSet<OrderPriorityEnum>(const <OrderPriorityEnum>[
      _$orderPriorityEnum_low,
      _$orderPriorityEnum_normal,
      _$orderPriorityEnum_high,
      _$orderPriorityEnum_urgent,
      _$orderPriorityEnum_unknownDefaultOpenApi,
    ]);

const OrderPaymentMethodEnum _$orderPaymentMethodEnum_cash =
    const OrderPaymentMethodEnum._('cash');
const OrderPaymentMethodEnum _$orderPaymentMethodEnum_card =
    const OrderPaymentMethodEnum._('card');
const OrderPaymentMethodEnum _$orderPaymentMethodEnum_upi =
    const OrderPaymentMethodEnum._('upi');
const OrderPaymentMethodEnum _$orderPaymentMethodEnum_wallet =
    const OrderPaymentMethodEnum._('wallet');
const OrderPaymentMethodEnum _$orderPaymentMethodEnum_netBanking =
    const OrderPaymentMethodEnum._('netBanking');
const OrderPaymentMethodEnum _$orderPaymentMethodEnum_unknownDefaultOpenApi =
    const OrderPaymentMethodEnum._('unknownDefaultOpenApi');

OrderPaymentMethodEnum _$orderPaymentMethodEnumValueOf(String name) {
  switch (name) {
    case 'cash':
      return _$orderPaymentMethodEnum_cash;
    case 'card':
      return _$orderPaymentMethodEnum_card;
    case 'upi':
      return _$orderPaymentMethodEnum_upi;
    case 'wallet':
      return _$orderPaymentMethodEnum_wallet;
    case 'netBanking':
      return _$orderPaymentMethodEnum_netBanking;
    case 'unknownDefaultOpenApi':
      return _$orderPaymentMethodEnum_unknownDefaultOpenApi;
    default:
      return _$orderPaymentMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderPaymentMethodEnum> _$orderPaymentMethodEnumValues =
    BuiltSet<OrderPaymentMethodEnum>(const <OrderPaymentMethodEnum>[
      _$orderPaymentMethodEnum_cash,
      _$orderPaymentMethodEnum_card,
      _$orderPaymentMethodEnum_upi,
      _$orderPaymentMethodEnum_wallet,
      _$orderPaymentMethodEnum_netBanking,
      _$orderPaymentMethodEnum_unknownDefaultOpenApi,
    ]);

Serializer<OrderStatusEnum> _$orderStatusEnumSerializer =
    _$OrderStatusEnumSerializer();
Serializer<OrderPaymentStatusEnum> _$orderPaymentStatusEnumSerializer =
    _$OrderPaymentStatusEnumSerializer();
Serializer<OrderDeliveryTypeEnum> _$orderDeliveryTypeEnumSerializer =
    _$OrderDeliveryTypeEnumSerializer();
Serializer<OrderPriorityEnum> _$orderPriorityEnumSerializer =
    _$OrderPriorityEnumSerializer();
Serializer<OrderPaymentMethodEnum> _$orderPaymentMethodEnumSerializer =
    _$OrderPaymentMethodEnumSerializer();

class _$OrderStatusEnumSerializer
    implements PrimitiveSerializer<OrderStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'preparing': 'preparing',
    'ready': 'ready',
    'outForDelivery': 'out_for_delivery',
    'delivered': 'delivered',
    'cancelled': 'cancelled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'preparing': 'preparing',
    'ready': 'ready',
    'out_for_delivery': 'outForDelivery',
    'delivered': 'delivered',
    'cancelled': 'cancelled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderStatusEnum];
  @override
  final String wireName = 'OrderStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderPaymentStatusEnumSerializer
    implements PrimitiveSerializer<OrderPaymentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'paid': 'paid',
    'failed': 'failed',
    'refunded': 'refunded',
    'partiallyRefunded': 'partially_refunded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'paid': 'paid',
    'failed': 'failed',
    'refunded': 'refunded',
    'partially_refunded': 'partiallyRefunded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderPaymentStatusEnum];
  @override
  final String wireName = 'OrderPaymentStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderPaymentStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderPaymentStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderPaymentStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderDeliveryTypeEnumSerializer
    implements PrimitiveSerializer<OrderDeliveryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivery': 'delivery',
    'pickup': 'pickup',
    'dineIn': 'dine_in',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'delivery': 'delivery',
    'pickup': 'pickup',
    'dine_in': 'dineIn',
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

class _$OrderPriorityEnumSerializer
    implements PrimitiveSerializer<OrderPriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
    'urgent': 'urgent',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'normal': 'normal',
    'high': 'high',
    'urgent': 'urgent',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderPriorityEnum];
  @override
  final String wireName = 'OrderPriorityEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderPriorityEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderPriorityEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderPriorityEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderPaymentMethodEnumSerializer
    implements PrimitiveSerializer<OrderPaymentMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cash': 'cash',
    'card': 'card',
    'upi': 'upi',
    'wallet': 'wallet',
    'netBanking': 'net_banking',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cash': 'cash',
    'card': 'card',
    'upi': 'upi',
    'wallet': 'wallet',
    'net_banking': 'netBanking',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderPaymentMethodEnum];
  @override
  final String wireName = 'OrderPaymentMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderPaymentMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderPaymentMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderPaymentMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Order extends Order {
  @override
  final String? id;
  @override
  final String? orderNumber;
  @override
  final String? customerId;
  @override
  final String? restaurantId;
  @override
  final OrderStatusEnum? status;
  @override
  final OrderPaymentStatusEnum? paymentStatus;
  @override
  final OrderDeliveryTypeEnum? deliveryType;
  @override
  final OrderPriorityEnum? priority;
  @override
  final BuiltList<OrderItem>? items;
  @override
  final double? subtotal;
  @override
  final double? taxAmount;
  @override
  final double? deliveryFee;
  @override
  final double? serviceFee;
  @override
  final double? discountAmount;
  @override
  final double? totalAmount;
  @override
  final String? currency;
  @override
  final DeliveryAddress? deliveryAddress;
  @override
  final String? deliveryInstructions;
  @override
  final DateTime? estimatedDeliveryTime;
  @override
  final DateTime? actualDeliveryTime;
  @override
  final int? preparationTime;
  @override
  final String? customerNotes;
  @override
  final String? restaurantNotes;
  @override
  final String? couponCode;
  @override
  final int? loyaltyPointsUsed;
  @override
  final int? loyaltyPointsEarned;
  @override
  final OrderPaymentMethodEnum? paymentMethod;
  @override
  final String? paymentReference;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? confirmedAt;
  @override
  final DateTime? deliveredAt;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (OrderBuilder()..update(updates))._build();

  _$Order._({
    this.id,
    this.orderNumber,
    this.customerId,
    this.restaurantId,
    this.status,
    this.paymentStatus,
    this.deliveryType,
    this.priority,
    this.items,
    this.subtotal,
    this.taxAmount,
    this.deliveryFee,
    this.serviceFee,
    this.discountAmount,
    this.totalAmount,
    this.currency,
    this.deliveryAddress,
    this.deliveryInstructions,
    this.estimatedDeliveryTime,
    this.actualDeliveryTime,
    this.preparationTime,
    this.customerNotes,
    this.restaurantNotes,
    this.couponCode,
    this.loyaltyPointsUsed,
    this.loyaltyPointsEarned,
    this.paymentMethod,
    this.paymentReference,
    this.createdAt,
    this.updatedAt,
    this.confirmedAt,
    this.deliveredAt,
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
        orderNumber == other.orderNumber &&
        customerId == other.customerId &&
        restaurantId == other.restaurantId &&
        status == other.status &&
        paymentStatus == other.paymentStatus &&
        deliveryType == other.deliveryType &&
        priority == other.priority &&
        items == other.items &&
        subtotal == other.subtotal &&
        taxAmount == other.taxAmount &&
        deliveryFee == other.deliveryFee &&
        serviceFee == other.serviceFee &&
        discountAmount == other.discountAmount &&
        totalAmount == other.totalAmount &&
        currency == other.currency &&
        deliveryAddress == other.deliveryAddress &&
        deliveryInstructions == other.deliveryInstructions &&
        estimatedDeliveryTime == other.estimatedDeliveryTime &&
        actualDeliveryTime == other.actualDeliveryTime &&
        preparationTime == other.preparationTime &&
        customerNotes == other.customerNotes &&
        restaurantNotes == other.restaurantNotes &&
        couponCode == other.couponCode &&
        loyaltyPointsUsed == other.loyaltyPointsUsed &&
        loyaltyPointsEarned == other.loyaltyPointsEarned &&
        paymentMethod == other.paymentMethod &&
        paymentReference == other.paymentReference &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        confirmedAt == other.confirmedAt &&
        deliveredAt == other.deliveredAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderNumber.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, restaurantId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, deliveryType.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, taxAmount.hashCode);
    _$hash = $jc(_$hash, deliveryFee.hashCode);
    _$hash = $jc(_$hash, serviceFee.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, deliveryAddress.hashCode);
    _$hash = $jc(_$hash, deliveryInstructions.hashCode);
    _$hash = $jc(_$hash, estimatedDeliveryTime.hashCode);
    _$hash = $jc(_$hash, actualDeliveryTime.hashCode);
    _$hash = $jc(_$hash, preparationTime.hashCode);
    _$hash = $jc(_$hash, customerNotes.hashCode);
    _$hash = $jc(_$hash, restaurantNotes.hashCode);
    _$hash = $jc(_$hash, couponCode.hashCode);
    _$hash = $jc(_$hash, loyaltyPointsUsed.hashCode);
    _$hash = $jc(_$hash, loyaltyPointsEarned.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentReference.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, confirmedAt.hashCode);
    _$hash = $jc(_$hash, deliveredAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Order')
          ..add('id', id)
          ..add('orderNumber', orderNumber)
          ..add('customerId', customerId)
          ..add('restaurantId', restaurantId)
          ..add('status', status)
          ..add('paymentStatus', paymentStatus)
          ..add('deliveryType', deliveryType)
          ..add('priority', priority)
          ..add('items', items)
          ..add('subtotal', subtotal)
          ..add('taxAmount', taxAmount)
          ..add('deliveryFee', deliveryFee)
          ..add('serviceFee', serviceFee)
          ..add('discountAmount', discountAmount)
          ..add('totalAmount', totalAmount)
          ..add('currency', currency)
          ..add('deliveryAddress', deliveryAddress)
          ..add('deliveryInstructions', deliveryInstructions)
          ..add('estimatedDeliveryTime', estimatedDeliveryTime)
          ..add('actualDeliveryTime', actualDeliveryTime)
          ..add('preparationTime', preparationTime)
          ..add('customerNotes', customerNotes)
          ..add('restaurantNotes', restaurantNotes)
          ..add('couponCode', couponCode)
          ..add('loyaltyPointsUsed', loyaltyPointsUsed)
          ..add('loyaltyPointsEarned', loyaltyPointsEarned)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentReference', paymentReference)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('confirmedAt', confirmedAt)
          ..add('deliveredAt', deliveredAt))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderNumber;
  String? get orderNumber => _$this._orderNumber;
  set orderNumber(String? orderNumber) => _$this._orderNumber = orderNumber;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  OrderStatusEnum? _status;
  OrderStatusEnum? get status => _$this._status;
  set status(OrderStatusEnum? status) => _$this._status = status;

  OrderPaymentStatusEnum? _paymentStatus;
  OrderPaymentStatusEnum? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(OrderPaymentStatusEnum? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  OrderDeliveryTypeEnum? _deliveryType;
  OrderDeliveryTypeEnum? get deliveryType => _$this._deliveryType;
  set deliveryType(OrderDeliveryTypeEnum? deliveryType) =>
      _$this._deliveryType = deliveryType;

  OrderPriorityEnum? _priority;
  OrderPriorityEnum? get priority => _$this._priority;
  set priority(OrderPriorityEnum? priority) => _$this._priority = priority;

  ListBuilder<OrderItem>? _items;
  ListBuilder<OrderItem> get items =>
      _$this._items ??= ListBuilder<OrderItem>();
  set items(ListBuilder<OrderItem>? items) => _$this._items = items;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  double? _taxAmount;
  double? get taxAmount => _$this._taxAmount;
  set taxAmount(double? taxAmount) => _$this._taxAmount = taxAmount;

  double? _deliveryFee;
  double? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(double? deliveryFee) => _$this._deliveryFee = deliveryFee;

  double? _serviceFee;
  double? get serviceFee => _$this._serviceFee;
  set serviceFee(double? serviceFee) => _$this._serviceFee = serviceFee;

  double? _discountAmount;
  double? get discountAmount => _$this._discountAmount;
  set discountAmount(double? discountAmount) =>
      _$this._discountAmount = discountAmount;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  DeliveryAddressBuilder? _deliveryAddress;
  DeliveryAddressBuilder get deliveryAddress =>
      _$this._deliveryAddress ??= DeliveryAddressBuilder();
  set deliveryAddress(DeliveryAddressBuilder? deliveryAddress) =>
      _$this._deliveryAddress = deliveryAddress;

  String? _deliveryInstructions;
  String? get deliveryInstructions => _$this._deliveryInstructions;
  set deliveryInstructions(String? deliveryInstructions) =>
      _$this._deliveryInstructions = deliveryInstructions;

  DateTime? _estimatedDeliveryTime;
  DateTime? get estimatedDeliveryTime => _$this._estimatedDeliveryTime;
  set estimatedDeliveryTime(DateTime? estimatedDeliveryTime) =>
      _$this._estimatedDeliveryTime = estimatedDeliveryTime;

  DateTime? _actualDeliveryTime;
  DateTime? get actualDeliveryTime => _$this._actualDeliveryTime;
  set actualDeliveryTime(DateTime? actualDeliveryTime) =>
      _$this._actualDeliveryTime = actualDeliveryTime;

  int? _preparationTime;
  int? get preparationTime => _$this._preparationTime;
  set preparationTime(int? preparationTime) =>
      _$this._preparationTime = preparationTime;

  String? _customerNotes;
  String? get customerNotes => _$this._customerNotes;
  set customerNotes(String? customerNotes) =>
      _$this._customerNotes = customerNotes;

  String? _restaurantNotes;
  String? get restaurantNotes => _$this._restaurantNotes;
  set restaurantNotes(String? restaurantNotes) =>
      _$this._restaurantNotes = restaurantNotes;

  String? _couponCode;
  String? get couponCode => _$this._couponCode;
  set couponCode(String? couponCode) => _$this._couponCode = couponCode;

  int? _loyaltyPointsUsed;
  int? get loyaltyPointsUsed => _$this._loyaltyPointsUsed;
  set loyaltyPointsUsed(int? loyaltyPointsUsed) =>
      _$this._loyaltyPointsUsed = loyaltyPointsUsed;

  int? _loyaltyPointsEarned;
  int? get loyaltyPointsEarned => _$this._loyaltyPointsEarned;
  set loyaltyPointsEarned(int? loyaltyPointsEarned) =>
      _$this._loyaltyPointsEarned = loyaltyPointsEarned;

  OrderPaymentMethodEnum? _paymentMethod;
  OrderPaymentMethodEnum? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(OrderPaymentMethodEnum? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentReference;
  String? get paymentReference => _$this._paymentReference;
  set paymentReference(String? paymentReference) =>
      _$this._paymentReference = paymentReference;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DateTime? _confirmedAt;
  DateTime? get confirmedAt => _$this._confirmedAt;
  set confirmedAt(DateTime? confirmedAt) => _$this._confirmedAt = confirmedAt;

  DateTime? _deliveredAt;
  DateTime? get deliveredAt => _$this._deliveredAt;
  set deliveredAt(DateTime? deliveredAt) => _$this._deliveredAt = deliveredAt;

  OrderBuilder() {
    Order._defaults(this);
  }

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderNumber = $v.orderNumber;
      _customerId = $v.customerId;
      _restaurantId = $v.restaurantId;
      _status = $v.status;
      _paymentStatus = $v.paymentStatus;
      _deliveryType = $v.deliveryType;
      _priority = $v.priority;
      _items = $v.items?.toBuilder();
      _subtotal = $v.subtotal;
      _taxAmount = $v.taxAmount;
      _deliveryFee = $v.deliveryFee;
      _serviceFee = $v.serviceFee;
      _discountAmount = $v.discountAmount;
      _totalAmount = $v.totalAmount;
      _currency = $v.currency;
      _deliveryAddress = $v.deliveryAddress?.toBuilder();
      _deliveryInstructions = $v.deliveryInstructions;
      _estimatedDeliveryTime = $v.estimatedDeliveryTime;
      _actualDeliveryTime = $v.actualDeliveryTime;
      _preparationTime = $v.preparationTime;
      _customerNotes = $v.customerNotes;
      _restaurantNotes = $v.restaurantNotes;
      _couponCode = $v.couponCode;
      _loyaltyPointsUsed = $v.loyaltyPointsUsed;
      _loyaltyPointsEarned = $v.loyaltyPointsEarned;
      _paymentMethod = $v.paymentMethod;
      _paymentReference = $v.paymentReference;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _confirmedAt = $v.confirmedAt;
      _deliveredAt = $v.deliveredAt;
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
            orderNumber: orderNumber,
            customerId: customerId,
            restaurantId: restaurantId,
            status: status,
            paymentStatus: paymentStatus,
            deliveryType: deliveryType,
            priority: priority,
            items: _items?.build(),
            subtotal: subtotal,
            taxAmount: taxAmount,
            deliveryFee: deliveryFee,
            serviceFee: serviceFee,
            discountAmount: discountAmount,
            totalAmount: totalAmount,
            currency: currency,
            deliveryAddress: _deliveryAddress?.build(),
            deliveryInstructions: deliveryInstructions,
            estimatedDeliveryTime: estimatedDeliveryTime,
            actualDeliveryTime: actualDeliveryTime,
            preparationTime: preparationTime,
            customerNotes: customerNotes,
            restaurantNotes: restaurantNotes,
            couponCode: couponCode,
            loyaltyPointsUsed: loyaltyPointsUsed,
            loyaltyPointsEarned: loyaltyPointsEarned,
            paymentMethod: paymentMethod,
            paymentReference: paymentReference,
            createdAt: createdAt,
            updatedAt: updatedAt,
            confirmedAt: confirmedAt,
            deliveredAt: deliveredAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'deliveryAddress';
        _deliveryAddress?.build();
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
