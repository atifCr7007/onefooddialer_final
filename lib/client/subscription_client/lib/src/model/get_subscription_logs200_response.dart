//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:subscription_client/src/model/subscription_log.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_subscription_logs200_response.g.dart';

/// GetSubscriptionLogs200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class GetSubscriptionLogs200Response implements Built<GetSubscriptionLogs200Response, GetSubscriptionLogs200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<SubscriptionLog>? get data;

  GetSubscriptionLogs200Response._();

  factory GetSubscriptionLogs200Response([void updates(GetSubscriptionLogs200ResponseBuilder b)]) = _$GetSubscriptionLogs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSubscriptionLogs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSubscriptionLogs200Response> get serializer => _$GetSubscriptionLogs200ResponseSerializer();
}

class _$GetSubscriptionLogs200ResponseSerializer implements PrimitiveSerializer<GetSubscriptionLogs200Response> {
  @override
  final Iterable<Type> types = const [GetSubscriptionLogs200Response, _$GetSubscriptionLogs200Response];

  @override
  final String wireName = r'GetSubscriptionLogs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSubscriptionLogs200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(SubscriptionLog)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSubscriptionLogs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSubscriptionLogs200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(SubscriptionLog)]),
          ) as BuiltList<SubscriptionLog>;
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
  GetSubscriptionLogs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSubscriptionLogs200ResponseBuilder();
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

