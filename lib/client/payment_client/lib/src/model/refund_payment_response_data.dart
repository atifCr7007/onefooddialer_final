//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refund_payment_response_data.g.dart';

/// RefundPaymentResponseData
///
/// Properties:
/// * [success] - Whether the refund was successful
/// * [status] - Refund status
/// * [gatewayTransactionId] - Gateway's transaction ID for the refund
@BuiltValue()
abstract class RefundPaymentResponseData implements Built<RefundPaymentResponseData, RefundPaymentResponseDataBuilder> {
  /// Whether the refund was successful
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// Refund status
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Gateway's transaction ID for the refund
  @BuiltValueField(wireName: r'gateway_transaction_id')
  String? get gatewayTransactionId;

  RefundPaymentResponseData._();

  factory RefundPaymentResponseData([void updates(RefundPaymentResponseDataBuilder b)]) = _$RefundPaymentResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefundPaymentResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefundPaymentResponseData> get serializer => _$RefundPaymentResponseDataSerializer();
}

class _$RefundPaymentResponseDataSerializer implements PrimitiveSerializer<RefundPaymentResponseData> {
  @override
  final Iterable<Type> types = const [RefundPaymentResponseData, _$RefundPaymentResponseData];

  @override
  final String wireName = r'RefundPaymentResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefundPaymentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.gatewayTransactionId != null) {
      yield r'gateway_transaction_id';
      yield serializers.serialize(
        object.gatewayTransactionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefundPaymentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefundPaymentResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'gateway_transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gatewayTransactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefundPaymentResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefundPaymentResponseDataBuilder();
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

