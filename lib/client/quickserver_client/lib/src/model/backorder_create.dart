//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:quickserver_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backorder_create.g.dart';

/// BackorderCreate
///
/// Properties:
/// * [companyId] 
/// * [unitId] 
/// * [orderId] 
/// * [orderNo] 
/// * [customerId] 
/// * [productId] 
/// * [productName] 
/// * [quantity] 
/// * [amount] 
/// * [orderDate] 
/// * [orderMenu] 
/// * [reason] 
/// * [status] 
@BuiltValue()
abstract class BackorderCreate implements Built<BackorderCreate, BackorderCreateBuilder> {
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'order_id')
  int get orderId;

  @BuiltValueField(wireName: r'order_no')
  String get orderNo;

  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  @BuiltValueField(wireName: r'product_id')
  int get productId;

  @BuiltValueField(wireName: r'product_name')
  String get productName;

  @BuiltValueField(wireName: r'quantity')
  int get quantity;

  @BuiltValueField(wireName: r'amount')
  double get amount;

  @BuiltValueField(wireName: r'order_date')
  Date get orderDate;

  @BuiltValueField(wireName: r'order_menu')
  String get orderMenu;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'status')
  String? get status;

  BackorderCreate._();

  factory BackorderCreate([void updates(BackorderCreateBuilder b)]) = _$BackorderCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackorderCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackorderCreate> get serializer => _$BackorderCreateSerializer();
}

class _$BackorderCreateSerializer implements PrimitiveSerializer<BackorderCreate> {
  @override
  final Iterable<Type> types = const [BackorderCreate, _$BackorderCreate];

  @override
  final String wireName = r'BackorderCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackorderCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(int),
    );
    yield r'order_no';
    yield serializers.serialize(
      object.orderNo,
      specifiedType: const FullType(String),
    );
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    yield r'product_id';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(int),
    );
    yield r'product_name';
    yield serializers.serialize(
      object.productName,
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
    yield r'order_date';
    yield serializers.serialize(
      object.orderDate,
      specifiedType: const FullType(Date),
    );
    yield r'order_menu';
    yield serializers.serialize(
      object.orderMenu,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackorderCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackorderCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackorderCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackorderCreateBuilder();
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

