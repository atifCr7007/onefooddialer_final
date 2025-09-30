//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_callback_response_data.g.dart';

/// PaymentCallbackResponseData
///
/// Properties:
/// * [transactionId] - Payment transaction ID
/// * [status] - Transaction status
/// * [gatewayTransactionId] - Gateway's transaction ID
@BuiltValue()
abstract class PaymentCallbackResponseData implements Built<PaymentCallbackResponseData, PaymentCallbackResponseDataBuilder> {
  /// Payment transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  int? get transactionId;

  /// Transaction status
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Gateway's transaction ID
  @BuiltValueField(wireName: r'gateway_transaction_id')
  String? get gatewayTransactionId;

  PaymentCallbackResponseData._();

  factory PaymentCallbackResponseData([void updates(PaymentCallbackResponseDataBuilder b)]) = _$PaymentCallbackResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentCallbackResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentCallbackResponseData> get serializer => _$PaymentCallbackResponseDataSerializer();
}

class _$PaymentCallbackResponseDataSerializer implements PrimitiveSerializer<PaymentCallbackResponseData> {
  @override
  final Iterable<Type> types = const [PaymentCallbackResponseData, _$PaymentCallbackResponseData];

  @override
  final String wireName = r'PaymentCallbackResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentCallbackResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType(int),
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
    PaymentCallbackResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentCallbackResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.transactionId = valueDes;
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
  PaymentCallbackResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentCallbackResponseDataBuilder();
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

