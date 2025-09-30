//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_log.g.dart';

/// SubscriptionLog
///
/// Properties:
/// * [id] - Unique identifier for the subscription log
/// * [subscriptionId] - Subscription ID
/// * [customerId] - Customer ID
/// * [action] - Action performed
/// * [description] - Description of the action
/// * [data] - Additional data
/// * [ipAddress] - IP address
/// * [userAgent] - User agent
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class SubscriptionLog implements Built<SubscriptionLog, SubscriptionLogBuilder> {
  /// Unique identifier for the subscription log
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Subscription ID
  @BuiltValueField(wireName: r'subscription_id')
  int? get subscriptionId;

  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// Action performed
  @BuiltValueField(wireName: r'action')
  String? get action;

  /// Description of the action
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Additional data
  @BuiltValueField(wireName: r'data')
  Map<String,dynamic>? get data;

  /// IP address
  @BuiltValueField(wireName: r'ip_address')
  String? get ipAddress;

  /// User agent
  @BuiltValueField(wireName: r'user_agent')
  String? get userAgent;

  /// Creation timestamp
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  SubscriptionLog._();

  factory SubscriptionLog([void updates(SubscriptionLogBuilder b)]) = _$SubscriptionLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionLog> get serializer => _$SubscriptionLogSerializer();
}

class _$SubscriptionLogSerializer implements PrimitiveSerializer<SubscriptionLog> {
  @override
  final Iterable<Type> types = const [SubscriptionLog, _$SubscriptionLog];

  @override
  final String wireName = r'SubscriptionLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.subscriptionId != null) {
      yield r'subscription_id';
      yield serializers.serialize(
        object.subscriptionId,
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
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.ipAddress != null) {
      yield r'ip_address';
      yield serializers.serialize(
        object.ipAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.userAgent != null) {
      yield r'user_agent';
      yield serializers.serialize(
        object.userAgent,
        specifiedType: const FullType(String),
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
    SubscriptionLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionLogBuilder result,
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
        case r'subscription_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.subscriptionId = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.data = valueDes;
          break;
        case r'ip_address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ipAddress = valueDes;
          break;
        case r'user_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userAgent = valueDes;
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
  SubscriptionLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionLogBuilder();
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

