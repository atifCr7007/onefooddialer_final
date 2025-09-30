// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ValidationErrorResponseStatusEnum
_$validationErrorResponseStatusEnum_error =
    const ValidationErrorResponseStatusEnum._('error');
const ValidationErrorResponseStatusEnum
_$validationErrorResponseStatusEnum_unknownDefaultOpenApi =
    const ValidationErrorResponseStatusEnum._('unknownDefaultOpenApi');

ValidationErrorResponseStatusEnum _$validationErrorResponseStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'error':
      return _$validationErrorResponseStatusEnum_error;
    case 'unknownDefaultOpenApi':
      return _$validationErrorResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$validationErrorResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<ValidationErrorResponseStatusEnum>
_$validationErrorResponseStatusEnumValues =
    BuiltSet<ValidationErrorResponseStatusEnum>(
      const <ValidationErrorResponseStatusEnum>[
        _$validationErrorResponseStatusEnum_error,
        _$validationErrorResponseStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<ValidationErrorResponseStatusEnum>
_$validationErrorResponseStatusEnumSerializer =
    _$ValidationErrorResponseStatusEnumSerializer();

class _$ValidationErrorResponseStatusEnumSerializer
    implements PrimitiveSerializer<ValidationErrorResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'error': 'error',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'error': 'error',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ValidationErrorResponseStatusEnum];
  @override
  final String wireName = 'ValidationErrorResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    ValidationErrorResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ValidationErrorResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ValidationErrorResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$ValidationErrorResponse extends ValidationErrorResponse {
  @override
  final ValidationErrorResponseStatusEnum status;
  @override
  final String message;
  @override
  final BuiltList<ValidationErrorResponseErrorsInner> errors;

  factory _$ValidationErrorResponse([
    void Function(ValidationErrorResponseBuilder)? updates,
  ]) => (ValidationErrorResponseBuilder()..update(updates))._build();

  _$ValidationErrorResponse._({
    required this.status,
    required this.message,
    required this.errors,
  }) : super._();
  @override
  ValidationErrorResponse rebuild(
    void Function(ValidationErrorResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ValidationErrorResponseBuilder toBuilder() =>
      ValidationErrorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationErrorResponse &&
        status == other.status &&
        message == other.message &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidationErrorResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationErrorResponseBuilder
    implements
        Builder<ValidationErrorResponse, ValidationErrorResponseBuilder> {
  _$ValidationErrorResponse? _$v;

  ValidationErrorResponseStatusEnum? _status;
  ValidationErrorResponseStatusEnum? get status => _$this._status;
  set status(ValidationErrorResponseStatusEnum? status) =>
      _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<dynamic>? _errors;
  ListBuilder<dynamic> get errors => _$this._errors ??= ListBuilder<dynamic>();
  set errors(ListBuilder<dynamic>? errors) => _$this._errors = errors;

  ValidationErrorResponseBuilder() {
    ValidationErrorResponse._defaults(this);
  }

  ValidationErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationErrorResponse other) {
    _$v = other as _$ValidationErrorResponse;
  }

  @override
  void update(void Function(ValidationErrorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationErrorResponse build() => _build();

  _$ValidationErrorResponse _build() {
    _$ValidationErrorResponse _$result;
    try {
      _$result =
          _$v ??
          _$ValidationErrorResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'ValidationErrorResponse',
              'status',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'ValidationErrorResponse',
              'message',
            ),
            errors: errors.build() as BuiltList<ValidationErrorResponseErrorsInner>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ValidationErrorResponse',
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
