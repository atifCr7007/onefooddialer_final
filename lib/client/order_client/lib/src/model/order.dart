//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/order_item.dart';
import 'package:openapi/src/model/delivery_address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

/// Order
///
/// Properties:
/// * [id] 
/// * [orderNumber] - Human-readable order number
/// * [customerId] 
/// * [restaurantId] 
/// * [status] - Current order status
/// * [paymentStatus] - Payment status
/// * [deliveryType] - Type of order fulfillment
/// * [priority] - Order priority level
/// * [items] - List of items in the order
/// * [subtotal] - Subtotal before taxes and fees
/// * [taxAmount] - Tax amount
/// * [deliveryFee] - Delivery fee
/// * [serviceFee] - Service fee
/// * [discountAmount] - Total discount applied
/// * [totalAmount] - Final total amount
/// * [currency] - Currency code
/// * [deliveryAddress] 
/// * [deliveryInstructions] - Special delivery instructions
/// * [estimatedDeliveryTime] - Estimated delivery time
/// * [actualDeliveryTime] - Actual delivery time
/// * [preparationTime] - Estimated preparation time in minutes
/// * [customerNotes] - Customer notes for the order
/// * [restaurantNotes] - Restaurant notes about the order
/// * [couponCode] - Applied coupon code
/// * [loyaltyPointsUsed] - Loyalty points used for discount
/// * [loyaltyPointsEarned] - Loyalty points earned from this order
/// * [paymentMethod] - Payment method used
/// * [paymentReference] - Payment transaction reference
/// * [createdAt] 
/// * [updatedAt] 
/// * [confirmedAt] 
/// * [deliveredAt] 
@BuiltValue()
abstract class Order implements Built<Order, OrderBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Human-readable order number
  @BuiltValueField(wireName: r'orderNumber')
  String? get orderNumber;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'restaurantId')
  String? get restaurantId;

  /// Current order status
  @BuiltValueField(wireName: r'status')
  OrderStatusEnum? get status;
  // enum statusEnum {  pending,  confirmed,  preparing,  ready,  out_for_delivery,  delivered,  cancelled,  };

  /// Payment status
  @BuiltValueField(wireName: r'paymentStatus')
  OrderPaymentStatusEnum? get paymentStatus;
  // enum paymentStatusEnum {  pending,  paid,  failed,  refunded,  partially_refunded,  };

  /// Type of order fulfillment
  @BuiltValueField(wireName: r'deliveryType')
  OrderDeliveryTypeEnum? get deliveryType;
  // enum deliveryTypeEnum {  delivery,  pickup,  dine_in,  };

  /// Order priority level
  @BuiltValueField(wireName: r'priority')
  OrderPriorityEnum? get priority;
  // enum priorityEnum {  low,  normal,  high,  urgent,  };

  /// List of items in the order
  @BuiltValueField(wireName: r'items')
  BuiltList<OrderItem>? get items;

  /// Subtotal before taxes and fees
  @BuiltValueField(wireName: r'subtotal')
  double? get subtotal;

  /// Tax amount
  @BuiltValueField(wireName: r'taxAmount')
  double? get taxAmount;

  /// Delivery fee
  @BuiltValueField(wireName: r'deliveryFee')
  double? get deliveryFee;

  /// Service fee
  @BuiltValueField(wireName: r'serviceFee')
  double? get serviceFee;

  /// Total discount applied
  @BuiltValueField(wireName: r'discountAmount')
  double? get discountAmount;

  /// Final total amount
  @BuiltValueField(wireName: r'totalAmount')
  double? get totalAmount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  @BuiltValueField(wireName: r'deliveryAddress')
  DeliveryAddress? get deliveryAddress;

  /// Special delivery instructions
  @BuiltValueField(wireName: r'deliveryInstructions')
  String? get deliveryInstructions;

  /// Estimated delivery time
  @BuiltValueField(wireName: r'estimatedDeliveryTime')
  DateTime? get estimatedDeliveryTime;

  /// Actual delivery time
  @BuiltValueField(wireName: r'actualDeliveryTime')
  DateTime? get actualDeliveryTime;

  /// Estimated preparation time in minutes
  @BuiltValueField(wireName: r'preparationTime')
  int? get preparationTime;

  /// Customer notes for the order
  @BuiltValueField(wireName: r'customerNotes')
  String? get customerNotes;

  /// Restaurant notes about the order
  @BuiltValueField(wireName: r'restaurantNotes')
  String? get restaurantNotes;

  /// Applied coupon code
  @BuiltValueField(wireName: r'couponCode')
  String? get couponCode;

  /// Loyalty points used for discount
  @BuiltValueField(wireName: r'loyaltyPointsUsed')
  int? get loyaltyPointsUsed;

  /// Loyalty points earned from this order
  @BuiltValueField(wireName: r'loyaltyPointsEarned')
  int? get loyaltyPointsEarned;

  /// Payment method used
  @BuiltValueField(wireName: r'paymentMethod')
  OrderPaymentMethodEnum? get paymentMethod;
  // enum paymentMethodEnum {  cash,  card,  upi,  wallet,  net_banking,  };

  /// Payment transaction reference
  @BuiltValueField(wireName: r'paymentReference')
  String? get paymentReference;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'confirmedAt')
  DateTime? get confirmedAt;

  @BuiltValueField(wireName: r'deliveredAt')
  DateTime? get deliveredAt;

  Order._();

  factory Order([void updates(OrderBuilder b)]) = _$Order;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Order> get serializer => _$OrderSerializer();
}

class _$OrderSerializer implements PrimitiveSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];

  @override
  final String wireName = r'Order';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Order object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderNumber != null) {
      yield r'orderNumber';
      yield serializers.serialize(
        object.orderNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantId != null) {
      yield r'restaurantId';
      yield serializers.serialize(
        object.restaurantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderStatusEnum),
      );
    }
    if (object.paymentStatus != null) {
      yield r'paymentStatus';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(OrderPaymentStatusEnum),
      );
    }
    if (object.deliveryType != null) {
      yield r'deliveryType';
      yield serializers.serialize(
        object.deliveryType,
        specifiedType: const FullType(OrderDeliveryTypeEnum),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(OrderPriorityEnum),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
      );
    }
    if (object.subtotal != null) {
      yield r'subtotal';
      yield serializers.serialize(
        object.subtotal,
        specifiedType: const FullType(double),
      );
    }
    if (object.taxAmount != null) {
      yield r'taxAmount';
      yield serializers.serialize(
        object.taxAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.deliveryFee != null) {
      yield r'deliveryFee';
      yield serializers.serialize(
        object.deliveryFee,
        specifiedType: const FullType(double),
      );
    }
    if (object.serviceFee != null) {
      yield r'serviceFee';
      yield serializers.serialize(
        object.serviceFee,
        specifiedType: const FullType(double),
      );
    }
    if (object.discountAmount != null) {
      yield r'discountAmount';
      yield serializers.serialize(
        object.discountAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.totalAmount != null) {
      yield r'totalAmount';
      yield serializers.serialize(
        object.totalAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryAddress != null) {
      yield r'deliveryAddress';
      yield serializers.serialize(
        object.deliveryAddress,
        specifiedType: const FullType(DeliveryAddress),
      );
    }
    if (object.deliveryInstructions != null) {
      yield r'deliveryInstructions';
      yield serializers.serialize(
        object.deliveryInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.estimatedDeliveryTime != null) {
      yield r'estimatedDeliveryTime';
      yield serializers.serialize(
        object.estimatedDeliveryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.actualDeliveryTime != null) {
      yield r'actualDeliveryTime';
      yield serializers.serialize(
        object.actualDeliveryTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.preparationTime != null) {
      yield r'preparationTime';
      yield serializers.serialize(
        object.preparationTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerNotes != null) {
      yield r'customerNotes';
      yield serializers.serialize(
        object.customerNotes,
        specifiedType: const FullType(String),
      );
    }
    if (object.restaurantNotes != null) {
      yield r'restaurantNotes';
      yield serializers.serialize(
        object.restaurantNotes,
        specifiedType: const FullType(String),
      );
    }
    if (object.couponCode != null) {
      yield r'couponCode';
      yield serializers.serialize(
        object.couponCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.loyaltyPointsUsed != null) {
      yield r'loyaltyPointsUsed';
      yield serializers.serialize(
        object.loyaltyPointsUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.loyaltyPointsEarned != null) {
      yield r'loyaltyPointsEarned';
      yield serializers.serialize(
        object.loyaltyPointsEarned,
        specifiedType: const FullType(int),
      );
    }
    if (object.paymentMethod != null) {
      yield r'paymentMethod';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(OrderPaymentMethodEnum),
      );
    }
    if (object.paymentReference != null) {
      yield r'paymentReference';
      yield serializers.serialize(
        object.paymentReference,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.confirmedAt != null) {
      yield r'confirmedAt';
      yield serializers.serialize(
        object.confirmedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deliveredAt != null) {
      yield r'deliveredAt';
      yield serializers.serialize(
        object.deliveredAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Order object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'orderNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderNumber = valueDes;
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'restaurantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restaurantId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderStatusEnum),
          ) as OrderStatusEnum;
          result.status = valueDes;
          break;
        case r'paymentStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderPaymentStatusEnum),
          ) as OrderPaymentStatusEnum;
          result.paymentStatus = valueDes;
          break;
        case r'deliveryType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDeliveryTypeEnum),
          ) as OrderDeliveryTypeEnum;
          result.deliveryType = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderPriorityEnum),
          ) as OrderPriorityEnum;
          result.priority = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
          ) as BuiltList<OrderItem>;
          result.items.replace(valueDes);
          break;
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.subtotal = valueDes;
          break;
        case r'taxAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.taxAmount = valueDes;
          break;
        case r'deliveryFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.deliveryFee = valueDes;
          break;
        case r'serviceFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.serviceFee = valueDes;
          break;
        case r'discountAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountAmount = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'deliveryAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryAddress),
          ) as DeliveryAddress;
          result.deliveryAddress.replace(valueDes);
          break;
        case r'deliveryInstructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryInstructions = valueDes;
          break;
        case r'estimatedDeliveryTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.estimatedDeliveryTime = valueDes;
          break;
        case r'actualDeliveryTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.actualDeliveryTime = valueDes;
          break;
        case r'preparationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.preparationTime = valueDes;
          break;
        case r'customerNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerNotes = valueDes;
          break;
        case r'restaurantNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restaurantNotes = valueDes;
          break;
        case r'couponCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.couponCode = valueDes;
          break;
        case r'loyaltyPointsUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loyaltyPointsUsed = valueDes;
          break;
        case r'loyaltyPointsEarned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loyaltyPointsEarned = valueDes;
          break;
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderPaymentMethodEnum),
          ) as OrderPaymentMethodEnum;
          result.paymentMethod = valueDes;
          break;
        case r'paymentReference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentReference = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'confirmedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.confirmedAt = valueDes;
          break;
        case r'deliveredAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.deliveredAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Order deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class OrderStatusEnum extends EnumClass {

  /// Current order status
  @BuiltValueEnumConst(wireName: r'pending')
  static const OrderStatusEnum pending = _$orderStatusEnum_pending;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const OrderStatusEnum confirmed = _$orderStatusEnum_confirmed;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'preparing')
  static const OrderStatusEnum preparing = _$orderStatusEnum_preparing;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'ready')
  static const OrderStatusEnum ready = _$orderStatusEnum_ready;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'out_for_delivery')
  static const OrderStatusEnum outForDelivery = _$orderStatusEnum_outForDelivery;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'delivered')
  static const OrderStatusEnum delivered = _$orderStatusEnum_delivered;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const OrderStatusEnum cancelled = _$orderStatusEnum_cancelled;
  /// Current order status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderStatusEnum unknownDefaultOpenApi = _$orderStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrderStatusEnum> get serializer => _$orderStatusEnumSerializer;

  const OrderStatusEnum._(String name): super(name);

  static BuiltSet<OrderStatusEnum> get values => _$orderStatusEnumValues;
  static OrderStatusEnum valueOf(String name) => _$orderStatusEnumValueOf(name);
}

class OrderPaymentStatusEnum extends EnumClass {

  /// Payment status
  @BuiltValueEnumConst(wireName: r'pending')
  static const OrderPaymentStatusEnum pending = _$orderPaymentStatusEnum_pending;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'paid')
  static const OrderPaymentStatusEnum paid = _$orderPaymentStatusEnum_paid;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'failed')
  static const OrderPaymentStatusEnum failed = _$orderPaymentStatusEnum_failed;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'refunded')
  static const OrderPaymentStatusEnum refunded = _$orderPaymentStatusEnum_refunded;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'partially_refunded')
  static const OrderPaymentStatusEnum partiallyRefunded = _$orderPaymentStatusEnum_partiallyRefunded;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderPaymentStatusEnum unknownDefaultOpenApi = _$orderPaymentStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrderPaymentStatusEnum> get serializer => _$orderPaymentStatusEnumSerializer;

  const OrderPaymentStatusEnum._(String name): super(name);

  static BuiltSet<OrderPaymentStatusEnum> get values => _$orderPaymentStatusEnumValues;
  static OrderPaymentStatusEnum valueOf(String name) => _$orderPaymentStatusEnumValueOf(name);
}

class OrderDeliveryTypeEnum extends EnumClass {

  /// Type of order fulfillment
  @BuiltValueEnumConst(wireName: r'delivery')
  static const OrderDeliveryTypeEnum delivery = _$orderDeliveryTypeEnum_delivery;
  /// Type of order fulfillment
  @BuiltValueEnumConst(wireName: r'pickup')
  static const OrderDeliveryTypeEnum pickup = _$orderDeliveryTypeEnum_pickup;
  /// Type of order fulfillment
  @BuiltValueEnumConst(wireName: r'dine_in')
  static const OrderDeliveryTypeEnum dineIn = _$orderDeliveryTypeEnum_dineIn;
  /// Type of order fulfillment
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderDeliveryTypeEnum unknownDefaultOpenApi = _$orderDeliveryTypeEnum_unknownDefaultOpenApi;

  static Serializer<OrderDeliveryTypeEnum> get serializer => _$orderDeliveryTypeEnumSerializer;

  const OrderDeliveryTypeEnum._(String name): super(name);

  static BuiltSet<OrderDeliveryTypeEnum> get values => _$orderDeliveryTypeEnumValues;
  static OrderDeliveryTypeEnum valueOf(String name) => _$orderDeliveryTypeEnumValueOf(name);
}

class OrderPriorityEnum extends EnumClass {

  /// Order priority level
  @BuiltValueEnumConst(wireName: r'low')
  static const OrderPriorityEnum low = _$orderPriorityEnum_low;
  /// Order priority level
  @BuiltValueEnumConst(wireName: r'normal')
  static const OrderPriorityEnum normal = _$orderPriorityEnum_normal;
  /// Order priority level
  @BuiltValueEnumConst(wireName: r'high')
  static const OrderPriorityEnum high = _$orderPriorityEnum_high;
  /// Order priority level
  @BuiltValueEnumConst(wireName: r'urgent')
  static const OrderPriorityEnum urgent = _$orderPriorityEnum_urgent;
  /// Order priority level
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderPriorityEnum unknownDefaultOpenApi = _$orderPriorityEnum_unknownDefaultOpenApi;

  static Serializer<OrderPriorityEnum> get serializer => _$orderPriorityEnumSerializer;

  const OrderPriorityEnum._(String name): super(name);

  static BuiltSet<OrderPriorityEnum> get values => _$orderPriorityEnumValues;
  static OrderPriorityEnum valueOf(String name) => _$orderPriorityEnumValueOf(name);
}

class OrderPaymentMethodEnum extends EnumClass {

  /// Payment method used
  @BuiltValueEnumConst(wireName: r'cash')
  static const OrderPaymentMethodEnum cash = _$orderPaymentMethodEnum_cash;
  /// Payment method used
  @BuiltValueEnumConst(wireName: r'card')
  static const OrderPaymentMethodEnum card = _$orderPaymentMethodEnum_card;
  /// Payment method used
  @BuiltValueEnumConst(wireName: r'upi')
  static const OrderPaymentMethodEnum upi = _$orderPaymentMethodEnum_upi;
  /// Payment method used
  @BuiltValueEnumConst(wireName: r'wallet')
  static const OrderPaymentMethodEnum wallet = _$orderPaymentMethodEnum_wallet;
  /// Payment method used
  @BuiltValueEnumConst(wireName: r'net_banking')
  static const OrderPaymentMethodEnum netBanking = _$orderPaymentMethodEnum_netBanking;
  /// Payment method used
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderPaymentMethodEnum unknownDefaultOpenApi = _$orderPaymentMethodEnum_unknownDefaultOpenApi;

  static Serializer<OrderPaymentMethodEnum> get serializer => _$orderPaymentMethodEnumSerializer;

  const OrderPaymentMethodEnum._(String name): super(name);

  static BuiltSet<OrderPaymentMethodEnum> get values => _$orderPaymentMethodEnumValues;
  static OrderPaymentMethodEnum valueOf(String name) => _$orderPaymentMethodEnumValueOf(name);
}

