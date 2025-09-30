//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/subscription_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_all_subscription_plans200_response.g.dart';

/// GetAllSubscriptionPlans200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetAllSubscriptionPlans200Response implements Built<GetAllSubscriptionPlans200Response, GetAllSubscriptionPlans200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<SubscriptionPlan>? get data;

  GetAllSubscriptionPlans200Response._();

  factory GetAllSubscriptionPlans200Response([void updates(GetAllSubscriptionPlans200ResponseBuilder b)]) = _$GetAllSubscriptionPlans200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAllSubscriptionPlans200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAllSubscriptionPlans200Response> get serializer => _$GetAllSubscriptionPlans200ResponseSerializer();
}

class _$GetAllSubscriptionPlans200ResponseSerializer implements PrimitiveSerializer<GetAllSubscriptionPlans200Response> {
  @override
  final Iterable<Type> types = const [GetAllSubscriptionPlans200Response, _$GetAllSubscriptionPlans200Response];

  @override
  final String wireName = r'GetAllSubscriptionPlans200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAllSubscriptionPlans200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(SubscriptionPlan)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAllSubscriptionPlans200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAllSubscriptionPlans200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubscriptionPlan)]),
          ) as BuiltList<SubscriptionPlan>;
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
  GetAllSubscriptionPlans200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAllSubscriptionPlans200ResponseBuilder();
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

