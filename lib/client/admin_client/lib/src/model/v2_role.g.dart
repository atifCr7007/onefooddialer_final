// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2Role extends V2Role {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final bool? isSystem;
  @override
  final BuiltList<V2Permission>? permissions;

  factory _$V2Role([void Function(V2RoleBuilder)? updates]) =>
      (V2RoleBuilder()..update(updates))._build();

  _$V2Role._({
    this.id,
    this.name,
    this.displayName,
    this.description,
    this.isSystem,
    this.permissions,
  }) : super._();
  @override
  V2Role rebuild(void Function(V2RoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2RoleBuilder toBuilder() => V2RoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2Role &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        description == other.description &&
        isSystem == other.isSystem &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2Role')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('isSystem', isSystem)
          ..add('permissions', permissions))
        .toString();
  }
}

class V2RoleBuilder implements Builder<V2Role, V2RoleBuilder> {
  _$V2Role? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  ListBuilder<V2Permission>? _permissions;
  ListBuilder<V2Permission> get permissions =>
      _$this._permissions ??= ListBuilder<V2Permission>();
  set permissions(ListBuilder<V2Permission>? permissions) =>
      _$this._permissions = permissions;

  V2RoleBuilder() {
    V2Role._defaults(this);
  }

  V2RoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _description = $v.description;
      _isSystem = $v.isSystem;
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2Role other) {
    _$v = other as _$V2Role;
  }

  @override
  void update(void Function(V2RoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2Role build() => _build();

  _$V2Role _build() {
    _$V2Role _$result;
    try {
      _$result =
          _$v ??
          _$V2Role._(
            id: id,
            name: name,
            displayName: displayName,
            description: description,
            isSystem: isSystem,
            permissions: _permissions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2Role',
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
