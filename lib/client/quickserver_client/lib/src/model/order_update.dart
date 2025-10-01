//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_update.g.dart';

/// OrderUpdate
///
/// Properties:
/// * [customerName] 
/// * [phone] 
/// * [emailAddress] 
/// * [quantity] 
/// * [amount] 
/// * [tax] 
/// * [deliveryCharges] 
/// * [orderStatus] 
/// * [deliveryStatus] 
/// * [shipAddress] 
@BuiltValue()
abstract class OrderUpdate implements Built<OrderUpdate, OrderUpdateBuilder> {
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'amount')
  double? get amount;

  @BuiltValueField(wireName: r'tax')
  double? get tax;

  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  @BuiltValueField(wireName: r'order_status')
  String? get orderStatus;

  @BuiltValueField(wireName: r'delivery_status')
  String? get deliveryStatus;

  @BuiltValueField(wireName: r'ship_address')
  String? get shipAddress;

  OrderUpdate._();

  factory OrderUpdate([void updates(OrderUpdateBuilder b)]) = _$OrderUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderUpdate> get serializer => _$OrderUpdateSerializer();
}

class _$OrderUpdateSerializer implements PrimitiveSerializer<OrderUpdate> {
  @override
  final Iterable<Type> types = const [OrderUpdate, _$OrderUpdate];

  @override
  final String wireName = r'OrderUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.emailAddress != null) {
      yield r'email_address';
      yield serializers.serialize(
        object.emailAddress,
        specifiedType: const FullType(String),
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
    if (object.shipAddress != null) {
      yield r'ship_address';
      yield serializers.serialize(
        object.shipAddress,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'email_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailAddress = valueDes;
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
        case r'ship_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shipAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderUpdateBuilder();
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

