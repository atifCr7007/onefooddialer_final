//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_subscription_payment_request.g.dart';

/// ProcessSubscriptionPaymentRequest
///
/// Properties:
/// * [paymentMethod] - Payment method
/// * [paymentStatus] - Payment status
/// * [transactionId] - Transaction ID
/// * [paymentDetails] - Additional payment details
@BuiltValue()
abstract class ProcessSubscriptionPaymentRequest implements Built<ProcessSubscriptionPaymentRequest, ProcessSubscriptionPaymentRequestBuilder> {
  /// Payment method
  @BuiltValueField(wireName: r'payment_method')
  String get paymentMethod;

  /// Payment status
  @BuiltValueField(wireName: r'payment_status')
  ProcessSubscriptionPaymentRequestPaymentStatusEnum get paymentStatus;
  // enum paymentStatusEnum {  pending,  completed,  failed,  };

  /// Transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  /// Additional payment details
  @BuiltValueField(wireName: r'payment_details')
  Map<String,dynamic>? get paymentDetails;

  ProcessSubscriptionPaymentRequest._();

  factory ProcessSubscriptionPaymentRequest([void updates(ProcessSubscriptionPaymentRequestBuilder b)]) = _$ProcessSubscriptionPaymentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessSubscriptionPaymentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessSubscriptionPaymentRequest> get serializer => _$ProcessSubscriptionPaymentRequestSerializer();
}

class _$ProcessSubscriptionPaymentRequestSerializer implements PrimitiveSerializer<ProcessSubscriptionPaymentRequest> {
  @override
  final Iterable<Type> types = const [ProcessSubscriptionPaymentRequest, _$ProcessSubscriptionPaymentRequest];

  @override
  final String wireName = r'ProcessSubscriptionPaymentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessSubscriptionPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payment_method';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    yield r'payment_status';
    yield serializers.serialize(
      object.paymentStatus,
      specifiedType: const FullType(ProcessSubscriptionPaymentRequestPaymentStatusEnum),
    );
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentDetails != null) {
      yield r'payment_details';
      yield serializers.serialize(
        object.paymentDetails,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessSubscriptionPaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessSubscriptionPaymentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'payment_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProcessSubscriptionPaymentRequestPaymentStatusEnum),
          ) as ProcessSubscriptionPaymentRequestPaymentStatusEnum;
          result.paymentStatus = valueDes;
          break;
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        case r'payment_details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.paymentDetails = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessSubscriptionPaymentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessSubscriptionPaymentRequestBuilder();
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

class ProcessSubscriptionPaymentRequestPaymentStatusEnum extends EnumClass {

  /// Payment status
  @BuiltValueEnumConst(wireName: r'pending')
  static const ProcessSubscriptionPaymentRequestPaymentStatusEnum pending = _$processSubscriptionPaymentRequestPaymentStatusEnum_pending;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'completed')
  static const ProcessSubscriptionPaymentRequestPaymentStatusEnum completed = _$processSubscriptionPaymentRequestPaymentStatusEnum_completed;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'failed')
  static const ProcessSubscriptionPaymentRequestPaymentStatusEnum failed = _$processSubscriptionPaymentRequestPaymentStatusEnum_failed;
  /// Payment status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProcessSubscriptionPaymentRequestPaymentStatusEnum unknownDefaultOpenApi = _$processSubscriptionPaymentRequestPaymentStatusEnum_unknownDefaultOpenApi;

  static Serializer<ProcessSubscriptionPaymentRequestPaymentStatusEnum> get serializer => _$processSubscriptionPaymentRequestPaymentStatusEnumSerializer;

  const ProcessSubscriptionPaymentRequestPaymentStatusEnum._(String name): super(name);

  static BuiltSet<ProcessSubscriptionPaymentRequestPaymentStatusEnum> get values => _$processSubscriptionPaymentRequestPaymentStatusEnumValues;
  static ProcessSubscriptionPaymentRequestPaymentStatusEnum valueOf(String name) => _$processSubscriptionPaymentRequestPaymentStatusEnumValueOf(name);
}

