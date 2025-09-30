//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_subscription_plan200_response.g.dart';

/// DeleteSubscriptionPlan200Response
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class DeleteSubscriptionPlan200Response implements Built<DeleteSubscriptionPlan200Response, DeleteSubscriptionPlan200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  DeleteSubscriptionPlan200Response._();

  factory DeleteSubscriptionPlan200Response([void updates(DeleteSubscriptionPlan200ResponseBuilder b)]) = _$DeleteSubscriptionPlan200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteSubscriptionPlan200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteSubscriptionPlan200Response> get serializer => _$DeleteSubscriptionPlan200ResponseSerializer();
}

class _$DeleteSubscriptionPlan200ResponseSerializer implements PrimitiveSerializer<DeleteSubscriptionPlan200Response> {
  @override
  final Iterable<Type> types = const [DeleteSubscriptionPlan200Response, _$DeleteSubscriptionPlan200Response];

  @override
  final String wireName = r'DeleteSubscriptionPlan200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteSubscriptionPlan200Response object, {
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
    DeleteSubscriptionPlan200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteSubscriptionPlan200ResponseBuilder result,
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
  DeleteSubscriptionPlan200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSubscriptionPlan200ResponseBuilder();
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

