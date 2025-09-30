// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminRole extends AdminRole {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final BuiltList<AdminPermission>? permissions;
  @override
  final bool? isSystem;
  @override
  final int? userCount;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$AdminRole([void Function(AdminRoleBuilder)? updates]) =>
      (AdminRoleBuilder()..update(updates))._build();

  _$AdminRole._({
    this.id,
    this.name,
    this.displayName,
    this.description,
    this.permissions,
    this.isSystem,
    this.userCount,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  AdminRole rebuild(void Function(AdminRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminRoleBuilder toBuilder() => AdminRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminRole &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        description == other.description &&
        permissions == other.permissions &&
        isSystem == other.isSystem &&
        userCount == other.userCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jc(_$hash, userCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminRole')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('permissions', permissions)
          ..add('isSystem', isSystem)
          ..add('userCount', userCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AdminRoleBuilder implements Builder<AdminRole, AdminRoleBuilder> {
  _$AdminRole? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<AdminPermission>? _permissions;
  ListBuilder<AdminPermission> get permissions =>
      _$this._permissions ??= ListBuilder<AdminPermission>();
  set permissions(ListBuilder<AdminPermission>? permissions) =>
      _$this._permissions = permissions;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  int? _userCount;
  int? get userCount => _$this._userCount;
  set userCount(int? userCount) => _$this._userCount = userCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AdminRoleBuilder() {
    AdminRole._defaults(this);
  }

  AdminRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _description = $v.description;
      _permissions = $v.permissions?.toBuilder();
      _isSystem = $v.isSystem;
      _userCount = $v.userCount;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminRole other) {
    _$v = other as _$AdminRole;
  }

  @override
  void update(void Function(AdminRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminRole build() => _build();

  _$AdminRole _build() {
    _$AdminRole _$result;
    try {
      _$result =
          _$v ??
          _$AdminRole._(
            id: id,
            name: name,
            displayName: displayName,
            description: description,
            permissions: _permissions?.build(),
            isSystem: isSystem,
            userCount: userCount,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AdminRole',
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
