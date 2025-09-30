//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_plan_input.g.dart';

/// SubscriptionPlanInput
///
/// Properties:
/// * [companyId] - Company ID
/// * [unitId] - Unit ID
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
abstract class SubscriptionPlanInput implements Built<SubscriptionPlanInput, SubscriptionPlanInputBuilder> {
  /// Company ID
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  /// Unit ID
  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  /// Name of the subscription plan
  @BuiltValueField(wireName: r'plan_name')
  String get planName;

  /// Number of days/weeks/months
  @BuiltValueField(wireName: r'plan_quantity')
  int get planQuantity;

  /// Period type (day, week, month, year)
  @BuiltValueField(wireName: r'plan_period')
  SubscriptionPlanInputPlanPeriodEnum get planPeriod;
  // enum planPeriodEnum {  day,  week,  month,  year,  };

  /// Type of the subscription plan
  @BuiltValueField(wireName: r'plan_type')
  String? get planType;

  /// Start date of the subscription plan
  @BuiltValueField(wireName: r'plan_start_date')
  Date get planStartDate;

  /// End date of the subscription plan
  @BuiltValueField(wireName: r'plan_end_date')
  Date get planEndDate;

  /// Promo code ID
  @BuiltValueField(wireName: r'fk_promo_code')
  int? get fkPromoCode;

  /// Status of the subscription plan
  @BuiltValueField(wireName: r'plan_status')
  bool? get planStatus;

  /// Visibility to customers
  @BuiltValueField(wireName: r'show_to_customer')
  SubscriptionPlanInputShowToCustomerEnum? get showToCustomer;
  // enum showToCustomerEnum {  true,  false,  admin,  };

  /// Kitchen code ID
  @BuiltValueField(wireName: r'fk_kitchen_code')
  int? get fkKitchenCode;

  /// Price of the subscription plan
  @BuiltValueField(wireName: r'price')
  double get price;

  /// Whether the subscription plan is recurring
  @BuiltValueField(wireName: r'is_recurring')
  bool? get isRecurring;

  SubscriptionPlanInput._();

  factory SubscriptionPlanInput([void updates(SubscriptionPlanInputBuilder b)]) = _$SubscriptionPlanInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionPlanInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionPlanInput> get serializer => _$SubscriptionPlanInputSerializer();
}

class _$SubscriptionPlanInputSerializer implements PrimitiveSerializer<SubscriptionPlanInput> {
  @override
  final Iterable<Type> types = const [SubscriptionPlanInput, _$SubscriptionPlanInput];

  @override
  final String wireName = r'SubscriptionPlanInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionPlanInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.companyId != null) {
      yield r'company_id';
      yield serializers.serialize(
        object.companyId,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitId != null) {
      yield r'unit_id';
      yield serializers.serialize(
        object.unitId,
        specifiedType: const FullType(int),
      );
    }
    yield r'plan_name';
    yield serializers.serialize(
      object.planName,
      specifiedType: const FullType(String),
    );
    yield r'plan_quantity';
    yield serializers.serialize(
      object.planQuantity,
      specifiedType: const FullType(int),
    );
    yield r'plan_period';
    yield serializers.serialize(
      object.planPeriod,
      specifiedType: const FullType(SubscriptionPlanInputPlanPeriodEnum),
    );
    if (object.planType != null) {
      yield r'plan_type';
      yield serializers.serialize(
        object.planType,
        specifiedType: const FullType(String),
      );
    }
    yield r'plan_start_date';
    yield serializers.serialize(
      object.planStartDate,
      specifiedType: const FullType(Date),
    );
    yield r'plan_end_date';
    yield serializers.serialize(
      object.planEndDate,
      specifiedType: const FullType(Date),
    );
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
        specifiedType: const FullType(SubscriptionPlanInputShowToCustomerEnum),
      );
    }
    if (object.fkKitchenCode != null) {
      yield r'fk_kitchen_code';
      yield serializers.serialize(
        object.fkKitchenCode,
        specifiedType: const FullType(int),
      );
    }
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
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
    SubscriptionPlanInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionPlanInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'company_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.companyId = valueDes;
          break;
        case r'unit_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unitId = valueDes;
          break;
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
            specifiedType: const FullType(SubscriptionPlanInputPlanPeriodEnum),
          ) as SubscriptionPlanInputPlanPeriodEnum;
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
            specifiedType: const FullType(SubscriptionPlanInputShowToCustomerEnum),
          ) as SubscriptionPlanInputShowToCustomerEnum;
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
  SubscriptionPlanInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionPlanInputBuilder();
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

class SubscriptionPlanInputPlanPeriodEnum extends EnumClass {

  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'day')
  static const SubscriptionPlanInputPlanPeriodEnum day = _$subscriptionPlanInputPlanPeriodEnum_day;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'week')
  static const SubscriptionPlanInputPlanPeriodEnum week = _$subscriptionPlanInputPlanPeriodEnum_week;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'month')
  static const SubscriptionPlanInputPlanPeriodEnum month = _$subscriptionPlanInputPlanPeriodEnum_month;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'year')
  static const SubscriptionPlanInputPlanPeriodEnum year = _$subscriptionPlanInputPlanPeriodEnum_year;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanInputPlanPeriodEnum unknownDefaultOpenApi = _$subscriptionPlanInputPlanPeriodEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanInputPlanPeriodEnum> get serializer => _$subscriptionPlanInputPlanPeriodEnumSerializer;

  const SubscriptionPlanInputPlanPeriodEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanInputPlanPeriodEnum> get values => _$subscriptionPlanInputPlanPeriodEnumValues;
  static SubscriptionPlanInputPlanPeriodEnum valueOf(String name) => _$subscriptionPlanInputPlanPeriodEnumValueOf(name);
}

class SubscriptionPlanInputShowToCustomerEnum extends EnumClass {

  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'true')
  static const SubscriptionPlanInputShowToCustomerEnum true_ = _$subscriptionPlanInputShowToCustomerEnum_true_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'false')
  static const SubscriptionPlanInputShowToCustomerEnum false_ = _$subscriptionPlanInputShowToCustomerEnum_false_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'admin')
  static const SubscriptionPlanInputShowToCustomerEnum admin = _$subscriptionPlanInputShowToCustomerEnum_admin;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanInputShowToCustomerEnum unknownDefaultOpenApi = _$subscriptionPlanInputShowToCustomerEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanInputShowToCustomerEnum> get serializer => _$subscriptionPlanInputShowToCustomerEnumSerializer;

  const SubscriptionPlanInputShowToCustomerEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanInputShowToCustomerEnum> get values => _$subscriptionPlanInputShowToCustomerEnumValues;
  static SubscriptionPlanInputShowToCustomerEnum valueOf(String name) => _$subscriptionPlanInputShowToCustomerEnumValueOf(name);
}

