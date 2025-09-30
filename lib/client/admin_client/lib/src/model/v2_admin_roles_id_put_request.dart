//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'v2_admin_roles_id_put_request.g.dart';

/// V2AdminRolesIdPutRequest
///
/// Properties:
/// * [name] 
/// * [displayName] 
/// * [description] 
/// * [permissions] 
/// * [isSystem] 
@BuiltValue()
abstract class V2AdminRolesIdPutRequest implements Built<V2AdminRolesIdPutRequest, V2AdminRolesIdPutRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'display_name')
  String? get displayName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<int>? get permissions;

  @BuiltValueField(wireName: r'is_system')
  bool? get isSystem;

  V2AdminRolesIdPutRequest._();

  factory V2AdminRolesIdPutRequest([void updates(V2AdminRolesIdPutRequestBuilder b)]) = _$V2AdminRolesIdPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(V2AdminRolesIdPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<V2AdminRolesIdPutRequest> get serializer => _$V2AdminRolesIdPutRequestSerializer();
}

class _$V2AdminRolesIdPutRequestSerializer implements PrimitiveSerializer<V2AdminRolesIdPutRequest> {
  @override
  final Iterable<Type> types = const [V2AdminRolesIdPutRequest, _$V2AdminRolesIdPutRequest];

  @override
  final String wireName = r'V2AdminRolesIdPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    V2AdminRolesIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.isSystem != null) {
      yield r'is_system';
      yield serializers.serialize(
        object.isSystem,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    V2AdminRolesIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required V2AdminRolesIdPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.permissions.replace(valueDes);
          break;
        case r'is_system':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSystem = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  V2AdminRolesIdPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = V2AdminRolesIdPutRequestBuilder();
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

