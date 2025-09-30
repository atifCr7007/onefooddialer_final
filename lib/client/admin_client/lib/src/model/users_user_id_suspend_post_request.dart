//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_user_id_suspend_post_request.g.dart';

/// UsersUserIdSuspendPostRequest
///
/// Properties:
/// * [reason] - Reason for suspension
/// * [duration] - Suspension duration in days
@BuiltValue()
abstract class UsersUserIdSuspendPostRequest implements Built<UsersUserIdSuspendPostRequest, UsersUserIdSuspendPostRequestBuilder> {
  /// Reason for suspension
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Suspension duration in days
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  UsersUserIdSuspendPostRequest._();

  factory UsersUserIdSuspendPostRequest([void updates(UsersUserIdSuspendPostRequestBuilder b)]) = _$UsersUserIdSuspendPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersUserIdSuspendPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersUserIdSuspendPostRequest> get serializer => _$UsersUserIdSuspendPostRequestSerializer();
}

class _$UsersUserIdSuspendPostRequestSerializer implements PrimitiveSerializer<UsersUserIdSuspendPostRequest> {
  @override
  final Iterable<Type> types = const [UsersUserIdSuspendPostRequest, _$UsersUserIdSuspendPostRequest];

  @override
  final String wireName = r'UsersUserIdSuspendPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersUserIdSuspendPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersUserIdSuspendPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersUserIdSuspendPostRequestBuilder result,
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
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersUserIdSuspendPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersUserIdSuspendPostRequestBuilder();
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

