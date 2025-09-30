// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_payment_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessPaymentResponseDataMethodEnum
_$processPaymentResponseDataMethodEnum_GET =
    const ProcessPaymentResponseDataMethodEnum._('GET');
const ProcessPaymentResponseDataMethodEnum
_$processPaymentResponseDataMethodEnum_POST =
    const ProcessPaymentResponseDataMethodEnum._('POST');
const ProcessPaymentResponseDataMethodEnum
_$processPaymentResponseDataMethodEnum_unknownDefaultOpenApi =
    const ProcessPaymentResponseDataMethodEnum._('unknownDefaultOpenApi');

ProcessPaymentResponseDataMethodEnum
_$processPaymentResponseDataMethodEnumValueOf(String name) {
  switch (name) {
    case 'GET':
      return _$processPaymentResponseDataMethodEnum_GET;
    case 'POST':
      return _$processPaymentResponseDataMethodEnum_POST;
    case 'unknownDefaultOpenApi':
      return _$processPaymentResponseDataMethodEnum_unknownDefaultOpenApi;
    default:
      return _$processPaymentResponseDataMethodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ProcessPaymentResponseDataMethodEnum>
_$processPaymentResponseDataMethodEnumValues =
    BuiltSet<ProcessPaymentResponseDataMethodEnum>(
      const <ProcessPaymentResponseDataMethodEnum>[
        _$processPaymentResponseDataMethodEnum_GET,
        _$processPaymentResponseDataMethodEnum_POST,
        _$processPaymentResponseDataMethodEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ProcessPaymentResponseDataMethodEnum>
_$processPaymentResponseDataMethodEnumSerializer =
    _$ProcessPaymentResponseDataMethodEnumSerializer();

class _$ProcessPaymentResponseDataMethodEnumSerializer
    implements PrimitiveSerializer<ProcessPaymentResponseDataMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GET': 'GET',
    'POST': 'POST',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GET': 'GET',
    'POST': 'POST',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProcessPaymentResponseDataMethodEnum,
  ];
  @override
  final String wireName = 'ProcessPaymentResponseDataMethodEnum';

  @override
  Object serialize(
    Serializers serializers,
    ProcessPaymentResponseDataMethodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProcessPaymentResponseDataMethodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProcessPaymentResponseDataMethodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ProcessPaymentResponseData extends ProcessPaymentResponseData {
  @override
  final String? action;
  @override
  final ProcessPaymentResponseDataMethodEnum? method;
  @override
  final Map<String, dynamic>? fields;

  factory _$ProcessPaymentResponseData([
    void Function(ProcessPaymentResponseDataBuilder)? updates,
  ]) => (ProcessPaymentResponseDataBuilder()..update(updates))._build();

  _$ProcessPaymentResponseData._({this.action, this.method, this.fields})
    : super._();
  @override
  ProcessPaymentResponseData rebuild(
    void Function(ProcessPaymentResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessPaymentResponseDataBuilder toBuilder() =>
      ProcessPaymentResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessPaymentResponseData &&
        action == other.action &&
        method == other.method &&
        fields == other.fields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessPaymentResponseData')
          ..add('action', action)
          ..add('method', method)
          ..add('fields', fields))
        .toString();
  }
}

class ProcessPaymentResponseDataBuilder
    implements
        Builder<ProcessPaymentResponseData, ProcessPaymentResponseDataBuilder> {
  _$ProcessPaymentResponseData? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  ProcessPaymentResponseDataMethodEnum? _method;
  ProcessPaymentResponseDataMethodEnum? get method => _$this._method;
  set method(ProcessPaymentResponseDataMethodEnum? method) =>
      _$this._method = method;

  Map<String, dynamic>? _fields;
  Map<String, dynamic>? get fields => _$this._fields;
  set fields(Map<String, dynamic>? fields) => _$this._fields = fields;

  ProcessPaymentResponseDataBuilder() {
    ProcessPaymentResponseData._defaults(this);
  }

  ProcessPaymentResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _method = $v.method;
      _fields = $v.fields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessPaymentResponseData other) {
    _$v = other as _$ProcessPaymentResponseData;
  }

  @override
  void update(void Function(ProcessPaymentResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessPaymentResponseData build() => _build();

  _$ProcessPaymentResponseData _build() {
    final _$result =
        _$v ??
        _$ProcessPaymentResponseData._(
          action: action,
          method: method,
          fields: fields,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
