//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/date.dart';
import 'package:openapi/src/model/subscription_item_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_input.g.dart';

/// SubscriptionInput
///
/// Properties:
/// * [companyId] - Company ID
/// * [unitId] - Unit ID
/// * [customerId] - Customer ID
/// * [planId] - Subscription plan ID
/// * [startDate] - Start date of the subscription
/// * [endDate] - End date of the subscription
/// * [amount] - Amount of the subscription
/// * [discount] - Discount amount
/// * [paymentMethod] - Payment method
/// * [paymentStatus] - Payment status
/// * [transactionId] - Transaction ID
/// * [autoRenew] - Whether the subscription auto-renews
/// * [notes] - Notes
/// * [items] - Subscription items
@BuiltValue()
abstract class SubscriptionInput implements Built<SubscriptionInput, SubscriptionInputBuilder> {
  /// Company ID
  @BuiltValueField(wireName: r'company_id')
  int? get companyId;

  /// Unit ID
  @BuiltValueField(wireName: r'unit_id')
  int? get unitId;

  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  /// Subscription plan ID
  @BuiltValueField(wireName: r'plan_id')
  int get planId;

  /// Start date of the subscription
  @BuiltValueField(wireName: r'start_date')
  Date get startDate;

  /// End date of the subscription
  @BuiltValueField(wireName: r'end_date')
  Date get endDate;

  /// Amount of the subscription
  @BuiltValueField(wireName: r'amount')
  double get amount;

  /// Discount amount
  @BuiltValueField(wireName: r'discount')
  double? get discount;

  /// Payment method
  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  /// Payment status
  @BuiltValueField(wireName: r'payment_status')
  String? get paymentStatus;

  /// Transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  String? get transactionId;

  /// Whether the subscription auto-renews
  @BuiltValueField(wireName: r'auto_renew')
  bool? get autoRenew;

  /// Notes
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Subscription items
  @BuiltValueField(wireName: r'items')
  BuiltList<SubscriptionItemInput>? get items;

  SubscriptionInput._();

  factory SubscriptionInput([void updates(SubscriptionInputBuilder b)]) = _$SubscriptionInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionInput> get serializer => _$SubscriptionInputSerializer();
}

class _$SubscriptionInputSerializer implements PrimitiveSerializer<SubscriptionInput> {
  @override
  final Iterable<Type> types = const [SubscriptionInput, _$SubscriptionInput];

  @override
  final String wireName = r'SubscriptionInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionInput object, {
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
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    yield r'plan_id';
    yield serializers.serialize(
      object.planId,
      specifiedType: const FullType(int),
    );
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(Date),
    );
    yield r'end_date';
    yield serializers.serialize(
      object.endDate,
      specifiedType: const FullType(Date),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(double),
    );
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
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
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(SubscriptionItemInput)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionInputBuilder result,
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
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubscriptionItemInput)]),
          ) as BuiltList<SubscriptionItemInput>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionInputBuilder();
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

