// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateUserRequestStatusEnum _$createUserRequestStatusEnum_active =
    const CreateUserRequestStatusEnum._('active');
const CreateUserRequestStatusEnum _$createUserRequestStatusEnum_inactive =
    const CreateUserRequestStatusEnum._('inactive');
const CreateUserRequestStatusEnum
_$createUserRequestStatusEnum_unknownDefaultOpenApi =
    const CreateUserRequestStatusEnum._('unknownDefaultOpenApi');

CreateUserRequestStatusEnum _$createUserRequestStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$createUserRequestStatusEnum_active;
    case 'inactive':
      return _$createUserRequestStatusEnum_inactive;
    case 'unknownDefaultOpenApi':
      return _$createUserRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$createUserRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CreateUserRequestStatusEnum>
_$createUserRequestStatusEnumValues =
    BuiltSet<CreateUserRequestStatusEnum>(const <CreateUserRequestStatusEnum>[
      _$createUserRequestStatusEnum_active,
      _$createUserRequestStatusEnum_inactive,
      _$createUserRequestStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<CreateUserRequestStatusEnum>
_$createUserRequestStatusEnumSerializer =
    _$CreateUserRequestStatusEnumSerializer();

class _$CreateUserRequestStatusEnumSerializer
    implements PrimitiveSerializer<CreateUserRequestStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'inactive': 'inactive',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'inactive': 'inactive',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateUserRequestStatusEnum];
  @override
  final String wireName = 'CreateUserRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    CreateUserRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CreateUserRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CreateUserRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CreateUserRequest extends CreateUserRequest {
  @override
  final String name;
  @override
  final String email;
  @override
  final String roleId;
  @override
  final String password;
  @override
  final CreateUserRequestStatusEnum? status;
  @override
  final BuiltList<String>? permissions;

  factory _$CreateUserRequest([
    void Function(CreateUserRequestBuilder)? updates,
  ]) => (CreateUserRequestBuilder()..update(updates))._build();

  _$CreateUserRequest._({
    required this.name,
    required this.email,
    required this.roleId,
    required this.password,
    this.status,
    this.permissions,
  }) : super._();
  @override
  CreateUserRequest rebuild(void Function(CreateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserRequestBuilder toBuilder() =>
      CreateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserRequest &&
        name == other.name &&
        email == other.email &&
        roleId == other.roleId &&
        password == other.password &&
        status == other.status &&
        permissions == other.permissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateUserRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('roleId', roleId)
          ..add('password', password)
          ..add('status', status)
          ..add('permissions', permissions))
        .toString();
  }
}

class CreateUserRequestBuilder
    implements Builder<CreateUserRequest, CreateUserRequestBuilder> {
  _$CreateUserRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  CreateUserRequestStatusEnum? _status;
  CreateUserRequestStatusEnum? get status => _$this._status;
  set status(CreateUserRequestStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= ListBuilder<String>();
  set permissions(ListBuilder<String>? permissions) =>
      _$this._permissions = permissions;

  CreateUserRequestBuilder() {
    CreateUserRequest._defaults(this);
  }

  CreateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _roleId = $v.roleId;
      _password = $v.password;
      _status = $v.status;
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserRequest other) {
    _$v = other as _$CreateUserRequest;
  }

  @override
  void update(void Function(CreateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserRequest build() => _build();

  _$CreateUserRequest _build() {
    _$CreateUserRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateUserRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CreateUserRequest',
              'name',
            ),
            email: BuiltValueNullFieldError.checkNotNull(
              email,
              r'CreateUserRequest',
              'email',
            ),
            roleId: BuiltValueNullFieldError.checkNotNull(
              roleId,
              r'CreateUserRequest',
              'roleId',
            ),
            password: BuiltValueNullFieldError.checkNotNull(
              password,
              r'CreateUserRequest',
              'password',
            ),
            status: status,
            permissions: _permissions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateUserRequest',
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
