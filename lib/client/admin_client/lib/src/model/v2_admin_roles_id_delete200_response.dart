//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_roles_id_delete200_response.g.dart';

/// V2AdminRolesIdDelete200Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class V2AdminRolesIdDelete200Response implements Built<V2AdminRolesIdDelete200Response, V2AdminRolesIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  V2AdminRolesIdDelete200Response._();

  factory V2AdminRolesIdDelete200Response([void updates(V2AdminRolesIdDelete200ResponseBuilder b)]) = _$V2AdminRolesIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminRolesIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminRolesIdDelete200Response> get serializer => _$V2AdminRolesIdDelete200ResponseSerializer();
}

class _$V2AdminRolesIdDelete200ResponseSerializer implements PrimitiveSerializer<V2AdminRolesIdDelete200Response> {
  @override
  final Iterable<Type> types = const [V2AdminRolesIdDelete200Response, _$V2AdminRolesIdDelete200Response];

  @override
  final String wireName = r'V2AdminRolesIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminRolesIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminRolesIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminRolesIdDelete200ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminRolesIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminRolesIdDelete200ResponseBuilder();
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

