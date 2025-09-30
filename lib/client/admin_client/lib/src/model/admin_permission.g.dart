// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminPermission extends AdminPermission {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? resource;
  @override
  final String? action;
  @override
  final String? module;
  @override
  final bool? isSystem;

  factory _$AdminPermission([void Function(AdminPermissionBuilder)? updates]) =>
      (AdminPermissionBuilder()..update(updates))._build();

  _$AdminPermission._({
    this.id,
    this.name,
    this.description,
    this.resource,
    this.action,
    this.module,
    this.isSystem,
  }) : super._();
  @override
  AdminPermission rebuild(void Function(AdminPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminPermissionBuilder toBuilder() => AdminPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminPermission &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        resource == other.resource &&
        action == other.action &&
        module == other.module &&
        isSystem == other.isSystem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, module.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminPermission')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('resource', resource)
          ..add('action', action)
          ..add('module', module)
          ..add('isSystem', isSystem))
        .toString();
  }
}

class AdminPermissionBuilder
    implements Builder<AdminPermission, AdminPermissionBuilder> {
  _$AdminPermission? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _module;
  String? get module => _$this._module;
  set module(String? module) => _$this._module = module;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  AdminPermissionBuilder() {
    AdminPermission._defaults(this);
  }

  AdminPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _resource = $v.resource;
      _action = $v.action;
      _module = $v.module;
      _isSystem = $v.isSystem;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminPermission other) {
    _$v = other as _$AdminPermission;
  }

  @override
  void update(void Function(AdminPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminPermission build() => _build();

  _$AdminPermission _build() {
    final _$result =
        _$v ??
        _$AdminPermission._(
          id: id,
          name: name,
          description: description,
          resource: resource,
          action: action,
          module: module,
          isSystem: isSystem,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
