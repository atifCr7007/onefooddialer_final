//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:subscription_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subscription_pause_history_inner.g.dart';

/// SubscriptionPauseHistoryInner
///
/// Properties:
/// * [pausedAt] - Pause timestamp
/// * [reason] - Reason for pausing
/// * [resumeDate] - Date to automatically resume
/// * [resumedAt] - Resume timestamp
@BuiltValue()
abstract class SubscriptionPauseHistoryInner implements Built<SubscriptionPauseHistoryInner, SubscriptionPauseHistoryInnerBuilder> {
  /// Pause timestamp
  @BuiltValueField(wireName: r'paused_at')
  DateTime? get pausedAt;

  /// Reason for pausing
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Date to automatically resume
  @BuiltValueField(wireName: r'resume_date')
  Date? get resumeDate;

  /// Resume timestamp
  @BuiltValueField(wireName: r'resumed_at')
  DateTime? get resumedAt;

  SubscriptionPauseHistoryInner._();

  factory SubscriptionPauseHistoryInner([void updates(SubscriptionPauseHistoryInnerBuilder b)]) = _$SubscriptionPauseHistoryInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SubscriptionPauseHistoryInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SubscriptionPauseHistoryInner> get serializer => _$SubscriptionPauseHistoryInnerSerializer();
}

class _$SubscriptionPauseHistoryInnerSerializer implements PrimitiveSerializer<SubscriptionPauseHistoryInner> {
  @override
  final Iterable<Type> types = const [SubscriptionPauseHistoryInner, _$SubscriptionPauseHistoryInner];

  @override
  final String wireName = r'SubscriptionPauseHistoryInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SubscriptionPauseHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pausedAt != null) {
      yield r'paused_at';
      yield serializers.serialize(
        object.pausedAt,
        specifiedType: const FullType(DateTime),
      );
    }
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
    if (object.resumedAt != null) {
      yield r'resumed_at';
      yield serializers.serialize(
        object.resumedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPauseHistoryInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SubscriptionPauseHistoryInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paused_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.pausedAt = valueDes;
          break;
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
        case r'resumed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.resumedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SubscriptionPauseHistoryInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionPauseHistoryInnerBuilder();
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

