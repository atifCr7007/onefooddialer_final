//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/subscription_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_subscription_plan201_response.g.dart';

/// CreateSubscriptionPlan201Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class CreateSubscriptionPlan201Response implements Built<CreateSubscriptionPlan201Response, CreateSubscriptionPlan201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  SubscriptionPlan? get data;

  CreateSubscriptionPlan201Response._();

  factory CreateSubscriptionPlan201Response([void updates(CreateSubscriptionPlan201ResponseBuilder b)]) = _$CreateSubscriptionPlan201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSubscriptionPlan201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSubscriptionPlan201Response> get serializer => _$CreateSubscriptionPlan201ResponseSerializer();
}

class _$CreateSubscriptionPlan201ResponseSerializer implements PrimitiveSerializer<CreateSubscriptionPlan201Response> {
  @override
  final Iterable<Type> types = const [CreateSubscriptionPlan201Response, _$CreateSubscriptionPlan201Response];

  @override
  final String wireName = r'CreateSubscriptionPlan201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSubscriptionPlan201Response object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(SubscriptionPlan),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSubscriptionPlan201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSubscriptionPlan201ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SubscriptionPlan),
          ) as SubscriptionPlan;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSubscriptionPlan201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubscriptionPlan201ResponseBuilder();
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

