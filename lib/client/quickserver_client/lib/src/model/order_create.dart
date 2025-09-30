//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_create.g.dart';

/// OrderCreate
///
/// Properties:
/// * [customerCode] 
/// * [customerName] 
/// * [phone] 
/// * [emailAddress] 
/// * [locationCode] 
/// * [locationName] 
/// * [productCode] 
/// * [productName] 
/// * [productType] 
/// * [quantity] 
/// * [amount] 
/// * [tax] 
/// * [deliveryCharges] 
/// * [orderDate] 
/// * [shipAddress] 
/// * [orderMenu] 
@BuiltValue()
abstract class OrderCreate implements Built<OrderCreate, OrderCreateBuilder> {
  @BuiltValueField(wireName: r'customer_code')
  int get customerCode;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email_address')
  String? get emailAddress;

  @BuiltValueField(wireName: r'location_code')
  int get locationCode;

  @BuiltValueField(wireName: r'location_name')
  String get locationName;

  @BuiltValueField(wireName: r'product_code')
  int get productCode;

  @BuiltValueField(wireName: r'product_name')
  String get productName;

  @BuiltValueField(wireName: r'product_type')
  String get productType;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'amount')
  double get amount;

  @BuiltValueField(wireName: r'tax')
  double? get tax;

  @BuiltValueField(wireName: r'delivery_charges')
  double? get deliveryCharges;

  @BuiltValueField(wireName: r'order_date')
  Date get orderDate;

  @BuiltValueField(wireName: r'ship_address')
  String get shipAddress;

  @BuiltValueField(wireName: r'order_menu')
  String get orderMenu;

  OrderCreate._();

  factory OrderCreate([void updates(OrderCreateBuilder b)]) = _$OrderCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderCreate> get serializer => _$OrderCreateSerializer();
}

class _$OrderCreateSerializer implements PrimitiveSerializer<OrderCreate> {
  @override
  final Iterable<Type> types = const [OrderCreate, _$OrderCreate];

  @override
  final String wireName = r'OrderCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customer_code';
    yield serializers.serialize(
      object.customerCode,
      specifiedType: const FullType(int),
    );
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    if (object.emailAddress != null) {
      yield r'email_address';
      yield serializers.serialize(
        object.emailAddress,
        specifiedType: const FullType(String),
      );
    }
    yield r'location_code';
    yield serializers.serialize(
      object.locationCode,
      specifiedType: const FullType(int),
    );
    yield r'location_name';
    yield serializers.serialize(
      object.locationName,
      specifiedType: const FullType(String),
    );
    yield r'product_code';
    yield serializers.serialize(
      object.productCode,
      specifiedType: const FullType(int),
    );
    yield r'product_name';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    yield r'product_type';
    yield serializers.serialize(
      object.productType,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(int),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(double),
    );
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
    yield r'order_date';
    yield serializers.serialize(
      object.orderDate,
      specifiedType: const FullType(Date),
    );
    yield r'ship_address';
    yield serializers.serialize(
      object.shipAddress,
      specifiedType: const FullType(String),
    );
    yield r'order_menu';
    yield serializers.serialize(
      object.orderMenu,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'location_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.locationCode = valueDes;
          break;
        case r'location_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locationName = valueDes;
          break;
        case r'product_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productCode = valueDes;
          break;
        case r'product_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'product_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productType = valueDes;
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
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.orderDate = valueDes;
          break;
        case r'ship_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shipAddress = valueDes;
          break;
        case r'order_menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderMenu = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderCreateBuilder();
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

