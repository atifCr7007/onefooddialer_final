// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateUserRequestStatusEnum _$updateUserRequestStatusEnum_active =
    const UpdateUserRequestStatusEnum._('active');
const UpdateUserRequestStatusEnum _$updateUserRequestStatusEnum_inactive =
    const UpdateUserRequestStatusEnum._('inactive');
const UpdateUserRequestStatusEnum _$updateUserRequestStatusEnum_suspended =
    const UpdateUserRequestStatusEnum._('suspended');
const UpdateUserRequestStatusEnum
_$updateUserRequestStatusEnum_unknownDefaultOpenApi =
    const UpdateUserRequestStatusEnum._('unknownDefaultOpenApi');

UpdateUserRequestStatusEnum _$updateUserRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$updateUserRequestStatusEnum_active;
    case 'inactive':
      return _$updateUserRequestStatusEnum_inactive;
    case 'suspended':
      return _$updateUserRequestStatusEnum_suspended;
    case 'unknownDefaultOpenApi':
      return _$updateUserRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$updateUserRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UpdateUserRequestStatusEnum>
_$updateUserRequestStatusEnumValues =
    BuiltSet<UpdateUserRequestStatusEnum>(const <UpdateUserRequestStatusEnum>[
      _$updateUserRequestStatusEnum_active,
      _$updateUserRequestStatusEnum_inactive,
      _$updateUserRequestStatusEnum_suspended,
      _$updateUserRequestStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<UpdateUserRequestStatusEnum>
_$updateUserRequestStatusEnumSerializer =
    _$UpdateUserRequestStatusEnumSerializer();

class _$UpdateUserRequestStatusEnumSerializer
    implements PrimitiveSerializer<UpdateUserRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[UpdateUserRequestStatusEnum];
  @override
  final String wireName = 'UpdateUserRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    UpdateUserRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UpdateUserRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UpdateUserRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UpdateUserRequest extends UpdateUserRequest {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? roleId;
  @override
  final UpdateUserRequestStatusEnum? status;
  @override
  final BuiltList<String>? permissions;
  @override
  final String? password;

  factory _$UpdateUserRequest([
    void Function(UpdateUserRequestBuilder)? updates,
  ]) => (UpdateUserRequestBuilder()..update(updates))._build();

  _$UpdateUserRequest._({
    this.name,
    this.email,
    this.roleId,
    this.status,
    this.permissions,
    this.password,
  }) : super._();
  @override
  UpdateUserRequest rebuild(void Function(UpdateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserRequestBuilder toBuilder() =>
      UpdateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserRequest &&
        name == other.name &&
        email == other.email &&
        roleId == other.roleId &&
        status == other.status &&
        permissions == other.permissions &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('roleId', roleId)
          ..add('status', status)
          ..add('permissions', permissions)
          ..add('password', password))
        .toString();
  }
}

class UpdateUserRequestBuilder
    implements Builder<UpdateUserRequest, UpdateUserRequestBuilder> {
  _$UpdateUserRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  UpdateUserRequestStatusEnum? _status;
  UpdateUserRequestStatusEnum? get status => _$this._status;
  set status(UpdateUserRequestStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UpdateUserRequestBuilder() {
    UpdateUserRequest._defaults(this);
  }

  UpdateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _roleId = $v.roleId;
      _status = $v.status;
      _permissions = $v.permissions?.toBuilder();
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserRequest other) {
    _$v = other as _$UpdateUserRequest;
  }

  @override
  void update(void Function(UpdateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserRequest build() => _build();

  _$UpdateUserRequest _build() {
    _$UpdateUserRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateUserRequest._(
            name: name,
            email: email,
            roleId: roleId,
            status: status,
            permissions: _permissions?.build(),
            password: password,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateUserRequest',
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
