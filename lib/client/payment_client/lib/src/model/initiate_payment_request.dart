//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_payment_request.g.dart';

/// InitiatePaymentRequest
///
/// Properties:
/// * [customerId] - Customer ID
/// * [customerEmail] - Customer email
/// * [customerPhone] - Customer phone number
/// * [customerName] - Customer name
/// * [amount] - Payment amount
/// * [transactionCharges] - Additional transaction charges
/// * [walletAmount] - Amount to be paid from wallet
/// * [orderId] - Related order ID
/// * [referer] - Source platform (website/mobile/desktop)
/// * [successUrl] - URL to redirect on successful payment
/// * [failureUrl] - URL to redirect on failed payment
/// * [context] - Payment context (order/subscription)
/// * [recurring] - Whether this is a recurring payment
/// * [discount] - Discount amount
@BuiltValue()
abstract class InitiatePaymentRequest implements Built<InitiatePaymentRequest, InitiatePaymentRequestBuilder> {
  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  /// Customer email
  @BuiltValueField(wireName: r'customer_email')
  String? get customerEmail;

  /// Customer phone number
  @BuiltValueField(wireName: r'customer_phone')
  String? get customerPhone;

  /// Customer name
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  /// Payment amount
  @BuiltValueField(wireName: r'amount')
  double get amount;

  /// Additional transaction charges
  @BuiltValueField(wireName: r'transaction_charges')
  double? get transactionCharges;

  /// Amount to be paid from wallet
  @BuiltValueField(wireName: r'wallet_amount')
  double? get walletAmount;

  /// Related order ID
  @BuiltValueField(wireName: r'order_id')
  String? get orderId;

  /// Source platform (website/mobile/desktop)
  @BuiltValueField(wireName: r'referer')
  String? get referer;

  /// URL to redirect on successful payment
  @BuiltValueField(wireName: r'success_url')
  String get successUrl;

  /// URL to redirect on failed payment
  @BuiltValueField(wireName: r'failure_url')
  String get failureUrl;

  /// Payment context (order/subscription)
  @BuiltValueField(wireName: r'context')
  String? get context;

  /// Whether this is a recurring payment
  @BuiltValueField(wireName: r'recurring')
  bool? get recurring;

  /// Discount amount
  @BuiltValueField(wireName: r'discount')
  double? get discount;

  InitiatePaymentRequest._();

  factory InitiatePaymentRequest([void updates(InitiatePaymentRequestBuilder b)]) = _$InitiatePaymentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiatePaymentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiatePaymentRequest> get serializer => _$InitiatePaymentRequestSerializer();
}

class _$InitiatePaymentRequestSerializer implements PrimitiveSerializer<InitiatePaymentRequest> {
  @override
  final Iterable<Type> types = const [InitiatePaymentRequest, _$InitiatePaymentRequest];

  @override
  final String wireName = r'InitiatePaymentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiatePaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    if (object.customerEmail != null) {
      yield r'customer_email';
      yield serializers.serialize(
        object.customerEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerPhone != null) {
      yield r'customer_phone';
      yield serializers.serialize(
        object.customerPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(double),
    );
    if (object.transactionCharges != null) {
      yield r'transaction_charges';
      yield serializers.serialize(
        object.transactionCharges,
        specifiedType: const FullType(double),
      );
    }
    if (object.walletAmount != null) {
      yield r'wallet_amount';
      yield serializers.serialize(
        object.walletAmount,
        specifiedType: const FullType(double),
      );
    }
    if (object.orderId != null) {
      yield r'order_id';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.referer != null) {
      yield r'referer';
      yield serializers.serialize(
        object.referer,
        specifiedType: const FullType(String),
      );
    }
    yield r'success_url';
    yield serializers.serialize(
      object.successUrl,
      specifiedType: const FullType(String),
    );
    yield r'failure_url';
    yield serializers.serialize(
      object.failureUrl,
      specifiedType: const FullType(String),
    );
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(
        object.context,
        specifiedType: const FullType(String),
      );
    }
    if (object.recurring != null) {
      yield r'recurring';
      yield serializers.serialize(
        object.recurring,
        specifiedType: const FullType(bool),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiatePaymentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitiatePaymentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'customer_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerEmail = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'transaction_charges':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.transactionCharges = valueDes;
          break;
        case r'wallet_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.walletAmount = valueDes;
          break;
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'referer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referer = valueDes;
          break;
        case r'success_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.successUrl = valueDes;
          break;
        case r'failure_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.failureUrl = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.context = valueDes;
          break;
        case r'recurring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.recurring = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InitiatePaymentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiatePaymentRequestBuilder();
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

