//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_order_id_delete_request.g.dart';

/// OrdersOrderIdDeleteRequest
///
/// Properties:
/// * [reason] - Reason for cancellation
/// * [refundAmount] - Amount to refund (if applicable)
/// * [notifyCustomer] - Whether to notify customer of cancellation
@BuiltValue()
abstract class OrdersOrderIdDeleteRequest implements Built<OrdersOrderIdDeleteRequest, OrdersOrderIdDeleteRequestBuilder> {
  /// Reason for cancellation
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Amount to refund (if applicable)
  @BuiltValueField(wireName: r'refundAmount')
  double? get refundAmount;

  /// Whether to notify customer of cancellation
  @BuiltValueField(wireName: r'notifyCustomer')
  bool? get notifyCustomer;

  OrdersOrderIdDeleteRequest._();

  factory OrdersOrderIdDeleteRequest([void updates(OrdersOrderIdDeleteRequestBuilder b)]) = _$OrdersOrderIdDeleteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersOrderIdDeleteRequestBuilder b) => b
      ..notifyCustomer = true;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersOrderIdDeleteRequest> get serializer => _$OrdersOrderIdDeleteRequestSerializer();
}

class _$OrdersOrderIdDeleteRequestSerializer implements PrimitiveSerializer<OrdersOrderIdDeleteRequest> {
  @override
  final Iterable<Type> types = const [OrdersOrderIdDeleteRequest, _$OrdersOrderIdDeleteRequest];

  @override
  final String wireName = r'OrdersOrderIdDeleteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersOrderIdDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.refundAmount != null) {
      yield r'refundAmount';
      yield serializers.serialize(
        object.refundAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.notifyCustomer != null) {
      yield r'notifyCustomer';
      yield serializers.serialize(
        object.notifyCustomer,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersOrderIdDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrdersOrderIdDeleteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'refundAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.refundAmount = valueDes;
          break;
        case r'notifyCustomer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.notifyCustomer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersOrderIdDeleteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersOrderIdDeleteRequestBuilder();
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

