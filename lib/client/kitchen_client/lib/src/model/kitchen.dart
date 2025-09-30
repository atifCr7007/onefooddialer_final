//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/kitchen_product.dart';
import 'package:openapi/src/model/kitchen_kitchen_master.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kitchen.g.dart';

/// Kitchen
///
/// Properties:
/// * [id] 
/// * [companyId] 
/// * [unitId] 
/// * [productId] 
/// * [kitchenId] 
/// * [totalOrder] 
/// * [prepared] 
/// * [remainingOrders] 
/// * [date] 
/// * [orderMenu] 
/// * [status] 
/// * [product] 
/// * [kitchenMaster] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Kitchen implements Built<Kitchen, KitchenBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  @BuiltValueField(wireName: r'product_id')
  int? get productId;

  @BuiltValueField(wireName: r'kitchen_id')
  int? get kitchenId;

  @BuiltValueField(wireName: r'total_order')
  int? get totalOrder;

  @BuiltValueField(wireName: r'prepared')
  int? get prepared;

  @BuiltValueField(wireName: r'remaining_orders')
  int? get remainingOrders;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'order_menu')
  String? get orderMenu;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'product')
  KitchenProduct? get product;

  @BuiltValueField(wireName: r'kitchen_master')
  KitchenKitchenMaster? get kitchenMaster;

  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Kitchen._();

  factory Kitchen([void updates(KitchenBuilder b)]) = _$Kitchen;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KitchenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Kitchen> get serializer => _$KitchenSerializer();
}

class _$KitchenSerializer implements PrimitiveSerializer<Kitchen> {
  @override
  final Iterable<Type> types = const [Kitchen, _$Kitchen];

  @override
  final String wireName = r'Kitchen';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Kitchen object, {
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
    if (object.productId != null) {
      yield r'product_id';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(int),
      );
    }
    if (object.kitchenId != null) {
      yield r'kitchen_id';
      yield serializers.serialize(
        object.kitchenId,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalOrder != null) {
      yield r'total_order';
      yield serializers.serialize(
        object.totalOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.prepared != null) {
      yield r'prepared';
      yield serializers.serialize(
        object.prepared,
        specifiedType: const FullType(int),
      );
    }
    if (object.remainingOrders != null) {
      yield r'remaining_orders';
      yield serializers.serialize(
        object.remainingOrders,
        specifiedType: const FullType(int),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(KitchenProduct),
      );
    }
    if (object.kitchenMaster != null) {
      yield r'kitchen_master';
      yield serializers.serialize(
        object.kitchenMaster,
        specifiedType: const FullType(KitchenKitchenMaster),
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
    Kitchen object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KitchenBuilder result,
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
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'kitchen_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.kitchenId = valueDes;
          break;
        case r'total_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOrder = valueDes;
          break;
        case r'prepared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.prepared = valueDes;
          break;
        case r'remaining_orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remainingOrders = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'order_menu':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderMenu = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KitchenProduct),
          ) as KitchenProduct;
          result.product.replace(valueDes);
          break;
        case r'kitchen_master':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KitchenKitchenMaster),
          ) as KitchenKitchenMaster;
          result.kitchenMaster.replace(valueDes);
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
  Kitchen deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenBuilder();
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

