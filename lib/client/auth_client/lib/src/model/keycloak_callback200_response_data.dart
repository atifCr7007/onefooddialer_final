//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/keycloak_callback200_response_data_keycloak_tokens.dart';
import 'package:openapi/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keycloak_callback200_response_data.g.dart';

/// KeycloakCallback200ResponseData
///
/// Properties:
/// * [user] 
/// * [token] - Authentication token
/// * [tokenType] 
/// * [keycloakTokens] 
@BuiltValue()
abstract class KeycloakCallback200ResponseData implements Built<KeycloakCallback200ResponseData, KeycloakCallback200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'user')
  User? get user;

  /// Authentication token
  @BuiltValueField(wireName: r'token')
  String? get token;

  @BuiltValueField(wireName: r'token_type')
  String? get tokenType;

  @BuiltValueField(wireName: r'keycloak_tokens')
  KeycloakCallback200ResponseDataKeycloakTokens? get keycloakTokens;

  KeycloakCallback200ResponseData._();

  factory KeycloakCallback200ResponseData([void updates(KeycloakCallback200ResponseDataBuilder b)]) = _$KeycloakCallback200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeycloakCallback200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeycloakCallback200ResponseData> get serializer => _$KeycloakCallback200ResponseDataSerializer();
}

class _$KeycloakCallback200ResponseDataSerializer implements PrimitiveSerializer<KeycloakCallback200ResponseData> {
  @override
  final Iterable<Type> types = const [KeycloakCallback200ResponseData, _$KeycloakCallback200ResponseData];

  @override
  final String wireName = r'KeycloakCallback200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeycloakCallback200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(User),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenType != null) {
      yield r'token_type';
      yield serializers.serialize(
        object.tokenType,
        specifiedType: const FullType(String),
      );
    }
    if (object.keycloakTokens != null) {
      yield r'keycloak_tokens';
      yield serializers.serialize(
        object.keycloakTokens,
        specifiedType: const FullType(KeycloakCallback200ResponseDataKeycloakTokens),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeycloakCallback200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeycloakCallback200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.user.replace(valueDes);
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'token_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenType = valueDes;
          break;
        case r'keycloak_tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeycloakCallback200ResponseDataKeycloakTokens),
          ) as KeycloakCallback200ResponseDataKeycloakTokens;
          result.keycloakTokens.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeycloakCallback200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeycloakCallback200ResponseDataBuilder();
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

