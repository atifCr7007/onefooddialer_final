//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_payment_method_request.g.dart';

/// CreatePaymentMethodRequest
///
/// Properties:
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
/// * [metadata] - Additional metadata
@BuiltValue()
abstract class CreatePaymentMethodRequest implements Built<CreatePaymentMethodRequest, CreatePaymentMethodRequestBuilder> {
  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  /// Payment gateway
  @BuiltValueField(wireName: r'gateway')
  String get gateway;

  /// Payment method token
  @BuiltValueField(wireName: r'token')
  String get token;

  /// Payment method type
  @BuiltValueField(wireName: r'type')
  CreatePaymentMethodRequestTypeEnum get type;
  // enum typeEnum {  credit_card,  debit_card,  bank_account,  wallet,  };

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

  /// Additional metadata
  @BuiltValueField(wireName: r'metadata')
  Map<String,dynamic>? get metadata;

  CreatePaymentMethodRequest._();

  factory CreatePaymentMethodRequest([void updates(CreatePaymentMethodRequestBuilder b)]) = _$CreatePaymentMethodRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePaymentMethodRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePaymentMethodRequest> get serializer => _$CreatePaymentMethodRequestSerializer();
}

class _$CreatePaymentMethodRequestSerializer implements PrimitiveSerializer<CreatePaymentMethodRequest> {
  @override
  final Iterable<Type> types = const [CreatePaymentMethodRequest, _$CreatePaymentMethodRequest];

  @override
  final String wireName = r'CreatePaymentMethodRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePaymentMethodRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    yield r'gateway';
    yield serializers.serialize(
      object.gateway,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(CreatePaymentMethodRequestTypeEnum),
    );
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
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePaymentMethodRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePaymentMethodRequestBuilder result,
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
            specifiedType: const FullType(CreatePaymentMethodRequestTypeEnum),
          ) as CreatePaymentMethodRequestTypeEnum;
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
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePaymentMethodRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePaymentMethodRequestBuilder();
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

class CreatePaymentMethodRequestTypeEnum extends EnumClass {

  /// Payment method type
  @BuiltValueEnumConst(wireName: r'credit_card')
  static const CreatePaymentMethodRequestTypeEnum creditCard = _$createPaymentMethodRequestTypeEnum_creditCard;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'debit_card')
  static const CreatePaymentMethodRequestTypeEnum debitCard = _$createPaymentMethodRequestTypeEnum_debitCard;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'bank_account')
  static const CreatePaymentMethodRequestTypeEnum bankAccount = _$createPaymentMethodRequestTypeEnum_bankAccount;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'wallet')
  static const CreatePaymentMethodRequestTypeEnum wallet = _$createPaymentMethodRequestTypeEnum_wallet;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CreatePaymentMethodRequestTypeEnum unknownDefaultOpenApi = _$createPaymentMethodRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<CreatePaymentMethodRequestTypeEnum> get serializer => _$createPaymentMethodRequestTypeEnumSerializer;

  const CreatePaymentMethodRequestTypeEnum._(String name): super(name);

  static BuiltSet<CreatePaymentMethodRequestTypeEnum> get values => _$createPaymentMethodRequestTypeEnumValues;
  static CreatePaymentMethodRequestTypeEnum valueOf(String name) => _$createPaymentMethodRequestTypeEnumValueOf(name);
}

