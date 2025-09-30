// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_key_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_string =
    const V2AdminConfigKeyPutRequestTypeEnum._('string');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_boolean =
    const V2AdminConfigKeyPutRequestTypeEnum._('boolean');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_integer =
    const V2AdminConfigKeyPutRequestTypeEnum._('integer');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_float =
    const V2AdminConfigKeyPutRequestTypeEnum._('float');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_json =
    const V2AdminConfigKeyPutRequestTypeEnum._('json');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_array =
    const V2AdminConfigKeyPutRequestTypeEnum._('array');
const V2AdminConfigKeyPutRequestTypeEnum
_$v2AdminConfigKeyPutRequestTypeEnum_unknownDefaultOpenApi =
    const V2AdminConfigKeyPutRequestTypeEnum._('unknownDefaultOpenApi');

V2AdminConfigKeyPutRequestTypeEnum _$v2AdminConfigKeyPutRequestTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'string':
      return _$v2AdminConfigKeyPutRequestTypeEnum_string;
    case 'boolean':
      return _$v2AdminConfigKeyPutRequestTypeEnum_boolean;
    case 'integer':
      return _$v2AdminConfigKeyPutRequestTypeEnum_integer;
    case 'float':
      return _$v2AdminConfigKeyPutRequestTypeEnum_float;
    case 'json':
      return _$v2AdminConfigKeyPutRequestTypeEnum_json;
    case 'array':
      return _$v2AdminConfigKeyPutRequestTypeEnum_array;
    case 'unknownDefaultOpenApi':
      return _$v2AdminConfigKeyPutRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$v2AdminConfigKeyPutRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<V2AdminConfigKeyPutRequestTypeEnum>
_$v2AdminConfigKeyPutRequestTypeEnumValues =
    BuiltSet<V2AdminConfigKeyPutRequestTypeEnum>(
      const <V2AdminConfigKeyPutRequestTypeEnum>[
        _$v2AdminConfigKeyPutRequestTypeEnum_string,
        _$v2AdminConfigKeyPutRequestTypeEnum_boolean,
        _$v2AdminConfigKeyPutRequestTypeEnum_integer,
        _$v2AdminConfigKeyPutRequestTypeEnum_float,
        _$v2AdminConfigKeyPutRequestTypeEnum_json,
        _$v2AdminConfigKeyPutRequestTypeEnum_array,
        _$v2AdminConfigKeyPutRequestTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<V2AdminConfigKeyPutRequestTypeEnum>
_$v2AdminConfigKeyPutRequestTypeEnumSerializer =
    _$V2AdminConfigKeyPutRequestTypeEnumSerializer();

class _$V2AdminConfigKeyPutRequestTypeEnumSerializer
    implements PrimitiveSerializer<V2AdminConfigKeyPutRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'string': 'string',
    'boolean': 'boolean',
    'integer': 'integer',
    'float': 'float',
    'json': 'json',
    'array': 'array',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'string': 'string',
    'boolean': 'boolean',
    'integer': 'integer',
    'float': 'float',
    'json': 'json',
    'array': 'array',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[V2AdminConfigKeyPutRequestTypeEnum];
  @override
  final String wireName = 'V2AdminConfigKeyPutRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    V2AdminConfigKeyPutRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  V2AdminConfigKeyPutRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => V2AdminConfigKeyPutRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$V2AdminConfigKeyPutRequest extends V2AdminConfigKeyPutRequest {
  @override
  final String value;
  @override
  final V2AdminConfigKeyPutRequestTypeEnum? type;
  @override
  final String? group;
  @override
  final bool? isSystem;
  @override
  final bool? isPublic;
  @override
  final String? description;
  @override
  final int? companyId;
  @override
  final int? unitId;

  factory _$V2AdminConfigKeyPutRequest([
    void Function(V2AdminConfigKeyPutRequestBuilder)? updates,
  ]) => (V2AdminConfigKeyPutRequestBuilder()..update(updates))._build();

  _$V2AdminConfigKeyPutRequest._({
    required this.value,
    this.type,
    this.group,
    this.isSystem,
    this.isPublic,
    this.description,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  V2AdminConfigKeyPutRequest rebuild(
    void Function(V2AdminConfigKeyPutRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigKeyPutRequestBuilder toBuilder() =>
      V2AdminConfigKeyPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigKeyPutRequest &&
        value == other.value &&
        type == other.type &&
        group == other.group &&
        isSystem == other.isSystem &&
        isPublic == other.isPublic &&
        description == other.description &&
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminConfigKeyPutRequest')
          ..add('value', value)
          ..add('type', type)
          ..add('group', group)
          ..add('isSystem', isSystem)
          ..add('isPublic', isPublic)
          ..add('description', description)
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class V2AdminConfigKeyPutRequestBuilder
    implements
        Builder<V2AdminConfigKeyPutRequest, V2AdminConfigKeyPutRequestBuilder> {
  _$V2AdminConfigKeyPutRequest? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  V2AdminConfigKeyPutRequestTypeEnum? _type;
  V2AdminConfigKeyPutRequestTypeEnum? get type => _$this._type;
  set type(V2AdminConfigKeyPutRequestTypeEnum? type) => _$this._type = type;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  V2AdminConfigKeyPutRequestBuilder() {
    V2AdminConfigKeyPutRequest._defaults(this);
  }

  V2AdminConfigKeyPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _type = $v.type;
      _group = $v.group;
      _isSystem = $v.isSystem;
      _isPublic = $v.isPublic;
      _description = $v.description;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminConfigKeyPutRequest other) {
    _$v = other as _$V2AdminConfigKeyPutRequest;
  }

  @override
  void update(void Function(V2AdminConfigKeyPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigKeyPutRequest build() => _build();

  _$V2AdminConfigKeyPutRequest _build() {
    final _$result =
        _$v ??
        _$V2AdminConfigKeyPutRequest._(
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'V2AdminConfigKeyPutRequest',
            'value',
          ),
          type: type,
          group: group,
          isSystem: isSystem,
          isPublic: isPublic,
          description: description,
          companyId: companyId,
          unitId: unitId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
