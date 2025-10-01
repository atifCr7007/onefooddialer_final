//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:subscription_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_update_input.g.dart';

/// SubscriptionUpdateInput
///
/// Properties:
/// * [startDate] - Start date of the subscription
/// * [endDate] - End date of the subscription
/// * [amount] - Amount of the subscription
/// * [discount] - Discount amount
/// * [paymentMethod] - Payment method
/// * [paymentStatus] - Payment status
/// * [transactionId] - Transaction ID
/// * [autoRenew] - Whether the subscription auto-renews
/// * [notes] - Notes
@BuiltValue()
abstract class SubscriptionUpdateInput implements Built<SubscriptionUpdateInput, SubscriptionUpdateInputBuilder> {
  /// Start date of the subscription
  @BuiltValueField(wireName: r'start_date')
  Date? get startDate;

  /// End date of the subscription
  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  /// Amount of the subscription
  @BuiltValueField(wireName: r'amount')
  double? get amount;

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

  SubscriptionUpdateInput._();

  factory SubscriptionUpdateInput([void updates(SubscriptionUpdateInputBuilder b)]) = _$SubscriptionUpdateInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionUpdateInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionUpdateInput> get serializer => _$SubscriptionUpdateInputSerializer();
}

class _$SubscriptionUpdateInputSerializer implements PrimitiveSerializer<SubscriptionUpdateInput> {
  @override
  final Iterable<Type> types = const [SubscriptionUpdateInput, _$SubscriptionUpdateInput];

  @override
  final String wireName = r'SubscriptionUpdateInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionUpdateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionUpdateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionUpdateInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionUpdateInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionUpdateInputBuilder();
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

