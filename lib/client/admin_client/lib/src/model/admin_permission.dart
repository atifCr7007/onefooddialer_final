//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_permission.g.dart';

/// AdminPermission
///
/// Properties:
/// * [id] - Permission identifier
/// * [name] - Human-readable permission name
/// * [description] 
/// * [resource] - Resource this permission applies to
/// * [action] - Action allowed on the resource
/// * [module] - Module this permission belongs to
/// * [isSystem] - Whether this is a system-defined permission
@BuiltValue()
abstract class AdminPermission implements Built<AdminPermission, AdminPermissionBuilder> {
  /// Permission identifier
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Human-readable permission name
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Resource this permission applies to
  @BuiltValueField(wireName: r'resource')
  String? get resource;

  /// Action allowed on the resource
  @BuiltValueField(wireName: r'action')
  String? get action;

  /// Module this permission belongs to
  @BuiltValueField(wireName: r'module')
  String? get module;

  /// Whether this is a system-defined permission
  @BuiltValueField(wireName: r'isSystem')
  bool? get isSystem;

  AdminPermission._();

  factory AdminPermission([void updates(AdminPermissionBuilder b)]) = _$AdminPermission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminPermissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminPermission> get serializer => _$AdminPermissionSerializer();
}

class _$AdminPermissionSerializer implements PrimitiveSerializer<AdminPermission> {
  @override
  final Iterable<Type> types = const [AdminPermission, _$AdminPermission];

  @override
  final String wireName = r'AdminPermission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.resource != null) {
      yield r'resource';
      yield serializers.serialize(
        object.resource,
        specifiedType: const FullType(String),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.module != null) {
      yield r'module';
      yield serializers.serialize(
        object.module,
        specifiedType: const FullType(String),
      );
    }
    if (object.isSystem != null) {
      yield r'isSystem';
      yield serializers.serialize(
        object.isSystem,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminPermissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resource = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'module':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.module = valueDes;
          break;
        case r'isSystem':
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
  AdminPermission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminPermissionBuilder();
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

