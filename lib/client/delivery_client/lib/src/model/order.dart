//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/delivery_location.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

/// Order
///
/// Properties:
/// * [id] - Order ID
/// * [orderNo] - Order number
/// * [customerCode] - Customer code
/// * [customerName] - Customer name
/// * [customerPhone] - Customer phone number
/// * [shipAddress] - Shipping address
/// * [orderDate] - Order date
/// * [deliveryStatus] - Delivery status
/// * [orderStatus] - Order status
/// * [deliveryPerson] - Delivery person ID
/// * [locationCode] - Location code
/// * [location] 
/// * [amount] - Order amount
/// * [tax] - Tax amount
/// * [deliveryCharges] - Delivery charges
/// * [appliedDiscount] - Applied discount
/// * [total] - Total amount
/// * [paymentMode] - Payment mode
/// * [amountPaid] - Whether the amount is paid
/// * [fkKitchenCode] - Kitchen code
/// * [orderMenu] - Order menu type
/// * [deliveryTime] - Delivery time
/// * [deliveryEndTime] - Delivery end time
/// * [deliveryType] - Delivery type
/// * [tpDeliveryOrderId] - Third-party delivery order ID
@BuiltValue()
abstract class Order implements Built<Order, OrderBuilder> {
  /// Order ID
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Order number
  @BuiltValueField(wireName: r'order_no')
  String? get orderNo;

  /// Customer code
  @BuiltValueField(wireName: r'customer_code')
  int? get customerCode;

  /// Customer name
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  /// Customer phone number
  @BuiltValueField(wireName: r'customer_phone')
  String? get customerPhone;

  /// Shipping address
  @BuiltValueField(wireName: r'ship_address')
  String? get shipAddress;

  /// Order date
  @BuiltValueField(wireName: r'order_date')
  Date? get orderDate;

  /// Delivery status
  @BuiltValueField(wireName: r'delivery_status')
  OrderDeliveryStatusEnum? get deliveryStatus;
  // enum deliveryStatusEnum {  Pending,  Dispatched,  Delivered,  Failed,  };

  /// Order status
  @BuiltValueField(wireName: r'order_status')
  OrderOrderStatusEnum? get orderStatus;
  // enum orderStatusEnum {  New,  Processing,  Complete,  Cancelled,  };

  /// Delivery person ID
  @BuiltValueField(wireName: r'delivery_person')
  int? get deliveryPerson;

  /// Location code
  @BuiltValueField(wireName: r'location_code')
  int? get locationCode;

  @BuiltValueField(wireName: r'location')
  DeliveryLocation? get location;

  /// Order amount
  @BuiltValueField(wireName: r'amount')
  double? get amount;

  /// Tax amount
  @BuiltValueField(wireName: r'tax')
  double? get tax;

  /// Delivery charges
  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  /// Applied discount
  @BuiltValueField(wireName: r'applied_discount')
  double? get appliedDiscount;

  /// Total amount
  @BuiltValueField(wireName: r'total')
  double? get total;

  /// Payment mode
  @BuiltValueField(wireName: r'payment_mode')
  String? get paymentMode;

  /// Whether the amount is paid
  @BuiltValueField(wireName: r'amount_paid')
  bool? get amountPaid;

  /// Kitchen code
  @BuiltValueField(wireName: r'fk_kitchen_code')
  String? get fkKitchenCode;

  /// Order menu type
  @BuiltValueField(wireName: r'order_menu')
  OrderOrderMenuEnum? get orderMenu;
  // enum orderMenuEnum {  lunch,  dinner,  };

  /// Delivery time
  @BuiltValueField(wireName: r'delivery_time')
  String? get deliveryTime;

  /// Delivery end time
  @BuiltValueField(wireName: r'delivery_end_time')
  String? get deliveryEndTime;

  /// Delivery type
  @BuiltValueField(wireName: r'delivery_type')
  OrderDeliveryTypeEnum? get deliveryType;
  // enum deliveryTypeEnum {  delivery,  pickup,  };

  /// Third-party delivery order ID
  @BuiltValueField(wireName: r'tp_delivery_order_id')
  String? get tpDeliveryOrderId;

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
        specifiedType: const FullType(int),
      );
    }
    if (object.orderNo != null) {
      yield r'order_no';
      yield serializers.serialize(
        object.orderNo,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerCode != null) {
      yield r'customer_code';
      yield serializers.serialize(
        object.customerCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerPhone != null) {
      yield r'customer_phone';
      yield serializers.serialize(
        object.customerPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.shipAddress != null) {
      yield r'ship_address';
      yield serializers.serialize(
        object.shipAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderDate != null) {
      yield r'order_date';
      yield serializers.serialize(
        object.orderDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.deliveryStatus != null) {
      yield r'delivery_status';
      yield serializers.serialize(
        object.deliveryStatus,
        specifiedType: const FullType(OrderDeliveryStatusEnum),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(OrderOrderStatusEnum),
      );
    }
    if (object.deliveryPerson != null) {
      yield r'delivery_person';
      yield serializers.serialize(
        object.deliveryPerson,
        specifiedType: const FullType(int),
      );
    }
    if (object.locationCode != null) {
      yield r'location_code';
      yield serializers.serialize(
        object.locationCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(DeliveryLocation),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(double),
      );
    }
    if (object.tax != null) {
      yield r'tax';
      yield serializers.serialize(
        object.tax,
        specifiedType: const FullType(double),
      );
    }
    if (object.deliveryCharges != null) {
      yield r'delivery_charges';
      yield serializers.serialize(
        object.deliveryCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.appliedDiscount != null) {
      yield r'applied_discount';
      yield serializers.serialize(
        object.appliedDiscount,
        specifiedType: const FullType(double),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(double),
      );
    }
    if (object.paymentMode != null) {
      yield r'payment_mode';
      yield serializers.serialize(
        object.paymentMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.amountPaid != null) {
      yield r'amount_paid';
      yield serializers.serialize(
        object.amountPaid,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fkKitchenCode != null) {
      yield r'fk_kitchen_code';
      yield serializers.serialize(
        object.fkKitchenCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderMenu != null) {
      yield r'order_menu';
      yield serializers.serialize(
        object.orderMenu,
        specifiedType: const FullType(OrderOrderMenuEnum),
      );
    }
    if (object.deliveryTime != null) {
      yield r'delivery_time';
      yield serializers.serialize(
        object.deliveryTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryEndTime != null) {
      yield r'delivery_end_time';
      yield serializers.serialize(
        object.deliveryEndTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryType != null) {
      yield r'delivery_type';
      yield serializers.serialize(
        object.deliveryType,
        specifiedType: const FullType(OrderDeliveryTypeEnum),
      );
    }
    if (object.tpDeliveryOrderId != null) {
      yield r'tp_delivery_order_id';
      yield serializers.serialize(
        object.tpDeliveryOrderId,
        specifiedType: const FullType(String),
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
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'order_no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderNo = valueDes;
          break;
        case r'customer_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerCode = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
          break;
        case r'ship_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shipAddress = valueDes;
          break;
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.orderDate = valueDes;
          break;
        case r'delivery_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDeliveryStatusEnum),
          ) as OrderDeliveryStatusEnum;
          result.deliveryStatus = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderOrderStatusEnum),
          ) as OrderOrderStatusEnum;
          result.orderStatus = valueDes;
          break;
        case r'delivery_person':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deliveryPerson = valueDes;
          break;
        case r'location_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.locationCode = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryLocation),
          ) as DeliveryLocation;
          result.location.replace(valueDes);
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.tax = valueDes;
          break;
        case r'delivery_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.deliveryCharges = valueDes;
          break;
        case r'applied_discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.appliedDiscount = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.total = valueDes;
          break;
        case r'payment_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMode = valueDes;
          break;
        case r'amount_paid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.amountPaid = valueDes;
          break;
        case r'fk_kitchen_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fkKitchenCode = valueDes;
          break;
        case r'order_menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderOrderMenuEnum),
          ) as OrderOrderMenuEnum;
          result.orderMenu = valueDes;
          break;
        case r'delivery_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryTime = valueDes;
          break;
        case r'delivery_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryEndTime = valueDes;
          break;
        case r'delivery_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDeliveryTypeEnum),
          ) as OrderDeliveryTypeEnum;
          result.deliveryType = valueDes;
          break;
        case r'tp_delivery_order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tpDeliveryOrderId = valueDes;
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

class OrderDeliveryStatusEnum extends EnumClass {

  /// Delivery status
  @BuiltValueEnumConst(wireName: r'Pending')
  static const OrderDeliveryStatusEnum pending = _$orderDeliveryStatusEnum_pending;
  /// Delivery status
  @BuiltValueEnumConst(wireName: r'Dispatched')
  static const OrderDeliveryStatusEnum dispatched = _$orderDeliveryStatusEnum_dispatched;
  /// Delivery status
  @BuiltValueEnumConst(wireName: r'Delivered')
  static const OrderDeliveryStatusEnum delivered = _$orderDeliveryStatusEnum_delivered;
  /// Delivery status
  @BuiltValueEnumConst(wireName: r'Failed')
  static const OrderDeliveryStatusEnum failed = _$orderDeliveryStatusEnum_failed;
  /// Delivery status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderDeliveryStatusEnum unknownDefaultOpenApi = _$orderDeliveryStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrderDeliveryStatusEnum> get serializer => _$orderDeliveryStatusEnumSerializer;

  const OrderDeliveryStatusEnum._(String name): super(name);

  static BuiltSet<OrderDeliveryStatusEnum> get values => _$orderDeliveryStatusEnumValues;
  static OrderDeliveryStatusEnum valueOf(String name) => _$orderDeliveryStatusEnumValueOf(name);
}

class OrderOrderStatusEnum extends EnumClass {

  /// Order status
  @BuiltValueEnumConst(wireName: r'New')
  static const OrderOrderStatusEnum new_ = _$orderOrderStatusEnum_new_;
  /// Order status
  @BuiltValueEnumConst(wireName: r'Processing')
  static const OrderOrderStatusEnum processing = _$orderOrderStatusEnum_processing;
  /// Order status
  @BuiltValueEnumConst(wireName: r'Complete')
  static const OrderOrderStatusEnum complete = _$orderOrderStatusEnum_complete;
  /// Order status
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const OrderOrderStatusEnum cancelled = _$orderOrderStatusEnum_cancelled;
  /// Order status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderOrderStatusEnum unknownDefaultOpenApi = _$orderOrderStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrderOrderStatusEnum> get serializer => _$orderOrderStatusEnumSerializer;

  const OrderOrderStatusEnum._(String name): super(name);

  static BuiltSet<OrderOrderStatusEnum> get values => _$orderOrderStatusEnumValues;
  static OrderOrderStatusEnum valueOf(String name) => _$orderOrderStatusEnumValueOf(name);
}

class OrderOrderMenuEnum extends EnumClass {

  /// Order menu type
  @BuiltValueEnumConst(wireName: r'lunch')
  static const OrderOrderMenuEnum lunch = _$orderOrderMenuEnum_lunch;
  /// Order menu type
  @BuiltValueEnumConst(wireName: r'dinner')
  static const OrderOrderMenuEnum dinner = _$orderOrderMenuEnum_dinner;
  /// Order menu type
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderOrderMenuEnum unknownDefaultOpenApi = _$orderOrderMenuEnum_unknownDefaultOpenApi;

  static Serializer<OrderOrderMenuEnum> get serializer => _$orderOrderMenuEnumSerializer;

  const OrderOrderMenuEnum._(String name): super(name);

  static BuiltSet<OrderOrderMenuEnum> get values => _$orderOrderMenuEnumValues;
  static OrderOrderMenuEnum valueOf(String name) => _$orderOrderMenuEnumValueOf(name);
}

class OrderDeliveryTypeEnum extends EnumClass {

  /// Delivery type
  @BuiltValueEnumConst(wireName: r'delivery')
  static const OrderDeliveryTypeEnum delivery = _$orderDeliveryTypeEnum_delivery;
  /// Delivery type
  @BuiltValueEnumConst(wireName: r'pickup')
  static const OrderDeliveryTypeEnum pickup = _$orderDeliveryTypeEnum_pickup;
  /// Delivery type
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderDeliveryTypeEnum unknownDefaultOpenApi = _$orderDeliveryTypeEnum_unknownDefaultOpenApi;

  static Serializer<OrderDeliveryTypeEnum> get serializer => _$orderDeliveryTypeEnumSerializer;

  const OrderDeliveryTypeEnum._(String name): super(name);

  static BuiltSet<OrderDeliveryTypeEnum> get values => _$orderDeliveryTypeEnumValues;
  static OrderDeliveryTypeEnum valueOf(String name) => _$orderDeliveryTypeEnumValueOf(name);
}

