//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_delivery_status_request.g.dart';

/// UpdateDeliveryStatusRequest
///
/// Properties:
/// * [orderId] - ID of the order to update
/// * [orderCompleted] - Whether the order is completed
@BuiltValue()
abstract class UpdateDeliveryStatusRequest implements Built<UpdateDeliveryStatusRequest, UpdateDeliveryStatusRequestBuilder> {
  /// ID of the order to update
  @BuiltValueField(wireName: r'order_id')
  int get orderId;

  /// Whether the order is completed
  @BuiltValueField(wireName: r'order_completed')
  bool? get orderCompleted;

  UpdateDeliveryStatusRequest._();

  factory UpdateDeliveryStatusRequest([void updates(UpdateDeliveryStatusRequestBuilder b)]) = _$UpdateDeliveryStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDeliveryStatusRequestBuilder b) => b
      ..orderCompleted = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDeliveryStatusRequest> get serializer => _$UpdateDeliveryStatusRequestSerializer();
}

class _$UpdateDeliveryStatusRequestSerializer implements PrimitiveSerializer<UpdateDeliveryStatusRequest> {
  @override
  final Iterable<Type> types = const [UpdateDeliveryStatusRequest, _$UpdateDeliveryStatusRequest];

  @override
  final String wireName = r'UpdateDeliveryStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDeliveryStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order_id';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(int),
    );
    if (object.orderCompleted != null) {
      yield r'order_completed';
      yield serializers.serialize(
        object.orderCompleted,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateDeliveryStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateDeliveryStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.orderId = valueDes;
          break;
        case r'order_completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.orderCompleted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateDeliveryStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDeliveryStatusRequestBuilder();
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

