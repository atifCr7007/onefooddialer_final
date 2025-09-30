// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UsersResponseStatusEnum _$usersResponseStatusEnum_success =
    const UsersResponseStatusEnum._('success');
const UsersResponseStatusEnum _$usersResponseStatusEnum_unknownDefaultOpenApi =
    const UsersResponseStatusEnum._('unknownDefaultOpenApi');

UsersResponseStatusEnum _$usersResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$usersResponseStatusEnum_success;
    case 'unknownDefaultOpenApi':
      return _$usersResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$usersResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UsersResponseStatusEnum> _$usersResponseStatusEnumValues =
    BuiltSet<UsersResponseStatusEnum>(const <UsersResponseStatusEnum>[
      _$usersResponseStatusEnum_success,
      _$usersResponseStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<UsersResponseStatusEnum> _$usersResponseStatusEnumSerializer =
    _$UsersResponseStatusEnumSerializer();

class _$UsersResponseStatusEnumSerializer
    implements PrimitiveSerializer<UsersResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[UsersResponseStatusEnum];
  @override
  final String wireName = 'UsersResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    UsersResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UsersResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UsersResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UsersResponse extends UsersResponse {
  @override
  final UsersResponseStatusEnum? status;
  @override
  final BuiltList<AdminUser>? data;
  @override
  final PaginationMeta? meta;

  factory _$UsersResponse([void Function(UsersResponseBuilder)? updates]) =>
      (UsersResponseBuilder()..update(updates))._build();

  _$UsersResponse._({this.status, this.data, this.meta}) : super._();
  @override
  UsersResponse rebuild(void Function(UsersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersResponseBuilder toBuilder() => UsersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersResponse &&
        status == other.status &&
        data == other.data &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class UsersResponseBuilder
    implements Builder<UsersResponse, UsersResponseBuilder> {
  _$UsersResponse? _$v;

  UsersResponseStatusEnum? _status;
  UsersResponseStatusEnum? get status => _$this._status;
  set status(UsersResponseStatusEnum? status) => _$this._status = status;

  ListBuilder<AdminUser>? _data;
  ListBuilder<AdminUser> get data => _$this._data ??= ListBuilder<AdminUser>();
  set data(ListBuilder<AdminUser>? data) => _$this._data = data;

  PaginationMetaBuilder? _meta;
  PaginationMetaBuilder get meta => _$this._meta ??= PaginationMetaBuilder();
  set meta(PaginationMetaBuilder? meta) => _$this._meta = meta;

  UsersResponseBuilder() {
    UsersResponse._defaults(this);
  }

  UsersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersResponse other) {
    _$v = other as _$UsersResponse;
  }

  @override
  void update(void Function(UsersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersResponse build() => _build();

  _$UsersResponse _build() {
    _$UsersResponse _$result;
    try {
      _$result =
          _$v ??
          _$UsersResponse._(
            status: status,
            data: _data?.build(),
            meta: _meta?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UsersResponse',
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
