//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/order_product.dart';
import 'package:openapi/src/model/order_customer.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

/// Order
///
/// Properties:
/// * [id] 
/// * [orderNo] 
/// * [customer] 
/// * [product] 
/// * [quantity] 
/// * [amount] 
/// * [tax] 
/// * [deliveryCharges] 
/// * [netAmount] 
/// * [orderStatus] 
/// * [deliveryStatus] 
/// * [orderDate] 
@BuiltValue()
abstract class Order implements Built<Order, OrderBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'order_no')
  String? get orderNo;

  @BuiltValueField(wireName: r'customer')
  OrderCustomer? get customer;

  @BuiltValueField(wireName: r'product')
  OrderProduct? get product;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'amount')
  double? get amount;

  @BuiltValueField(wireName: r'tax')
  double? get tax;

  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  @BuiltValueField(wireName: r'net_amount')
  double? get netAmount;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'delivery_status')
  String? get deliveryStatus;

  @BuiltValueField(wireName: r'order_date')
  Date? get orderDate;

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
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(OrderCustomer),
      );
    }
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(OrderProduct),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
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
    if (object.netAmount != null) {
      yield r'net_amount';
      yield serializers.serialize(
        object.netAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.orderStatus != null) {
      yield r'order_status';
      yield serializers.serialize(
        object.orderStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.deliveryStatus != null) {
      yield r'delivery_status';
      yield serializers.serialize(
        object.deliveryStatus,
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
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderCustomer),
          ) as OrderCustomer;
          result.customer.replace(valueDes);
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderProduct),
          ) as OrderProduct;
          result.product.replace(valueDes);
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
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
        case r'net_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.netAmount = valueDes;
          break;
        case r'order_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderStatus = valueDes;
          break;
        case r'delivery_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deliveryStatus = valueDes;
          break;
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.orderDate = valueDes;
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

