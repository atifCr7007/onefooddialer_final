//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:admin_client/src/model/admin_role.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_user.g.dart';

/// AdminUser
///
/// Properties:
/// * [id] 
/// * [name] - Full name of the admin user
/// * [email] - Email address (unique)
/// * [role] 
/// * [status] - Current user status
/// * [permissions] - Direct permissions assigned to user
/// * [lastLoginAt] - Last login timestamp
/// * [loginCount] - Total number of logins
/// * [createdAt] 
/// * [updatedAt] 
/// * [createdBy] - ID of user who created this account
@BuiltValue()
abstract class AdminUser implements Built<AdminUser, AdminUserBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Full name of the admin user
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Email address (unique)
  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'role')
  AdminRole? get role;

  /// Current user status
  @BuiltValueField(wireName: r'status')
  AdminUserStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  suspended,  };

  /// Direct permissions assigned to user
  @BuiltValueField(wireName: r'permissions')
  BuiltList<String>? get permissions;

  /// Last login timestamp
  @BuiltValueField(wireName: r'lastLoginAt')
  DateTime? get lastLoginAt;

  /// Total number of logins
  @BuiltValueField(wireName: r'loginCount')
  int? get loginCount;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  /// ID of user who created this account
  @BuiltValueField(wireName: r'createdBy')
  String? get createdBy;

  AdminUser._();

  factory AdminUser([void updates(AdminUserBuilder b)]) = _$AdminUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminUser> get serializer => _$AdminUserSerializer();
}

class _$AdminUserSerializer implements PrimitiveSerializer<AdminUser> {
  @override
  final Iterable<Type> types = const [AdminUser, _$AdminUser];

  @override
  final String wireName = r'AdminUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminUser object, {
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(AdminRole),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(AdminUserStatusEnum),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lastLoginAt != null) {
      yield r'lastLoginAt';
      yield serializers.serialize(
        object.lastLoginAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.loginCount != null) {
      yield r'loginCount';
      yield serializers.serialize(
        object.loginCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.createdBy != null) {
      yield r'createdBy';
      yield serializers.serialize(
        object.createdBy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminUserBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminRole),
          ) as AdminRole;
          result.role.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdminUserStatusEnum),
          ) as AdminUserStatusEnum;
          result.status = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.permissions.replace(valueDes);
          break;
        case r'lastLoginAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastLoginAt = valueDes;
          break;
        case r'loginCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loginCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminUserBuilder();
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

class AdminUserStatusEnum extends EnumClass {

  /// Current user status
  @BuiltValueEnumConst(wireName: r'active')
  static const AdminUserStatusEnum active = _$adminUserStatusEnum_active;
  /// Current user status
  @BuiltValueEnumConst(wireName: r'inactive')
  static const AdminUserStatusEnum inactive = _$adminUserStatusEnum_inactive;
  /// Current user status
  @BuiltValueEnumConst(wireName: r'suspended')
  static const AdminUserStatusEnum suspended = _$adminUserStatusEnum_suspended;
  /// Current user status
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AdminUserStatusEnum unknownDefaultOpenApi = _$adminUserStatusEnum_unknownDefaultOpenApi;

  static Serializer<AdminUserStatusEnum> get serializer => _$adminUserStatusEnumSerializer;

  const AdminUserStatusEnum._(String name): super(name);

  static BuiltSet<AdminUserStatusEnum> get values => _$adminUserStatusEnumValues;
  static AdminUserStatusEnum valueOf(String name) => _$adminUserStatusEnumValueOf(name);
}

