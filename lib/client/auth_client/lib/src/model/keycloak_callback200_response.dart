//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/keycloak_callback200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'keycloak_callback200_response.g.dart';

/// KeycloakCallback200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class KeycloakCallback200Response implements Built<KeycloakCallback200Response, KeycloakCallback200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  KeycloakCallback200ResponseData? get data;

  KeycloakCallback200Response._();

  factory KeycloakCallback200Response([void updates(KeycloakCallback200ResponseBuilder b)]) = _$KeycloakCallback200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeycloakCallback200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeycloakCallback200Response> get serializer => _$KeycloakCallback200ResponseSerializer();
}

class _$KeycloakCallback200ResponseSerializer implements PrimitiveSerializer<KeycloakCallback200Response> {
  @override
  final Iterable<Type> types = const [KeycloakCallback200Response, _$KeycloakCallback200Response];

  @override
  final String wireName = r'KeycloakCallback200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeycloakCallback200Response object, {
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
        specifiedType: const FullType(KeycloakCallback200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeycloakCallback200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KeycloakCallback200ResponseBuilder result,
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
            specifiedType: const FullType(KeycloakCallback200ResponseData),
          ) as KeycloakCallback200ResponseData;
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
  KeycloakCallback200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeycloakCallback200ResponseBuilder();
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

