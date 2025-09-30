//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_payment_method_request.g.dart';

/// UpdatePaymentMethodRequest
///
/// Properties:
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
@BuiltValue()
abstract class UpdatePaymentMethodRequest implements Built<UpdatePaymentMethodRequest, UpdatePaymentMethodRequestBuilder> {
  /// Payment method token
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// Payment method type
  @BuiltValueField(wireName: r'type')
  UpdatePaymentMethodRequestTypeEnum? get type;
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

  /// Whether this payment method is active
  @BuiltValueField(wireName: r'is_active')
  bool? get isActive;

  /// Additional metadata
  @BuiltValueField(wireName: r'metadata')
  Map<String,dynamic>? get metadata;

  UpdatePaymentMethodRequest._();

  factory UpdatePaymentMethodRequest([void updates(UpdatePaymentMethodRequestBuilder b)]) = _$UpdatePaymentMethodRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePaymentMethodRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePaymentMethodRequest> get serializer => _$UpdatePaymentMethodRequestSerializer();
}

class _$UpdatePaymentMethodRequestSerializer implements PrimitiveSerializer<UpdatePaymentMethodRequest> {
  @override
  final Iterable<Type> types = const [UpdatePaymentMethodRequest, _$UpdatePaymentMethodRequest];

  @override
  final String wireName = r'UpdatePaymentMethodRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePaymentMethodRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(UpdatePaymentMethodRequestTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePaymentMethodRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePaymentMethodRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(UpdatePaymentMethodRequestTypeEnum),
          ) as UpdatePaymentMethodRequestTypeEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePaymentMethodRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePaymentMethodRequestBuilder();
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

class UpdatePaymentMethodRequestTypeEnum extends EnumClass {

  /// Payment method type
  @BuiltValueEnumConst(wireName: r'credit_card')
  static const UpdatePaymentMethodRequestTypeEnum creditCard = _$updatePaymentMethodRequestTypeEnum_creditCard;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'debit_card')
  static const UpdatePaymentMethodRequestTypeEnum debitCard = _$updatePaymentMethodRequestTypeEnum_debitCard;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'bank_account')
  static const UpdatePaymentMethodRequestTypeEnum bankAccount = _$updatePaymentMethodRequestTypeEnum_bankAccount;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'wallet')
  static const UpdatePaymentMethodRequestTypeEnum wallet = _$updatePaymentMethodRequestTypeEnum_wallet;
  /// Payment method type
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const UpdatePaymentMethodRequestTypeEnum unknownDefaultOpenApi = _$updatePaymentMethodRequestTypeEnum_unknownDefaultOpenApi;

  static Serializer<UpdatePaymentMethodRequestTypeEnum> get serializer => _$updatePaymentMethodRequestTypeEnumSerializer;

  const UpdatePaymentMethodRequestTypeEnum._(String name): super(name);

  static BuiltSet<UpdatePaymentMethodRequestTypeEnum> get values => _$updatePaymentMethodRequestTypeEnumValues;
  static UpdatePaymentMethodRequestTypeEnum valueOf(String name) => _$updatePaymentMethodRequestTypeEnumValueOf(name);
}

