//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:order_client/src/model/item_customization.dart';
import 'package:built_collection/built_collection.dart';
import 'package:order_client/src/model/nutritional_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_item.g.dart';

/// OrderItem
///
/// Properties:
/// * [id] 
/// * [orderId] 
/// * [menuItemId] 
/// * [name] - Item name at time of order
/// * [description] - Item description at time of order
/// * [quantity] - Quantity ordered
/// * [unitPrice] - Price per unit at time of order
/// * [totalPrice] - Total price for this item (quantity × unit price)
/// * [customizations] - Customizations applied to this item
/// * [specialInstructions] - Special instructions for this item
/// * [status] - Status of this specific item
/// * [allergens] - Allergens present in this item
/// * [nutritionalInfo] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class OrderItem implements Built<OrderItem, OrderItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'menuItemId')
  String? get menuItemId;

  /// Item name at time of order
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Item description at time of order
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Quantity ordered
  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  /// Price per unit at time of order
  @BuiltValueField(wireName: r'unitPrice')
  double? get unitPrice;

  /// Total price for this item (quantity × unit price)
  @BuiltValueField(wireName: r'totalPrice')
  double? get totalPrice;

  /// Customizations applied to this item
  @BuiltValueField(wireName: r'customizations')
  BuiltList<ItemCustomization>? get customizations;

  /// Special instructions for this item
  @BuiltValueField(wireName: r'specialInstructions')
  String? get specialInstructions;

  /// Status of this specific item
  @BuiltValueField(wireName: r'status')
  OrderItemStatusEnum? get status;
  // enum statusEnum {  pending,  confirmed,  preparing,  ready,  served,  };

  /// Allergens present in this item
  @BuiltValueField(wireName: r'allergens')
  BuiltList<String>? get allergens;

  @BuiltValueField(wireName: r'nutritionalInfo')
  NutritionalInfo? get nutritionalInfo;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  OrderItem._();

  factory OrderItem([void updates(OrderItemBuilder b)]) = _$OrderItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderItem> get serializer => _$OrderItemSerializer();
}

class _$OrderItemSerializer implements PrimitiveSerializer<OrderItem> {
  @override
  final Iterable<Type> types = const [OrderItem, _$OrderItem];

  @override
  final String wireName = r'OrderItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.menuItemId != null) {
      yield r'menuItemId';
      yield serializers.serialize(
        object.menuItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.totalPrice != null) {
      yield r'totalPrice';
      yield serializers.serialize(
        object.totalPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.customizations != null) {
      yield r'customizations';
      yield serializers.serialize(
        object.customizations,
        specifiedType: const FullType(BuiltList, [FullType(ItemCustomization)]),
      );
    }
    if (object.specialInstructions != null) {
      yield r'specialInstructions';
      yield serializers.serialize(
        object.specialInstructions,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderItemStatusEnum),
      );
    }
    if (object.allergens != null) {
      yield r'allergens';
      yield serializers.serialize(
        object.allergens,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.nutritionalInfo != null) {
      yield r'nutritionalInfo';
      yield serializers.serialize(
        object.nutritionalInfo,
        specifiedType: const FullType(NutritionalInfo),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderItemBuilder result,
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
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'menuItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.menuItemId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitPrice = valueDes;
          break;
        case r'totalPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPrice = valueDes;
          break;
        case r'customizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemCustomization)]),
          ) as BuiltList<ItemCustomization>;
          result.customizations.replace(valueDes);
          break;
        case r'specialInstructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.specialInstructions = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderItemStatusEnum),
          ) as OrderItemStatusEnum;
          result.status = valueDes;
          break;
        case r'allergens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.allergens.replace(valueDes);
          break;
        case r'nutritionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NutritionalInfo),
          ) as NutritionalInfo;
          result.nutritionalInfo.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderItemBuilder();
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

class OrderItemStatusEnum extends EnumClass {

  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'pending')
  static const OrderItemStatusEnum pending = _$orderItemStatusEnum_pending;
  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'confirmed')
  static const OrderItemStatusEnum confirmed = _$orderItemStatusEnum_confirmed;
  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'preparing')
  static const OrderItemStatusEnum preparing = _$orderItemStatusEnum_preparing;
  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'ready')
  static const OrderItemStatusEnum ready = _$orderItemStatusEnum_ready;
  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'served')
  static const OrderItemStatusEnum served = _$orderItemStatusEnum_served;
  /// Status of this specific item
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrderItemStatusEnum unknownDefaultOpenApi = _$orderItemStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrderItemStatusEnum> get serializer => _$orderItemStatusEnumSerializer;

  const OrderItemStatusEnum._(String name): super(name);

  static BuiltSet<OrderItemStatusEnum> get values => _$orderItemStatusEnumValues;
  static OrderItemStatusEnum valueOf(String name) => _$orderItemStatusEnumValueOf(name);
}

