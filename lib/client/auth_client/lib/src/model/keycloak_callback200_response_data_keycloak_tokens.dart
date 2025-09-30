//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keycloak_callback200_response_data_keycloak_tokens.g.dart';

/// KeycloakCallback200ResponseDataKeycloakTokens
///
/// Properties:
/// * [accessToken] - Keycloak access token
/// * [refreshToken] - Keycloak refresh token
/// * [expiresIn] - Token expiration time in seconds
@BuiltValue()
abstract class KeycloakCallback200ResponseDataKeycloakTokens implements Built<KeycloakCallback200ResponseDataKeycloakTokens, KeycloakCallback200ResponseDataKeycloakTokensBuilder> {
  /// Keycloak access token
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  /// Keycloak refresh token
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  /// Token expiration time in seconds
  @BuiltValueField(wireName: r'expires_in')
  int? get expiresIn;

  KeycloakCallback200ResponseDataKeycloakTokens._();

  factory KeycloakCallback200ResponseDataKeycloakTokens([void updates(KeycloakCallback200ResponseDataKeycloakTokensBuilder b)]) = _$KeycloakCallback200ResponseDataKeycloakTokens;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeycloakCallback200ResponseDataKeycloakTokensBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeycloakCallback200ResponseDataKeycloakTokens> get serializer => _$KeycloakCallback200ResponseDataKeycloakTokensSerializer();
}

class _$KeycloakCallback200ResponseDataKeycloakTokensSerializer implements PrimitiveSerializer<KeycloakCallback200ResponseDataKeycloakTokens> {
  @override
  final Iterable<Type> types = const [KeycloakCallback200ResponseDataKeycloakTokens, _$KeycloakCallback200ResponseDataKeycloakTokens];

  @override
  final String wireName = r'KeycloakCallback200ResponseDataKeycloakTokens';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeycloakCallback200ResponseDataKeycloakTokens object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresIn != null) {
      yield r'expires_in';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeycloakCallback200ResponseDataKeycloakTokens object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeycloakCallback200ResponseDataKeycloakTokensBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeycloakCallback200ResponseDataKeycloakTokens deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeycloakCallback200ResponseDataKeycloakTokensBuilder();
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

