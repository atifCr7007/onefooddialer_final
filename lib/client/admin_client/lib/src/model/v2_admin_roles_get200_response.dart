//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:admin_client/openapi.dart';
import 'package:admin_client/src/model/v2_role.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_roles_get200_response.g.dart';

/// V2AdminRolesGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class V2AdminRolesGet200Response implements Built<V2AdminRolesGet200Response, V2AdminRolesGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<V2Role>? get data;

  V2AdminRolesGet200Response._();

  factory V2AdminRolesGet200Response([void updates(V2AdminRolesGet200ResponseBuilder b)]) = _$V2AdminRolesGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminRolesGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminRolesGet200Response> get serializer => _$V2AdminRolesGet200ResponseSerializer();
}

class _$V2AdminRolesGet200ResponseSerializer implements PrimitiveSerializer<V2AdminRolesGet200Response> {
  @override
  final Iterable<Type> types = const [V2AdminRolesGet200Response, _$V2AdminRolesGet200Response];

  @override
  final String wireName = r'V2AdminRolesGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminRolesGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(V2Role)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminRolesGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminRolesGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(V2Role)]),
          ) as BuiltList<V2Role>;
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
  V2AdminRolesGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminRolesGet200ResponseBuilder();
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

