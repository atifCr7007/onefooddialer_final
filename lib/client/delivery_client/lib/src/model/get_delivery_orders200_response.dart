//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/openapi.dart';
import 'package:openapi/src/model/order.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_delivery_orders200_response.g.dart';

/// GetDeliveryOrders200Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class GetDeliveryOrders200Response implements Built<GetDeliveryOrders200Response, GetDeliveryOrders200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Order>? get data;

  GetDeliveryOrders200Response._();

  factory GetDeliveryOrders200Response([void updates(GetDeliveryOrders200ResponseBuilder b)]) = _$GetDeliveryOrders200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetDeliveryOrders200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetDeliveryOrders200Response> get serializer => _$GetDeliveryOrders200ResponseSerializer();
}

class _$GetDeliveryOrders200ResponseSerializer implements PrimitiveSerializer<GetDeliveryOrders200Response> {
  @override
  final Iterable<Type> types = const [GetDeliveryOrders200Response, _$GetDeliveryOrders200Response];

  @override
  final String wireName = r'GetDeliveryOrders200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetDeliveryOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Order)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetDeliveryOrders200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetDeliveryOrders200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Order)]),
          ) as BuiltList<Order>;
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
  GetDeliveryOrders200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetDeliveryOrders200ResponseBuilder();
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

