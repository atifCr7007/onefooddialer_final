//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_status_response_data.g.dart';

/// PaymentStatusResponseData
///
/// Properties:
/// * [transactionId] - Payment transaction ID
/// * [amount] - Payment amount
/// * [status] - Transaction status
/// * [gateway] - Payment gateway used
/// * [gatewayTransactionId] - Gateway's transaction ID
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class PaymentStatusResponseData implements Built<PaymentStatusResponseData, PaymentStatusResponseDataBuilder> {
  /// Payment transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  int? get transactionId;

  /// Payment amount
  @BuiltValueField(wireName: r'amount')
  double? get amount;

  /// Transaction status
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Payment gateway used
  @BuiltValueField(wireName: r'gateway')
  String? get gateway;

  /// Gateway's transaction ID
  @BuiltValueField(wireName: r'gateway_transaction_id')
  String? get gatewayTransactionId;

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  PaymentStatusResponseData._();

  factory PaymentStatusResponseData([void updates(PaymentStatusResponseDataBuilder b)]) = _$PaymentStatusResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentStatusResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentStatusResponseData> get serializer => _$PaymentStatusResponseDataSerializer();
}

class _$PaymentStatusResponseDataSerializer implements PrimitiveSerializer<PaymentStatusResponseData> {
  @override
  final Iterable<Type> types = const [PaymentStatusResponseData, _$PaymentStatusResponseData];

  @override
  final String wireName = r'PaymentStatusResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentStatusResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.gateway != null) {
      yield r'gateway';
      yield serializers.serialize(
        object.gateway,
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
    PaymentStatusResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentStatusResponseDataBuilder result,
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
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gateway = valueDes;
          break;
        case r'gateway_transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gatewayTransactionId = valueDes;
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
  PaymentStatusResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentStatusResponseDataBuilder();
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

