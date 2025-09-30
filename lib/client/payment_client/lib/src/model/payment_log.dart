//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_log.g.dart';

/// PaymentLog
///
/// Properties:
/// * [id] - Log ID
/// * [transactionId] - Payment transaction ID
/// * [gateway] - Payment gateway
/// * [event] - Event type
/// * [status] - Event status
/// * [requestData] - Request data
/// * [responseData] - Response data
/// * [ipAddress] - IP address
/// * [userAgent] - User agent
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class PaymentLog implements Built<PaymentLog, PaymentLogBuilder> {
  /// Log ID
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// Payment transaction ID
  @BuiltValueField(wireName: r'transaction_id')
  int? get transactionId;

  /// Payment gateway
  @BuiltValueField(wireName: r'gateway')
  String? get gateway;

  /// Event type
  @BuiltValueField(wireName: r'event')
  String? get event;

  /// Event status
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// Request data
  @BuiltValueField(wireName: r'request_data')
  Map<String,dynamic>? get requestData;

  /// Response data
  @BuiltValueField(wireName: r'response_data')
  Map<String,dynamic>? get responseData;

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

  PaymentLog._();

  factory PaymentLog([void updates(PaymentLogBuilder b)]) = _$PaymentLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentLog> get serializer => _$PaymentLogSerializer();
}

class _$PaymentLogSerializer implements PrimitiveSerializer<PaymentLog> {
  @override
  final Iterable<Type> types = const [PaymentLog, _$PaymentLog];

  @override
  final String wireName = r'PaymentLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.transactionId != null) {
      yield r'transaction_id';
      yield serializers.serialize(
        object.transactionId,
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
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestData != null) {
      yield r'request_data';
      yield serializers.serialize(
        object.requestData,
        specifiedType: const FullType(Map<String,dynamic>),
      );
    }
    if (object.responseData != null) {
      yield r'response_data';
      yield serializers.serialize(
        object.responseData,
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
    PaymentLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentLogBuilder result,
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
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.transactionId = valueDes;
          break;
        case r'gateway':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gateway = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'request_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.requestData = valueDes;
          break;
        case r'response_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String,dynamic>),
          ) as Map<String,dynamic>;
          result.responseData = valueDes;
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
  PaymentLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentLogBuilder();
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

