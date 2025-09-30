//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keycloak_login200_response_data.g.dart';

/// KeycloakLogin200ResponseData
///
/// Properties:
/// * [authUrl] 
@BuiltValue()
abstract class KeycloakLogin200ResponseData implements Built<KeycloakLogin200ResponseData, KeycloakLogin200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'auth_url')
  String? get authUrl;

  KeycloakLogin200ResponseData._();

  factory KeycloakLogin200ResponseData([void updates(KeycloakLogin200ResponseDataBuilder b)]) = _$KeycloakLogin200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeycloakLogin200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeycloakLogin200ResponseData> get serializer => _$KeycloakLogin200ResponseDataSerializer();
}

class _$KeycloakLogin200ResponseDataSerializer implements PrimitiveSerializer<KeycloakLogin200ResponseData> {
  @override
  final Iterable<Type> types = const [KeycloakLogin200ResponseData, _$KeycloakLogin200ResponseData];

  @override
  final String wireName = r'KeycloakLogin200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeycloakLogin200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authUrl != null) {
      yield r'auth_url';
      yield serializers.serialize(
        object.authUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeycloakLogin200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeycloakLogin200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'auth_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  KeycloakLogin200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeycloakLogin200ResponseDataBuilder();
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

