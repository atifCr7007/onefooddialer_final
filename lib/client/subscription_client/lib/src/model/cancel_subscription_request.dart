//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_subscription_request.g.dart';

/// CancelSubscriptionRequest
///
/// Properties:
/// * [reason] - Reason for cancelling the subscription
@BuiltValue()
abstract class CancelSubscriptionRequest implements Built<CancelSubscriptionRequest, CancelSubscriptionRequestBuilder> {
  /// Reason for cancelling the subscription
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  CancelSubscriptionRequest._();

  factory CancelSubscriptionRequest([void updates(CancelSubscriptionRequestBuilder b)]) = _$CancelSubscriptionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CancelSubscriptionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CancelSubscriptionRequest> get serializer => _$CancelSubscriptionRequestSerializer();
}

class _$CancelSubscriptionRequestSerializer implements PrimitiveSerializer<CancelSubscriptionRequest> {
  @override
  final Iterable<Type> types = const [CancelSubscriptionRequest, _$CancelSubscriptionRequest];

  @override
  final String wireName = r'CancelSubscriptionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CancelSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CancelSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CancelSubscriptionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CancelSubscriptionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSubscriptionRequestBuilder();
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

