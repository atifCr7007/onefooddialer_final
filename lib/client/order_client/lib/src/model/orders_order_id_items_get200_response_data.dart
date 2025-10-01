//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:order_client/src/model/order_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_order_id_items_get200_response_data.g.dart';

/// OrdersOrderIdItemsGet200ResponseData
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class OrdersOrderIdItemsGet200ResponseData implements Built<OrdersOrderIdItemsGet200ResponseData, OrdersOrderIdItemsGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<OrderItem>? get items;

  OrdersOrderIdItemsGet200ResponseData._();

  factory OrdersOrderIdItemsGet200ResponseData([void updates(OrdersOrderIdItemsGet200ResponseDataBuilder b)]) = _$OrdersOrderIdItemsGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersOrderIdItemsGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersOrderIdItemsGet200ResponseData> get serializer => _$OrdersOrderIdItemsGet200ResponseDataSerializer();
}

class _$OrdersOrderIdItemsGet200ResponseDataSerializer implements PrimitiveSerializer<OrdersOrderIdItemsGet200ResponseData> {
  @override
  final Iterable<Type> types = const [OrdersOrderIdItemsGet200ResponseData, _$OrdersOrderIdItemsGet200ResponseData];

  @override
  final String wireName = r'OrdersOrderIdItemsGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersOrderIdItemsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersOrderIdItemsGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrdersOrderIdItemsGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderItem)]),
          ) as BuiltList<OrderItem>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersOrderIdItemsGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersOrderIdItemsGet200ResponseDataBuilder();
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

