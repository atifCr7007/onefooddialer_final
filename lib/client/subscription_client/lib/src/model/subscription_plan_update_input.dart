//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_plan_update_input.g.dart';

/// SubscriptionPlanUpdateInput
///
/// Properties:
/// * [planName] - Name of the subscription plan
/// * [planQuantity] - Number of days/weeks/months
/// * [planPeriod] - Period type (day, week, month, year)
/// * [planType] - Type of the subscription plan
/// * [planStartDate] - Start date of the subscription plan
/// * [planEndDate] - End date of the subscription plan
/// * [fkPromoCode] - Promo code ID
/// * [planStatus] - Status of the subscription plan
/// * [showToCustomer] - Visibility to customers
/// * [fkKitchenCode] - Kitchen code ID
/// * [price] - Price of the subscription plan
/// * [isRecurring] - Whether the subscription plan is recurring
@BuiltValue()
abstract class SubscriptionPlanUpdateInput implements Built<SubscriptionPlanUpdateInput, SubscriptionPlanUpdateInputBuilder> {
  /// Name of the subscription plan
  @BuiltValueField(wireName: r'plan_name')
  String? get planName;

  /// Number of days/weeks/months
  @BuiltValueField(wireName: r'plan_quantity')
  int? get planQuantity;

  /// Period type (day, week, month, year)
  @BuiltValueField(wireName: r'plan_period')
  SubscriptionPlanUpdateInputPlanPeriodEnum? get planPeriod;
  // enum planPeriodEnum {  day,  week,  month,  year,  };

  /// Type of the subscription plan
  @BuiltValueField(wireName: r'plan_type')
  String? get planType;

  /// Start date of the subscription plan
  @BuiltValueField(wireName: r'plan_start_date')
  Date? get planStartDate;

  /// End date of the subscription plan
  @BuiltValueField(wireName: r'plan_end_date')
  Date? get planEndDate;

  /// Promo code ID
  @BuiltValueField(wireName: r'fk_promo_code')
  int? get fkPromoCode;

  /// Status of the subscription plan
  @BuiltValueField(wireName: r'plan_status')
  bool? get planStatus;

  /// Visibility to customers
  @BuiltValueField(wireName: r'show_to_customer')
  SubscriptionPlanUpdateInputShowToCustomerEnum? get showToCustomer;
  // enum showToCustomerEnum {  true,  false,  admin,  };

  /// Kitchen code ID
  @BuiltValueField(wireName: r'fk_kitchen_code')
  int? get fkKitchenCode;

  /// Price of the subscription plan
  @BuiltValueField(wireName: r'price')
  double? get price;

  /// Whether the subscription plan is recurring
  @BuiltValueField(wireName: r'is_recurring')
  bool? get isRecurring;

  SubscriptionPlanUpdateInput._();

  factory SubscriptionPlanUpdateInput([void updates(SubscriptionPlanUpdateInputBuilder b)]) = _$SubscriptionPlanUpdateInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionPlanUpdateInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionPlanUpdateInput> get serializer => _$SubscriptionPlanUpdateInputSerializer();
}

class _$SubscriptionPlanUpdateInputSerializer implements PrimitiveSerializer<SubscriptionPlanUpdateInput> {
  @override
  final Iterable<Type> types = const [SubscriptionPlanUpdateInput, _$SubscriptionPlanUpdateInput];

  @override
  final String wireName = r'SubscriptionPlanUpdateInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionPlanUpdateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.planName != null) {
      yield r'plan_name';
      yield serializers.serialize(
        object.planName,
        specifiedType: const FullType(String),
      );
    }
    if (object.planQuantity != null) {
      yield r'plan_quantity';
      yield serializers.serialize(
        object.planQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.planPeriod != null) {
      yield r'plan_period';
      yield serializers.serialize(
        object.planPeriod,
        specifiedType: const FullType(SubscriptionPlanUpdateInputPlanPeriodEnum),
      );
    }
    if (object.planType != null) {
      yield r'plan_type';
      yield serializers.serialize(
        object.planType,
        specifiedType: const FullType(String),
      );
    }
    if (object.planStartDate != null) {
      yield r'plan_start_date';
      yield serializers.serialize(
        object.planStartDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.planEndDate != null) {
      yield r'plan_end_date';
      yield serializers.serialize(
        object.planEndDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.fkPromoCode != null) {
      yield r'fk_promo_code';
      yield serializers.serialize(
        object.fkPromoCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.planStatus != null) {
      yield r'plan_status';
      yield serializers.serialize(
        object.planStatus,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showToCustomer != null) {
      yield r'show_to_customer';
      yield serializers.serialize(
        object.showToCustomer,
        specifiedType: const FullType(SubscriptionPlanUpdateInputShowToCustomerEnum),
      );
    }
    if (object.fkKitchenCode != null) {
      yield r'fk_kitchen_code';
      yield serializers.serialize(
        object.fkKitchenCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(double),
      );
    }
    if (object.isRecurring != null) {
      yield r'is_recurring';
      yield serializers.serialize(
        object.isRecurring,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPlanUpdateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionPlanUpdateInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plan_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.planName = valueDes;
          break;
        case r'plan_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.planQuantity = valueDes;
          break;
        case r'plan_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionPlanUpdateInputPlanPeriodEnum),
          ) as SubscriptionPlanUpdateInputPlanPeriodEnum;
          result.planPeriod = valueDes;
          break;
        case r'plan_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.planType = valueDes;
          break;
        case r'plan_start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.planStartDate = valueDes;
          break;
        case r'plan_end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.planEndDate = valueDes;
          break;
        case r'fk_promo_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fkPromoCode = valueDes;
          break;
        case r'plan_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.planStatus = valueDes;
          break;
        case r'show_to_customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionPlanUpdateInputShowToCustomerEnum),
          ) as SubscriptionPlanUpdateInputShowToCustomerEnum;
          result.showToCustomer = valueDes;
          break;
        case r'fk_kitchen_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fkKitchenCode = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'is_recurring':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRecurring = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionPlanUpdateInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionPlanUpdateInputBuilder();
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

class SubscriptionPlanUpdateInputPlanPeriodEnum extends EnumClass {

  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'day')
  static const SubscriptionPlanUpdateInputPlanPeriodEnum day = _$subscriptionPlanUpdateInputPlanPeriodEnum_day;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'week')
  static const SubscriptionPlanUpdateInputPlanPeriodEnum week = _$subscriptionPlanUpdateInputPlanPeriodEnum_week;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'month')
  static const SubscriptionPlanUpdateInputPlanPeriodEnum month = _$subscriptionPlanUpdateInputPlanPeriodEnum_month;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'year')
  static const SubscriptionPlanUpdateInputPlanPeriodEnum year = _$subscriptionPlanUpdateInputPlanPeriodEnum_year;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanUpdateInputPlanPeriodEnum unknownDefaultOpenApi = _$subscriptionPlanUpdateInputPlanPeriodEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanUpdateInputPlanPeriodEnum> get serializer => _$subscriptionPlanUpdateInputPlanPeriodEnumSerializer;

  const SubscriptionPlanUpdateInputPlanPeriodEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanUpdateInputPlanPeriodEnum> get values => _$subscriptionPlanUpdateInputPlanPeriodEnumValues;
  static SubscriptionPlanUpdateInputPlanPeriodEnum valueOf(String name) => _$subscriptionPlanUpdateInputPlanPeriodEnumValueOf(name);
}

class SubscriptionPlanUpdateInputShowToCustomerEnum extends EnumClass {

  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'true')
  static const SubscriptionPlanUpdateInputShowToCustomerEnum true_ = _$subscriptionPlanUpdateInputShowToCustomerEnum_true_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'false')
  static const SubscriptionPlanUpdateInputShowToCustomerEnum false_ = _$subscriptionPlanUpdateInputShowToCustomerEnum_false_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'admin')
  static const SubscriptionPlanUpdateInputShowToCustomerEnum admin = _$subscriptionPlanUpdateInputShowToCustomerEnum_admin;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanUpdateInputShowToCustomerEnum unknownDefaultOpenApi = _$subscriptionPlanUpdateInputShowToCustomerEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanUpdateInputShowToCustomerEnum> get serializer => _$subscriptionPlanUpdateInputShowToCustomerEnumSerializer;

  const SubscriptionPlanUpdateInputShowToCustomerEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanUpdateInputShowToCustomerEnum> get values => _$subscriptionPlanUpdateInputShowToCustomerEnumValues;
  static SubscriptionPlanUpdateInputShowToCustomerEnum valueOf(String name) => _$subscriptionPlanUpdateInputShowToCustomerEnumValueOf(name);
}

