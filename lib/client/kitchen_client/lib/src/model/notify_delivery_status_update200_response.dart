//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notify_delivery_status_update200_response.g.dart';

/// NotifyDeliveryStatusUpdate200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class NotifyDeliveryStatusUpdate200Response implements Built<NotifyDeliveryStatusUpdate200Response, NotifyDeliveryStatusUpdate200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  NotifyDeliveryStatusUpdate200Response._();

  factory NotifyDeliveryStatusUpdate200Response([void updates(NotifyDeliveryStatusUpdate200ResponseBuilder b)]) = _$NotifyDeliveryStatusUpdate200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotifyDeliveryStatusUpdate200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotifyDeliveryStatusUpdate200Response> get serializer => _$NotifyDeliveryStatusUpdate200ResponseSerializer();
}

class _$NotifyDeliveryStatusUpdate200ResponseSerializer implements PrimitiveSerializer<NotifyDeliveryStatusUpdate200Response> {
  @override
  final Iterable<Type> types = const [NotifyDeliveryStatusUpdate200Response, _$NotifyDeliveryStatusUpdate200Response];

  @override
  final String wireName = r'NotifyDeliveryStatusUpdate200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotifyDeliveryStatusUpdate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotifyDeliveryStatusUpdate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotifyDeliveryStatusUpdate200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotifyDeliveryStatusUpdate200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotifyDeliveryStatusUpdate200ResponseBuilder();
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

