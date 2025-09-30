//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/notify_delivery_status_update_request_delivery_agent.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notify_delivery_status_update_request.g.dart';

/// NotifyDeliveryStatusUpdateRequest
///
/// Properties:
/// * [orderId] 
/// * [status] 
/// * [timestamp] 
/// * [deliveryAgent] 
@BuiltValue()
abstract class NotifyDeliveryStatusUpdateRequest implements Built<NotifyDeliveryStatusUpdateRequest, NotifyDeliveryStatusUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'order_id')
  String get orderId;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'timestamp')
  DateTime? get timestamp;

  @BuiltValueField(wireName: r'delivery_agent')
  NotifyDeliveryStatusUpdateRequestDeliveryAgent? get deliveryAgent;

  NotifyDeliveryStatusUpdateRequest._();

  factory NotifyDeliveryStatusUpdateRequest([void updates(NotifyDeliveryStatusUpdateRequestBuilder b)]) = _$NotifyDeliveryStatusUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotifyDeliveryStatusUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotifyDeliveryStatusUpdateRequest> get serializer => _$NotifyDeliveryStatusUpdateRequestSerializer();
}

class _$NotifyDeliveryStatusUpdateRequestSerializer implements PrimitiveSerializer<NotifyDeliveryStatusUpdateRequest> {
  @override
  final Iterable<Type> types = const [NotifyDeliveryStatusUpdateRequest, _$NotifyDeliveryStatusUpdateRequest];

  @override
  final String wireName = r'NotifyDeliveryStatusUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotifyDeliveryStatusUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deliveryAgent != null) {
      yield r'delivery_agent';
      yield serializers.serialize(
        object.deliveryAgent,
        specifiedType: const FullType(NotifyDeliveryStatusUpdateRequestDeliveryAgent),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotifyDeliveryStatusUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotifyDeliveryStatusUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.timestamp = valueDes;
          break;
        case r'delivery_agent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotifyDeliveryStatusUpdateRequestDeliveryAgent),
          ) as NotifyDeliveryStatusUpdateRequestDeliveryAgent;
          result.deliveryAgent.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotifyDeliveryStatusUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotifyDeliveryStatusUpdateRequestBuilder();
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

