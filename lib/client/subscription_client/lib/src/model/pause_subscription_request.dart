//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pause_subscription_request.g.dart';

/// PauseSubscriptionRequest
///
/// Properties:
/// * [reason] - Reason for pausing the subscription
/// * [resumeDate] - Date to automatically resume the subscription
@BuiltValue()
abstract class PauseSubscriptionRequest implements Built<PauseSubscriptionRequest, PauseSubscriptionRequestBuilder> {
  /// Reason for pausing the subscription
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Date to automatically resume the subscription
  @BuiltValueField(wireName: r'resume_date')
  Date? get resumeDate;

  PauseSubscriptionRequest._();

  factory PauseSubscriptionRequest([void updates(PauseSubscriptionRequestBuilder b)]) = _$PauseSubscriptionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PauseSubscriptionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PauseSubscriptionRequest> get serializer => _$PauseSubscriptionRequestSerializer();
}

class _$PauseSubscriptionRequestSerializer implements PrimitiveSerializer<PauseSubscriptionRequest> {
  @override
  final Iterable<Type> types = const [PauseSubscriptionRequest, _$PauseSubscriptionRequest];

  @override
  final String wireName = r'PauseSubscriptionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PauseSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.resumeDate != null) {
      yield r'resume_date';
      yield serializers.serialize(
        object.resumeDate,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PauseSubscriptionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PauseSubscriptionRequestBuilder result,
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
        case r'resume_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.resumeDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PauseSubscriptionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PauseSubscriptionRequestBuilder();
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

