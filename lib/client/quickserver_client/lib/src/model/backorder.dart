//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/date.dart';
import 'package:quickserver_client/src/model/backorder_product.dart';
import 'package:quickserver_client/src/model/order_customer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backorder.g.dart';

/// Backorder
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [unitId] 
/// * [orderId] 
/// * [orderNo] 
/// * [customerId] 
/// * [customer] 
/// * [productId] 
/// * [productName] 
/// * [product] 
/// * [quantity] 
/// * [amount] 
/// * [orderDate] 
/// * [orderMenu] 
/// * [reason] 
/// * [status] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Backorder implements Built<Backorder, BackorderBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'order_id')
  int? get orderId;

  @BuiltValueField(wireName: r'order_no')
  String? get orderNo;

  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  @BuiltValueField(wireName: r'customer')
  OrderCustomer? get customer;

  @BuiltValueField(wireName: r'product_id')
  int? get productId;

  @BuiltValueField(wireName: r'product_name')
  String? get productName;

  @BuiltValueField(wireName: r'product')
  BackorderProduct? get product;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'amount')
  double? get amount;

  @BuiltValueField(wireName: r'order_date')
  Date? get orderDate;

  @BuiltValueField(wireName: r'order_menu')
  String? get orderMenu;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Backorder._();

  factory Backorder([void updates(BackorderBuilder b)]) = _$Backorder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackorderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Backorder> get serializer => _$BackorderSerializer();
}

class _$BackorderSerializer implements PrimitiveSerializer<Backorder> {
  @override
  final Iterable<Type> types = const [Backorder, _$Backorder];

  @override
  final String wireName = r'Backorder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Backorder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.companyId != null) {
      yield r'company_id';
      yield serializers.serialize(
        object.companyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType(int),
      );
    }
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
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
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(OrderCustomer),
      );
    }
    if (object.productId != null) {
      yield r'product_id';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(int),
      );
    }
    if (object.productName != null) {
      yield r'product_name';
      yield serializers.serialize(
        object.productName,
        specifiedType: const FullType(String),
      );
    }
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(BackorderProduct),
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
    if (object.orderDate != null) {
      yield r'order_date';
      yield serializers.serialize(
        object.orderDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.orderMenu != null) {
      yield r'order_menu';
      yield serializers.serialize(
        object.orderMenu,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Backorder object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackorderBuilder result,
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
        case r'company_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.companyId = valueDes;
          break;
        case r'unit_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unitId = valueDes;
          break;
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        case r'order_no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderNo = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderCustomer),
          ) as OrderCustomer;
          result.customer.replace(valueDes);
          break;
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'product_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BackorderProduct),
          ) as BackorderProduct;
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
        case r'order_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.orderDate = valueDes;
          break;
        case r'order_menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderMenu = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Backorder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackorderBuilder();
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

