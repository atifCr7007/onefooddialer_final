//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/v2_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_roles_id_get200_response.g.dart';

/// V2AdminRolesIdGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class V2AdminRolesIdGet200Response implements Built<V2AdminRolesIdGet200Response, V2AdminRolesIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  V2Role? get data;

  V2AdminRolesIdGet200Response._();

  factory V2AdminRolesIdGet200Response([void updates(V2AdminRolesIdGet200ResponseBuilder b)]) = _$V2AdminRolesIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminRolesIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminRolesIdGet200Response> get serializer => _$V2AdminRolesIdGet200ResponseSerializer();
}

class _$V2AdminRolesIdGet200ResponseSerializer implements PrimitiveSerializer<V2AdminRolesIdGet200Response> {
  @override
  final Iterable<Type> types = const [V2AdminRolesIdGet200Response, _$V2AdminRolesIdGet200Response];

  @override
  final String wireName = r'V2AdminRolesIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminRolesIdGet200Response object, {
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
        specifiedType: const FullType(V2Role),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminRolesIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminRolesIdGet200ResponseBuilder result,
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
            specifiedType: const FullType(V2Role),
          ) as V2Role;
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
  V2AdminRolesIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminRolesIdGet200ResponseBuilder();
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

