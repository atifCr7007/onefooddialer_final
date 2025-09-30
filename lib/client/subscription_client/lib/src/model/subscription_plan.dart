//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_plan.g.dart';

/// SubscriptionPlan
///
/// Properties:
/// * [id] - Unique identifier for the subscription plan
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
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class SubscriptionPlan implements Built<SubscriptionPlan, SubscriptionPlanBuilder> {
  /// Unique identifier for the subscription plan
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Company ID
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  /// Unit ID
  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  /// Name of the subscription plan
  @BuiltValueField(wireName: r'plan_name')
  String? get planName;

  /// Number of days/weeks/months
  @BuiltValueField(wireName: r'plan_quantity')
  int? get planQuantity;

  /// Period type (day, week, month, year)
  @BuiltValueField(wireName: r'plan_period')
  SubscriptionPlanPlanPeriodEnum? get planPeriod;
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
  SubscriptionPlanShowToCustomerEnum? get showToCustomer;
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

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  SubscriptionPlan._();

  factory SubscriptionPlan([void updates(SubscriptionPlanBuilder b)]) = _$SubscriptionPlan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionPlanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionPlan> get serializer => _$SubscriptionPlanSerializer();
}

class _$SubscriptionPlanSerializer implements PrimitiveSerializer<SubscriptionPlan> {
  @override
  final Iterable<Type> types = const [SubscriptionPlan, _$SubscriptionPlan];

  @override
  final String wireName = r'SubscriptionPlan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
        specifiedType: const FullType(SubscriptionPlanPlanPeriodEnum),
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
        specifiedType: const FullType(SubscriptionPlanShowToCustomerEnum),
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
    SubscriptionPlan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionPlanBuilder result,
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
            specifiedType: const FullType(SubscriptionPlanPlanPeriodEnum),
          ) as SubscriptionPlanPlanPeriodEnum;
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
            specifiedType: const FullType(SubscriptionPlanShowToCustomerEnum),
          ) as SubscriptionPlanShowToCustomerEnum;
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
  SubscriptionPlan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionPlanBuilder();
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

class SubscriptionPlanPlanPeriodEnum extends EnumClass {

  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'day')
  static const SubscriptionPlanPlanPeriodEnum day = _$subscriptionPlanPlanPeriodEnum_day;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'week')
  static const SubscriptionPlanPlanPeriodEnum week = _$subscriptionPlanPlanPeriodEnum_week;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'month')
  static const SubscriptionPlanPlanPeriodEnum month = _$subscriptionPlanPlanPeriodEnum_month;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'year')
  static const SubscriptionPlanPlanPeriodEnum year = _$subscriptionPlanPlanPeriodEnum_year;
  /// Period type (day, week, month, year)
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanPlanPeriodEnum unknownDefaultOpenApi = _$subscriptionPlanPlanPeriodEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanPlanPeriodEnum> get serializer => _$subscriptionPlanPlanPeriodEnumSerializer;

  const SubscriptionPlanPlanPeriodEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanPlanPeriodEnum> get values => _$subscriptionPlanPlanPeriodEnumValues;
  static SubscriptionPlanPlanPeriodEnum valueOf(String name) => _$subscriptionPlanPlanPeriodEnumValueOf(name);
}

class SubscriptionPlanShowToCustomerEnum extends EnumClass {

  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'true')
  static const SubscriptionPlanShowToCustomerEnum true_ = _$subscriptionPlanShowToCustomerEnum_true_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'false')
  static const SubscriptionPlanShowToCustomerEnum false_ = _$subscriptionPlanShowToCustomerEnum_false_;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'admin')
  static const SubscriptionPlanShowToCustomerEnum admin = _$subscriptionPlanShowToCustomerEnum_admin;
  /// Visibility to customers
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionPlanShowToCustomerEnum unknownDefaultOpenApi = _$subscriptionPlanShowToCustomerEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionPlanShowToCustomerEnum> get serializer => _$subscriptionPlanShowToCustomerEnumSerializer;

  const SubscriptionPlanShowToCustomerEnum._(String name): super(name);

  static BuiltSet<SubscriptionPlanShowToCustomerEnum> get values => _$subscriptionPlanShowToCustomerEnumValues;
  static SubscriptionPlanShowToCustomerEnum valueOf(String name) => _$subscriptionPlanShowToCustomerEnumValueOf(name);
}

