//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:subscription_client/src/model/subscription_plan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_subscription_plan_by_id200_response.g.dart';

/// GetSubscriptionPlanById200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetSubscriptionPlanById200Response implements Built<GetSubscriptionPlanById200Response, GetSubscriptionPlanById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  SubscriptionPlan? get data;

  GetSubscriptionPlanById200Response._();

  factory GetSubscriptionPlanById200Response([void updates(GetSubscriptionPlanById200ResponseBuilder b)]) = _$GetSubscriptionPlanById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSubscriptionPlanById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSubscriptionPlanById200Response> get serializer => _$GetSubscriptionPlanById200ResponseSerializer();
}

class _$GetSubscriptionPlanById200ResponseSerializer implements PrimitiveSerializer<GetSubscriptionPlanById200Response> {
  @override
  final Iterable<Type> types = const [GetSubscriptionPlanById200Response, _$GetSubscriptionPlanById200Response];

  @override
  final String wireName = r'GetSubscriptionPlanById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSubscriptionPlanById200Response object, {
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
        specifiedType: const FullType(SubscriptionPlan),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSubscriptionPlanById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSubscriptionPlanById200ResponseBuilder result,
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
  GetSubscriptionPlanById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubscriptionPlanById200ResponseBuilder();
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

