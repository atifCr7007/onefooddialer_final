// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesIdPutRequest extends V2AdminRolesIdPutRequest {
  @override
  final String? name;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final BuiltList<int>? permissions;
  @override
  final bool? isSystem;

  factory _$V2AdminRolesIdPutRequest([
    void Function(V2AdminRolesIdPutRequestBuilder)? updates,
  ]) => (V2AdminRolesIdPutRequestBuilder()..update(updates))._build();

  _$V2AdminRolesIdPutRequest._({
    this.name,
    this.displayName,
    this.description,
    this.permissions,
    this.isSystem,
  }) : super._();
  @override
  V2AdminRolesIdPutRequest rebuild(
    void Function(V2AdminRolesIdPutRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesIdPutRequestBuilder toBuilder() =>
      V2AdminRolesIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesIdPutRequest &&
        name == other.name &&
        displayName == other.displayName &&
        description == other.description &&
        permissions == other.permissions &&
        isSystem == other.isSystem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminRolesIdPutRequest')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('permissions', permissions)
          ..add('isSystem', isSystem))
        .toString();
  }
}

class V2AdminRolesIdPutRequestBuilder
    implements
        Builder<V2AdminRolesIdPutRequest, V2AdminRolesIdPutRequestBuilder> {
  _$V2AdminRolesIdPutRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<int>? _permissions;
  ListBuilder<int> get permissions =>
      _$this._permissions ??= ListBuilder<int>();
  set permissions(ListBuilder<int>? permissions) =>
      _$this._permissions = permissions;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  V2AdminRolesIdPutRequestBuilder() {
    V2AdminRolesIdPutRequest._defaults(this);
  }

  V2AdminRolesIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _description = $v.description;
      _permissions = $v.permissions?.toBuilder();
      _isSystem = $v.isSystem;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesIdPutRequest other) {
    _$v = other as _$V2AdminRolesIdPutRequest;
  }

  @override
  void update(void Function(V2AdminRolesIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesIdPutRequest build() => _build();

  _$V2AdminRolesIdPutRequest _build() {
    _$V2AdminRolesIdPutRequest _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesIdPutRequest._(
            name: name,
            displayName: displayName,
            description: description,
            permissions: _permissions?.build(),
            isSystem: isSystem,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminRolesIdPutRequest',
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
