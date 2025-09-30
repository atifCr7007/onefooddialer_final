//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reset_password_request.g.dart';

/// ResetPasswordRequest
///
/// Properties:
/// * [email] - Email address
/// * [token] - Reset token
/// * [password] - New password
/// * [passwordConfirmation] - Password confirmation
@BuiltValue()
abstract class ResetPasswordRequest implements Built<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  /// Email address
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Reset token
  @BuiltValueField(wireName: r'token')
  String get token;

  /// New password
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Password confirmation
  @BuiltValueField(wireName: r'password_confirmation')
  String get passwordConfirmation;

  ResetPasswordRequest._();

  factory ResetPasswordRequest([void updates(ResetPasswordRequestBuilder b)]) = _$ResetPasswordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetPasswordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetPasswordRequest> get serializer => _$ResetPasswordRequestSerializer();
}

class _$ResetPasswordRequestSerializer implements PrimitiveSerializer<ResetPasswordRequest> {
  @override
  final Iterable<Type> types = const [ResetPasswordRequest, _$ResetPasswordRequest];

  @override
  final String wireName = r'ResetPasswordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'password_confirmation';
    yield serializers.serialize(
      object.passwordConfirmation,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResetPasswordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'password_confirmation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passwordConfirmation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetPasswordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetPasswordRequestBuilder();
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

