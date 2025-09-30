// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2Permission extends V2Permission {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final String? module;
  @override
  final bool? isSystem;

  factory _$V2Permission([void Function(V2PermissionBuilder)? updates]) =>
      (V2PermissionBuilder()..update(updates))._build();

  _$V2Permission._({
    this.id,
    this.name,
    this.displayName,
    this.description,
    this.module,
    this.isSystem,
  }) : super._();
  @override
  V2Permission rebuild(void Function(V2PermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2PermissionBuilder toBuilder() => V2PermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2Permission &&
        id == other.id &&
        name == other.name &&
        displayName == other.displayName &&
        description == other.description &&
        module == other.module &&
        isSystem == other.isSystem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, module.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2Permission')
          ..add('id', id)
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('module', module)
          ..add('isSystem', isSystem))
        .toString();
  }
}

class V2PermissionBuilder
    implements Builder<V2Permission, V2PermissionBuilder> {
  _$V2Permission? _$v;

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

  String? _module;
  String? get module => _$this._module;
  set module(String? module) => _$this._module = module;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  V2PermissionBuilder() {
    V2Permission._defaults(this);
  }

  V2PermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _displayName = $v.displayName;
      _description = $v.description;
      _module = $v.module;
      _isSystem = $v.isSystem;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2Permission other) {
    _$v = other as _$V2Permission;
  }

  @override
  void update(void Function(V2PermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2Permission build() => _build();

  _$V2Permission _build() {
    final _$result =
        _$v ??
        _$V2Permission._(
          id: id,
          name: name,
          displayName: displayName,
          description: description,
          module: module,
          isSystem: isSystem,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
