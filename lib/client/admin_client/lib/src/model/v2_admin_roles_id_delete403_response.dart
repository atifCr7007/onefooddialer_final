//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_roles_id_delete403_response.g.dart';

/// V2AdminRolesIdDelete403Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class V2AdminRolesIdDelete403Response implements Built<V2AdminRolesIdDelete403Response, V2AdminRolesIdDelete403ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  V2AdminRolesIdDelete403Response._();

  factory V2AdminRolesIdDelete403Response([void updates(V2AdminRolesIdDelete403ResponseBuilder b)]) = _$V2AdminRolesIdDelete403Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminRolesIdDelete403ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminRolesIdDelete403Response> get serializer => _$V2AdminRolesIdDelete403ResponseSerializer();
}

class _$V2AdminRolesIdDelete403ResponseSerializer implements PrimitiveSerializer<V2AdminRolesIdDelete403Response> {
  @override
  final Iterable<Type> types = const [V2AdminRolesIdDelete403Response, _$V2AdminRolesIdDelete403Response];

  @override
  final String wireName = r'V2AdminRolesIdDelete403Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminRolesIdDelete403Response object, {
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
    V2AdminRolesIdDelete403Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminRolesIdDelete403ResponseBuilder result,
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
  V2AdminRolesIdDelete403Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminRolesIdDelete403ResponseBuilder();
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

