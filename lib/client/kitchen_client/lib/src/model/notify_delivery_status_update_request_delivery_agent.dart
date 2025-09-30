//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notify_delivery_status_update_request_delivery_agent.g.dart';

/// NotifyDeliveryStatusUpdateRequestDeliveryAgent
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class NotifyDeliveryStatusUpdateRequestDeliveryAgent implements Built<NotifyDeliveryStatusUpdateRequestDeliveryAgent, NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  NotifyDeliveryStatusUpdateRequestDeliveryAgent._();

  factory NotifyDeliveryStatusUpdateRequestDeliveryAgent([void updates(NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder b)]) = _$NotifyDeliveryStatusUpdateRequestDeliveryAgent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotifyDeliveryStatusUpdateRequestDeliveryAgent> get serializer => _$NotifyDeliveryStatusUpdateRequestDeliveryAgentSerializer();
}

class _$NotifyDeliveryStatusUpdateRequestDeliveryAgentSerializer implements PrimitiveSerializer<NotifyDeliveryStatusUpdateRequestDeliveryAgent> {
  @override
  final Iterable<Type> types = const [NotifyDeliveryStatusUpdateRequestDeliveryAgent, _$NotifyDeliveryStatusUpdateRequestDeliveryAgent];

  @override
  final String wireName = r'NotifyDeliveryStatusUpdateRequestDeliveryAgent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotifyDeliveryStatusUpdateRequestDeliveryAgent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotifyDeliveryStatusUpdateRequestDeliveryAgent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotifyDeliveryStatusUpdateRequestDeliveryAgent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder();
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

