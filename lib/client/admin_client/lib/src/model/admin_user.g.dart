// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AdminUserStatusEnum _$adminUserStatusEnum_active =
    const AdminUserStatusEnum._('active');
const AdminUserStatusEnum _$adminUserStatusEnum_inactive =
    const AdminUserStatusEnum._('inactive');
const AdminUserStatusEnum _$adminUserStatusEnum_suspended =
    const AdminUserStatusEnum._('suspended');
const AdminUserStatusEnum _$adminUserStatusEnum_unknownDefaultOpenApi =
    const AdminUserStatusEnum._('unknownDefaultOpenApi');

AdminUserStatusEnum _$adminUserStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$adminUserStatusEnum_active;
    case 'inactive':
      return _$adminUserStatusEnum_inactive;
    case 'suspended':
      return _$adminUserStatusEnum_suspended;
    case 'unknownDefaultOpenApi':
      return _$adminUserStatusEnum_unknownDefaultOpenApi;
    default:
      return _$adminUserStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<AdminUserStatusEnum> _$adminUserStatusEnumValues =
    BuiltSet<AdminUserStatusEnum>(const <AdminUserStatusEnum>[
      _$adminUserStatusEnum_active,
      _$adminUserStatusEnum_inactive,
      _$adminUserStatusEnum_suspended,
      _$adminUserStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<AdminUserStatusEnum> _$adminUserStatusEnumSerializer =
    _$AdminUserStatusEnumSerializer();

class _$AdminUserStatusEnumSerializer
    implements PrimitiveSerializer<AdminUserStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'inactive': 'inactive',
    'suspended': 'suspended',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'inactive': 'inactive',
    'suspended': 'suspended',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AdminUserStatusEnum];
  @override
  final String wireName = 'AdminUserStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    AdminUserStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AdminUserStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AdminUserStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$AdminUser extends AdminUser {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final AdminRole? role;
  @override
  final AdminUserStatusEnum? status;
  @override
  final BuiltList<String>? permissions;
  @override
  final DateTime? lastLoginAt;
  @override
  final int? loginCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? createdBy;

  factory _$AdminUser([void Function(AdminUserBuilder)? updates]) =>
      (AdminUserBuilder()..update(updates))._build();

  _$AdminUser._({
    this.id,
    this.name,
    this.email,
    this.role,
    this.status,
    this.permissions,
    this.lastLoginAt,
    this.loginCount,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
  }) : super._();
  @override
  AdminUser rebuild(void Function(AdminUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminUserBuilder toBuilder() => AdminUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminUser &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        role == other.role &&
        status == other.status &&
        permissions == other.permissions &&
        lastLoginAt == other.lastLoginAt &&
        loginCount == other.loginCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, lastLoginAt.hashCode);
    _$hash = $jc(_$hash, loginCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminUser')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('role', role)
          ..add('status', status)
          ..add('permissions', permissions)
          ..add('lastLoginAt', lastLoginAt)
          ..add('loginCount', loginCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class AdminUserBuilder implements Builder<AdminUser, AdminUserBuilder> {
  _$AdminUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AdminRoleBuilder? _role;
  AdminRoleBuilder get role => _$this._role ??= AdminRoleBuilder();
  set role(AdminRoleBuilder? role) => _$this._role = role;

  AdminUserStatusEnum? _status;
  AdminUserStatusEnum? get status => _$this._status;
  set status(AdminUserStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  DateTime? _lastLoginAt;
  DateTime? get lastLoginAt => _$this._lastLoginAt;
  set lastLoginAt(DateTime? lastLoginAt) => _$this._lastLoginAt = lastLoginAt;

  int? _loginCount;
  int? get loginCount => _$this._loginCount;
  set loginCount(int? loginCount) => _$this._loginCount = loginCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  AdminUserBuilder() {
    AdminUser._defaults(this);
  }

  AdminUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _role = $v.role?.toBuilder();
      _status = $v.status;
      _permissions = $v.permissions?.toBuilder();
      _lastLoginAt = $v.lastLoginAt;
      _loginCount = $v.loginCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminUser other) {
    _$v = other as _$AdminUser;
  }

  @override
  void update(void Function(AdminUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminUser build() => _build();

  _$AdminUser _build() {
    _$AdminUser _$result;
    try {
      _$result =
          _$v ??
          _$AdminUser._(
            id: id,
            name: name,
            email: email,
            role: _role?.build(),
            status: status,
            permissions: _permissions?.build(),
            lastLoginAt: lastLoginAt,
            loginCount: loginCount,
            createdAt: createdAt,
            updatedAt: updatedAt,
            createdBy: createdBy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'role';
        _role?.build();

        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AdminUser',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
