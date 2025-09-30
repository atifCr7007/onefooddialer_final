// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_user_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminUserGet200ResponseData extends V2AdminUserGet200ResponseData {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final BuiltList<String>? roles;
  @override
  final BuiltList<String>? permissions;

  factory _$V2AdminUserGet200ResponseData([
    void Function(V2AdminUserGet200ResponseDataBuilder)? updates,
  ]) => (V2AdminUserGet200ResponseDataBuilder()..update(updates))._build();

  _$V2AdminUserGet200ResponseData._({
    this.id,
    this.name,
    this.email,
    this.roles,
    this.permissions,
  }) : super._();
  @override
  V2AdminUserGet200ResponseData rebuild(
    void Function(V2AdminUserGet200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminUserGet200ResponseDataBuilder toBuilder() =>
      V2AdminUserGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminUserGet200ResponseData &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        roles == other.roles &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminUserGet200ResponseData')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('roles', roles)
          ..add('permissions', permissions))
        .toString();
  }
}

class V2AdminUserGet200ResponseDataBuilder
    implements
        Builder<
          V2AdminUserGet200ResponseData,
          V2AdminUserGet200ResponseDataBuilder
        > {
  _$V2AdminUserGet200ResponseData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  V2AdminUserGet200ResponseDataBuilder() {
    V2AdminUserGet200ResponseData._defaults(this);
  }

  V2AdminUserGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _roles = $v.roles?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminUserGet200ResponseData other) {
    _$v = other as _$V2AdminUserGet200ResponseData;
  }

  @override
  void update(void Function(V2AdminUserGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminUserGet200ResponseData build() => _build();

  _$V2AdminUserGet200ResponseData _build() {
    _$V2AdminUserGet200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$V2AdminUserGet200ResponseData._(
            id: id,
            name: name,
            email: email,
            roles: _roles?.build(),
            permissions: _permissions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'V2AdminUserGet200ResponseData',
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
