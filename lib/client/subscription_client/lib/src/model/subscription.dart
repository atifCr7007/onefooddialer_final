//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:subscription_client/src/model/subscription_plan.dart';
import 'package:subscription_client/src/model/subscription_pause_history_inner.dart';
import 'package:subscription_client/src/model/subscription_item.dart';
import 'package:subscription_client/src/model/customer.dart';
import 'package:subscription_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription.g.dart';

/// Subscription
///
/// Properties:
/// * [id] - Unique identifier for the subscription
/// * [companyId] - Company ID
/// * [unitId] - Unit ID
/// * [customerId] - Customer ID
/// * [planId] - Subscription plan ID
/// * [subscriptionNo] - Unique subscription number
/// * [startDate] - Start date of the subscription
/// * [endDate] - End date of the subscription
/// * [status] - Status of the subscription
/// * [amount] - Amount of the subscription
/// * [discount] - Discount amount
/// * [total] - Total amount
/// * [paymentMethod] - Payment method
/// * [paymentStatus] - Payment status
/// * [transactionId] - Transaction ID
/// * [pauseHistory] - Pause history
/// * [nextBillingDate] - Next billing date
/// * [autoRenew] - Whether the subscription auto-renews
/// * [notes] - Notes
/// * [customer] 
/// * [plan] 
/// * [items] - Subscription items
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class Subscription implements Built<Subscription, SubscriptionBuilder> {
  /// Unique identifier for the subscription
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Company ID
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  /// Unit ID
  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// Subscription plan ID
  @BuiltValueField(wireName: r'plan_id')
  int? get planId;

  /// Unique subscription number
  @BuiltValueField(wireName: r'subscription_no')
  String? get subscriptionNo;

  /// Start date of the subscription
  @BuiltValueField(wireName: r'start_date')
  Date? get startDate;

  /// End date of the subscription
  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  /// Status of the subscription
  @BuiltValueField(wireName: r'status')
  SubscriptionStatusEnum? get status;
  // enum statusEnum {  active,  paused,  cancelled,  expired,  };

  /// Amount of the subscription
  @BuiltValueField(wireName: r'amount')
  double? get amount;

  /// Discount amount
  @BuiltValueField(wireName: r'discount')
  double? get discount;

  /// Total amount
  @BuiltValueField(wireName: r'total')
  double? get total;

  /// Payment method
  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  /// Payment status
  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  /// Transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  /// Pause history
  @BuiltValueField(wireName: r'pause_history')
  BuiltList<SubscriptionPauseHistoryInner>? get pauseHistory;

  /// Next billing date
  @BuiltValueField(wireName: r'next_billing_date')
  Date? get nextBillingDate;

  /// Whether the subscription auto-renews
  @BuiltValueField(wireName: r'auto_renew')
  bool? get autoRenew;

  /// Notes
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'customer')
  Customer? get customer;

  @BuiltValueField(wireName: r'plan')
  SubscriptionPlan? get plan;

  /// Subscription items
  @BuiltValueField(wireName: r'items')
  BuiltList<SubscriptionItem>? get items;

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  Subscription._();

  factory Subscription([void updates(SubscriptionBuilder b)]) = _$Subscription;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Subscription> get serializer => _$SubscriptionSerializer();
}

class _$SubscriptionSerializer implements PrimitiveSerializer<Subscription> {
  @override
  final Iterable<Type> types = const [Subscription, _$Subscription];

  @override
  final String wireName = r'Subscription';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Subscription object, {
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
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.planId != null) {
      yield r'plan_id';
      yield serializers.serialize(
        object.planId,
        specifiedType: const FullType(int),
      );
    }
    if (object.subscriptionNo != null) {
      yield r'subscription_no';
      yield serializers.serialize(
        object.subscriptionNo,
        specifiedType: const FullType(String),
      );
    }
    if (object.startDate != null) {
      yield r'start_date';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(SubscriptionStatusEnum),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(double),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(double),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(double),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.paymentStatus != null) {
      yield r'payment_status';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.pauseHistory != null) {
      yield r'pause_history';
      yield serializers.serialize(
        object.pauseHistory,
        specifiedType: const FullType(BuiltList, [FullType(SubscriptionPauseHistoryInner)]),
      );
    }
    if (object.nextBillingDate != null) {
      yield r'next_billing_date';
      yield serializers.serialize(
        object.nextBillingDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.autoRenew != null) {
      yield r'auto_renew';
      yield serializers.serialize(
        object.autoRenew,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    if (object.customer != null) {
      yield r'customer';
      yield serializers.serialize(
        object.customer,
        specifiedType: const FullType(Customer),
      );
    }
    if (object.plan != null) {
      yield r'plan';
      yield serializers.serialize(
        object.plan,
        specifiedType: const FullType(SubscriptionPlan),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(SubscriptionItem)]),
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
    Subscription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionBuilder result,
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
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'plan_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.planId = valueDes;
          break;
        case r'subscription_no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subscriptionNo = valueDes;
          break;
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startDate = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.endDate = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionStatusEnum),
          ) as SubscriptionStatusEnum;
          result.status = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.amount = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discount = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.total = valueDes;
          break;
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
            specifiedType: const FullType(String),
          ) as String;
          result.paymentStatus = valueDes;
          break;
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        case r'pause_history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubscriptionPauseHistoryInner)]),
          ) as BuiltList<SubscriptionPauseHistoryInner>;
          result.pauseHistory.replace(valueDes);
          break;
        case r'next_billing_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.nextBillingDate = valueDes;
          break;
        case r'auto_renew':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoRenew = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Customer),
          ) as Customer;
          result.customer.replace(valueDes);
          break;
        case r'plan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionPlan),
          ) as SubscriptionPlan;
          result.plan.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubscriptionItem)]),
          ) as BuiltList<SubscriptionItem>;
          result.items.replace(valueDes);
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
  Subscription deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionBuilder();
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

class SubscriptionStatusEnum extends EnumClass {

  /// Status of the subscription
  @BuiltValueEnumConst(wireName: r'active')
  static const SubscriptionStatusEnum active = _$subscriptionStatusEnum_active;
  /// Status of the subscription
  @BuiltValueEnumConst(wireName: r'paused')
  static const SubscriptionStatusEnum paused = _$subscriptionStatusEnum_paused;
  /// Status of the subscription
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const SubscriptionStatusEnum cancelled = _$subscriptionStatusEnum_cancelled;
  /// Status of the subscription
  @BuiltValueEnumConst(wireName: r'expired')
  static const SubscriptionStatusEnum expired = _$subscriptionStatusEnum_expired;
  /// Status of the subscription
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubscriptionStatusEnum unknownDefaultOpenApi = _$subscriptionStatusEnum_unknownDefaultOpenApi;

  static Serializer<SubscriptionStatusEnum> get serializer => _$subscriptionStatusEnumSerializer;

  const SubscriptionStatusEnum._(String name): super(name);

  static BuiltSet<SubscriptionStatusEnum> get values => _$subscriptionStatusEnumValues;
  static SubscriptionStatusEnum valueOf(String name) => _$subscriptionStatusEnumValueOf(name);
}

