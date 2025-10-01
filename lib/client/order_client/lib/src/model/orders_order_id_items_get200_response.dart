//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:order_client/src/model/orders_order_id_items_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_order_id_items_get200_response.g.dart';

/// OrdersOrderIdItemsGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class OrdersOrderIdItemsGet200Response implements Built<OrdersOrderIdItemsGet200Response, OrdersOrderIdItemsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  OrdersOrderIdItemsGet200ResponseStatusEnum? get status;
  // enum statusEnum {  success,  };

  @BuiltValueField(wireName: r'data')
  OrdersOrderIdItemsGet200ResponseData? get data;

  OrdersOrderIdItemsGet200Response._();

  factory OrdersOrderIdItemsGet200Response([void updates(OrdersOrderIdItemsGet200ResponseBuilder b)]) = _$OrdersOrderIdItemsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersOrderIdItemsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersOrderIdItemsGet200Response> get serializer => _$OrdersOrderIdItemsGet200ResponseSerializer();
}

class _$OrdersOrderIdItemsGet200ResponseSerializer implements PrimitiveSerializer<OrdersOrderIdItemsGet200Response> {
  @override
  final Iterable<Type> types = const [OrdersOrderIdItemsGet200Response, _$OrdersOrderIdItemsGet200Response];

  @override
  final String wireName = r'OrdersOrderIdItemsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersOrderIdItemsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrdersOrderIdItemsGet200ResponseStatusEnum),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(OrdersOrderIdItemsGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersOrderIdItemsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrdersOrderIdItemsGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdersOrderIdItemsGet200ResponseStatusEnum),
          ) as OrdersOrderIdItemsGet200ResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrdersOrderIdItemsGet200ResponseData),
          ) as OrdersOrderIdItemsGet200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersOrderIdItemsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersOrderIdItemsGet200ResponseBuilder();
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

class OrdersOrderIdItemsGet200ResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'success')
  static const OrdersOrderIdItemsGet200ResponseStatusEnum success = _$ordersOrderIdItemsGet200ResponseStatusEnum_success;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OrdersOrderIdItemsGet200ResponseStatusEnum unknownDefaultOpenApi = _$ordersOrderIdItemsGet200ResponseStatusEnum_unknownDefaultOpenApi;

  static Serializer<OrdersOrderIdItemsGet200ResponseStatusEnum> get serializer => _$ordersOrderIdItemsGet200ResponseStatusEnumSerializer;

  const OrdersOrderIdItemsGet200ResponseStatusEnum._(String name): super(name);

  static BuiltSet<OrdersOrderIdItemsGet200ResponseStatusEnum> get values => _$ordersOrderIdItemsGet200ResponseStatusEnumValues;
  static OrdersOrderIdItemsGet200ResponseStatusEnum valueOf(String name) => _$ordersOrderIdItemsGet200ResponseStatusEnumValueOf(name);
}

