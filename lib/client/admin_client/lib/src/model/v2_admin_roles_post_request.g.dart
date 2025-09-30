// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_roles_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminRolesPostRequest extends V2AdminRolesPostRequest {
  @override
  final String name;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final BuiltList<int>? permissions;
  @override
  final bool? isSystem;
  @override
  final int? companyId;
  @override
  final int? unitId;

  factory _$V2AdminRolesPostRequest([
    void Function(V2AdminRolesPostRequestBuilder)? updates,
  ]) => (V2AdminRolesPostRequestBuilder()..update(updates))._build();

  _$V2AdminRolesPostRequest._({
    required this.name,
    this.displayName,
    this.description,
    this.permissions,
    this.isSystem,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  V2AdminRolesPostRequest rebuild(
    void Function(V2AdminRolesPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminRolesPostRequestBuilder toBuilder() =>
      V2AdminRolesPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminRolesPostRequest &&
        name == other.name &&
        displayName == other.displayName &&
        description == other.description &&
        permissions == other.permissions &&
        isSystem == other.isSystem &&
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminRolesPostRequest')
          ..add('name', name)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('permissions', permissions)
          ..add('isSystem', isSystem)
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class V2AdminRolesPostRequestBuilder
    implements
        Builder<V2AdminRolesPostRequest, V2AdminRolesPostRequestBuilder> {
  _$V2AdminRolesPostRequest? _$v;

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

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  V2AdminRolesPostRequestBuilder() {
    V2AdminRolesPostRequest._defaults(this);
  }

  V2AdminRolesPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _displayName = $v.displayName;
      _description = $v.description;
      _permissions = $v.permissions?.toBuilder();
      _isSystem = $v.isSystem;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminRolesPostRequest other) {
    _$v = other as _$V2AdminRolesPostRequest;
  }

  @override
  void update(void Function(V2AdminRolesPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminRolesPostRequest build() => _build();

  _$V2AdminRolesPostRequest _build() {
    _$V2AdminRolesPostRequest _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminRolesPostRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'V2AdminRolesPostRequest',
              'name',
            ),
            displayName: displayName,
            description: description,
            permissions: _permissions?.build(),
            isSystem: isSystem,
            companyId: companyId,
            unitId: unitId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminRolesPostRequest',
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
