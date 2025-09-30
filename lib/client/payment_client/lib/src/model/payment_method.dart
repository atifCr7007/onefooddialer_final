//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_method.g.dart';

/// PaymentMethod
///
/// Properties:
/// * [id] - Payment method ID
/// * [customerId] - Customer ID
/// * [gateway] - Payment gateway
/// * [token] - Payment method token
/// * [type] - Payment method type
/// * [lastFour] - Last four digits of card/account
/// * [expiryMonth] - Card expiry month
/// * [expiryYear] - Card expiry year
/// * [cardHolderName] - Card holder name
/// * [cardBrand] - Card brand
/// * [isDefault] - Whether this is the default payment method
/// * [isActive] - Whether this payment method is active
/// * [metadata] - Additional metadata
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
/// * [maskedCardNumber] - Masked card number
/// * [expiryDate] - Expiry date in MM/YY format
@BuiltValue()
abstract class PaymentMethod implements Built<PaymentMethod, PaymentMethodBuilder> {
  /// Payment method ID
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// Payment gateway
  @BuiltValueField(wireName: r'gateway')
  String? get gateway;

  /// Payment method token
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Payment method type
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Last four digits of card/account
  @BuiltValueField(wireName: r'last_four')
  String? get lastFour;

  /// Card expiry month
  @BuiltValueField(wireName: r'expiry_month')
  String? get expiryMonth;

  /// Card expiry year
  @BuiltValueField(wireName: r'expiry_year')
  String? get expiryYear;

  /// Card holder name
  @BuiltValueField(wireName: r'card_holder_name')
  String? get cardHolderName;

  /// Card brand
  @BuiltValueField(wireName: r'card_brand')
  String? get cardBrand;

  /// Whether this is the default payment method
  @BuiltValueField(wireName: r'is_default')
  bool? get isDefault;

  /// Whether this payment method is active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// Additional metadata
  @BuiltValueField(wireName: r'metadata')
  Map<String,dynamic>? get metadata;

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  /// Masked card number
  @BuiltValueField(wireName: r'masked_card_number')
  String? get maskedCardNumber;

  /// Expiry date in MM/YY format
  @BuiltValueField(wireName: r'expiry_date')
  String? get expiryDate;

  PaymentMethod._();

  factory PaymentMethod([void updates(PaymentMethodBuilder b)]) = _$PaymentMethod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentMethodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentMethod> get serializer => _$PaymentMethodSerializer();
}

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  @override
  final Iterable<Type> types = const [PaymentMethod, _$PaymentMethod];

  @override
  final String wireName = r'PaymentMethod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentMethod object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.gateway != null) {
      yield r'gateway';
      yield serializers.serialize(
        object.gateway,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastFour != null) {
      yield r'last_four';
      yield serializers.serialize(
        object.lastFour,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryMonth != null) {
      yield r'expiry_month';
      yield serializers.serialize(
        object.expiryMonth,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryYear != null) {
      yield r'expiry_year';
      yield serializers.serialize(
        object.expiryYear,
        specifiedType: const FullType(String),
      );
    }
    if (object.cardHolderName != null) {
      yield r'card_holder_name';
      yield serializers.serialize(
        object.cardHolderName,
        specifiedType: const FullType(String),
      );
    }
    if (object.cardBrand != null) {
      yield r'card_brand';
      yield serializers.serialize(
        object.cardBrand,
        specifiedType: const FullType(String),
      );
    }
    if (object.isDefault != null) {
      yield r'is_default';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isActive != null) {
      yield r'is_active';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(Map<String,dynamic>),
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
    if (object.maskedCardNumber != null) {
      yield r'masked_card_number';
      yield serializers.serialize(
        object.maskedCardNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiry_date';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentMethod object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentMethodBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gateway = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'last_four':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastFour = valueDes;
          break;
        case r'expiry_month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiryMonth = valueDes;
          break;
        case r'expiry_year':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiryYear = valueDes;
          break;
        case r'card_holder_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardHolderName = valueDes;
          break;
        case r'card_brand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardBrand = valueDes;
          break;
        case r'is_default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.metadata = valueDes;
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
        case r'masked_card_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maskedCardNumber = valueDes;
          break;
        case r'expiry_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiryDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentMethod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentMethodBuilder();
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

