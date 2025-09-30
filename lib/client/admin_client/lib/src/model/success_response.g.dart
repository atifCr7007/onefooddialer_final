// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SuccessResponseStatusEnum _$successResponseStatusEnum_success =
    const SuccessResponseStatusEnum._('success');
const SuccessResponseStatusEnum
_$successResponseStatusEnum_unknownDefaultOpenApi =
    const SuccessResponseStatusEnum._('unknownDefaultOpenApi');

SuccessResponseStatusEnum _$successResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$successResponseStatusEnum_success;
    case 'unknownDefaultOpenApi':
      return _$successResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$successResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SuccessResponseStatusEnum> _$successResponseStatusEnumValues =
    BuiltSet<SuccessResponseStatusEnum>(const <SuccessResponseStatusEnum>[
      _$successResponseStatusEnum_success,
      _$successResponseStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<SuccessResponseStatusEnum> _$successResponseStatusEnumSerializer =
    _$SuccessResponseStatusEnumSerializer();

class _$SuccessResponseStatusEnumSerializer
    implements PrimitiveSerializer<SuccessResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SuccessResponseStatusEnum];
  @override
  final String wireName = 'SuccessResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    SuccessResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SuccessResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SuccessResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SuccessResponse extends SuccessResponse {
  @override
  final SuccessResponseStatusEnum status;
  @override
  final String message;
  @override
  final DateTime? timestamp;

  factory _$SuccessResponse([void Function(SuccessResponseBuilder)? updates]) =>
      (SuccessResponseBuilder()..update(updates))._build();

  _$SuccessResponse._({
    required this.status,
    required this.message,
    this.timestamp,
  }) : super._();
  @override
  SuccessResponse rebuild(void Function(SuccessResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuccessResponseBuilder toBuilder() => SuccessResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuccessResponse &&
        status == other.status &&
        message == other.message &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SuccessResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('timestamp', timestamp))
        .toString();
  }
}

class SuccessResponseBuilder
    implements Builder<SuccessResponse, SuccessResponseBuilder> {
  _$SuccessResponse? _$v;

  SuccessResponseStatusEnum? _status;
  SuccessResponseStatusEnum? get status => _$this._status;
  set status(SuccessResponseStatusEnum? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  SuccessResponseBuilder() {
    SuccessResponse._defaults(this);
  }

  SuccessResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _timestamp = $v.timestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuccessResponse other) {
    _$v = other as _$SuccessResponse;
  }

  @override
  void update(void Function(SuccessResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SuccessResponse build() => _build();

  _$SuccessResponse _build() {
    final _$result =
        _$v ??
        _$SuccessResponse._(
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'SuccessResponse',
            'status',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'SuccessResponse',
            'message',
          ),
          timestamp: timestamp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
