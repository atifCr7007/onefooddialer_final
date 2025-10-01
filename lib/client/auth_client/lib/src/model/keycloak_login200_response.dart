//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:auth_client/src/model/keycloak_login200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keycloak_login200_response.g.dart';

/// KeycloakLogin200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class KeycloakLogin200Response implements Built<KeycloakLogin200Response, KeycloakLogin200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  KeycloakLogin200ResponseData? get data;

  KeycloakLogin200Response._();

  factory KeycloakLogin200Response([void updates(KeycloakLogin200ResponseBuilder b)]) = _$KeycloakLogin200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeycloakLogin200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeycloakLogin200Response> get serializer => _$KeycloakLogin200ResponseSerializer();
}

class _$KeycloakLogin200ResponseSerializer implements PrimitiveSerializer<KeycloakLogin200Response> {
  @override
  final Iterable<Type> types = const [KeycloakLogin200Response, _$KeycloakLogin200Response];

  @override
  final String wireName = r'KeycloakLogin200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeycloakLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(KeycloakLogin200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeycloakLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeycloakLogin200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeycloakLogin200ResponseData),
          ) as KeycloakLogin200ResponseData;
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
  KeycloakLogin200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeycloakLogin200ResponseBuilder();
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

