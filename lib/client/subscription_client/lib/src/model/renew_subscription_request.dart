//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'renew_subscription_request.g.dart';

/// RenewSubscriptionRequest
///
/// Properties:
/// * [days] - Number of days to renew the subscription for
@BuiltValue()
abstract class RenewSubscriptionRequest implements Built<RenewSubscriptionRequest, RenewSubscriptionRequestBuilder> {
  /// Number of days to renew the subscription for
  @BuiltValueField(wireName: r'days')
  int? get days;

  RenewSubscriptionRequest._();

  factory RenewSubscriptionRequest([void updates(RenewSubscriptionRequestBuilder b)]) = _$RenewSubscriptionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenewSubscriptionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenewSubscriptionRequest> get serializer => _$RenewSubscriptionRequestSerializer();
}

class _$RenewSubscriptionRequestSerializer implements PrimitiveSerializer<RenewSubscriptionRequest> {
  @override
  final Iterable<Type> types = const [RenewSubscriptionRequest, _$RenewSubscriptionRequest];

  @override
  final String wireName = r'RenewSubscriptionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenewSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.days != null) {
      yield r'days';
      yield serializers.serialize(
        object.days,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RenewSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RenewSubscriptionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.days = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RenewSubscriptionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenewSubscriptionRequestBuilder();
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

