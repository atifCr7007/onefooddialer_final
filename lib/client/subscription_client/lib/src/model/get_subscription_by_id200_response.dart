//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/subscription.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_subscription_by_id200_response.g.dart';

/// GetSubscriptionById200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetSubscriptionById200Response implements Built<GetSubscriptionById200Response, GetSubscriptionById200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Subscription? get data;

  GetSubscriptionById200Response._();

  factory GetSubscriptionById200Response([void updates(GetSubscriptionById200ResponseBuilder b)]) = _$GetSubscriptionById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSubscriptionById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSubscriptionById200Response> get serializer => _$GetSubscriptionById200ResponseSerializer();
}

class _$GetSubscriptionById200ResponseSerializer implements PrimitiveSerializer<GetSubscriptionById200Response> {
  @override
  final Iterable<Type> types = const [GetSubscriptionById200Response, _$GetSubscriptionById200Response];

  @override
  final String wireName = r'GetSubscriptionById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSubscriptionById200Response object, {
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
        specifiedType: const FullType(Subscription),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSubscriptionById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSubscriptionById200ResponseBuilder result,
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
            specifiedType: const FullType(Subscription),
          ) as Subscription;
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
  GetSubscriptionById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubscriptionById200ResponseBuilder();
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

