//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_delivery_status200_response.g.dart';

/// UpdateDeliveryStatus200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class UpdateDeliveryStatus200Response implements Built<UpdateDeliveryStatus200Response, UpdateDeliveryStatus200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  UpdateDeliveryStatus200Response._();

  factory UpdateDeliveryStatus200Response([void updates(UpdateDeliveryStatus200ResponseBuilder b)]) = _$UpdateDeliveryStatus200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDeliveryStatus200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDeliveryStatus200Response> get serializer => _$UpdateDeliveryStatus200ResponseSerializer();
}

class _$UpdateDeliveryStatus200ResponseSerializer implements PrimitiveSerializer<UpdateDeliveryStatus200Response> {
  @override
  final Iterable<Type> types = const [UpdateDeliveryStatus200Response, _$UpdateDeliveryStatus200Response];

  @override
  final String wireName = r'UpdateDeliveryStatus200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDeliveryStatus200Response object, {
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
    UpdateDeliveryStatus200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateDeliveryStatus200ResponseBuilder result,
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
  UpdateDeliveryStatus200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDeliveryStatus200ResponseBuilder();
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

