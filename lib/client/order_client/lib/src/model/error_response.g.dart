// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ErrorResponseStatusEnum _$errorResponseStatusEnum_error =
    const ErrorResponseStatusEnum._('error');
const ErrorResponseStatusEnum _$errorResponseStatusEnum_unknownDefaultOpenApi =
    const ErrorResponseStatusEnum._('unknownDefaultOpenApi');

ErrorResponseStatusEnum _$errorResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'error':
      return _$errorResponseStatusEnum_error;
    case 'unknownDefaultOpenApi':
      return _$errorResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$errorResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ErrorResponseStatusEnum> _$errorResponseStatusEnumValues =
    BuiltSet<ErrorResponseStatusEnum>(const <ErrorResponseStatusEnum>[
      _$errorResponseStatusEnum_error,
      _$errorResponseStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<ErrorResponseStatusEnum> _$errorResponseStatusEnumSerializer =
    _$ErrorResponseStatusEnumSerializer();

class _$ErrorResponseStatusEnumSerializer
    implements PrimitiveSerializer<ErrorResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'error': 'error',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'error': 'error',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ErrorResponseStatusEnum];
  @override
  final String wireName = 'ErrorResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ErrorResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ErrorResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ErrorResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ErrorResponse extends ErrorResponse {
  @override
  final ErrorResponseStatusEnum status;
  @override
  final String message;
  @override
  final String? code;
  @override
  final DateTime? timestamp;

  factory _$ErrorResponse([void Function(ErrorResponseBuilder)? updates]) =>
      (ErrorResponseBuilder()..update(updates))._build();

  _$ErrorResponse._({
    required this.status,
    required this.message,
    this.code,
    this.timestamp,
  }) : super._();
  @override
  ErrorResponse rebuild(void Function(ErrorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorResponseBuilder toBuilder() => ErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorResponse &&
        status == other.status &&
        message == other.message &&
        code == other.code &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('code', code)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class ErrorResponseBuilder
    implements Builder<ErrorResponse, ErrorResponseBuilder> {
  _$ErrorResponse? _$v;

  ErrorResponseStatusEnum? _status;
  ErrorResponseStatusEnum? get status => _$this._status;
  set status(ErrorResponseStatusEnum? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  ErrorResponseBuilder() {
    ErrorResponse._defaults(this);
  }

  ErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _code = $v.code;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorResponse other) {
    _$v = other as _$ErrorResponse;
  }

  @override
  void update(void Function(ErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorResponse build() => _build();

  _$ErrorResponse _build() {
    final _$result =
        _$v ??
        _$ErrorResponse._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'ErrorResponse',
            'status',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'ErrorResponse',
            'message',
          ),
          code: code,
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
