//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_payment_response_data.g.dart';

/// InitiatePaymentResponseData
///
/// Properties:
/// * [transactionId] - Payment transaction ID
/// * [amount] - Payment amount
/// * [status] - Transaction status
@BuiltValue()
abstract class InitiatePaymentResponseData implements Built<InitiatePaymentResponseData, InitiatePaymentResponseDataBuilder> {
  /// Payment transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  int? get transactionId;

  /// Payment amount
  @BuiltValueField(wireName: r'amount')
  double? get amount;

  /// Transaction status
  @BuiltValueField(wireName: r'status')
  String? get status;

  InitiatePaymentResponseData._();

  factory InitiatePaymentResponseData([void updates(InitiatePaymentResponseDataBuilder b)]) = _$InitiatePaymentResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiatePaymentResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiatePaymentResponseData> get serializer => _$InitiatePaymentResponseDataSerializer();
}

class _$InitiatePaymentResponseDataSerializer implements PrimitiveSerializer<InitiatePaymentResponseData> {
  @override
  final Iterable<Type> types = const [InitiatePaymentResponseData, _$InitiatePaymentResponseData];

  @override
  final String wireName = r'InitiatePaymentResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiatePaymentResponseData object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiatePaymentResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitiatePaymentResponseDataBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InitiatePaymentResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiatePaymentResponseDataBuilder();
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

