//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refund_payment_request.g.dart';

/// RefundPaymentRequest
///
/// Properties:
/// * [amount] - Amount to refund (if partial refund)
@BuiltValue()
abstract class RefundPaymentRequest implements Built<RefundPaymentRequest, RefundPaymentRequestBuilder> {
  /// Amount to refund (if partial refund)
  @BuiltValueField(wireName: r'amount')
  double? get amount;

  RefundPaymentRequest._();

  factory RefundPaymentRequest([void updates(RefundPaymentRequestBuilder b)]) = _$RefundPaymentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefundPaymentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefundPaymentRequest> get serializer => _$RefundPaymentRequestSerializer();
}

class _$RefundPaymentRequestSerializer implements PrimitiveSerializer<RefundPaymentRequest> {
  @override
  final Iterable<Type> types = const [RefundPaymentRequest, _$RefundPaymentRequest];

  @override
  final String wireName = r'RefundPaymentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefundPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RefundPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefundPaymentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefundPaymentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefundPaymentRequestBuilder();
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

