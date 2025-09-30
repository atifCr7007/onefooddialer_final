// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationErrorResponse extends ValidationErrorResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final BuiltMap<String, BuiltList<String>> errors;

  factory _$ValidationErrorResponse([
    void Function(ValidationErrorResponseBuilder)? updates,
  ]) => (ValidationErrorResponseBuilder()..update(updates))._build();

  _$ValidationErrorResponse._({
    required this.success,
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
        success == other.success &&
        message == other.message &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidationErrorResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationErrorResponseBuilder
    implements
        Builder<ValidationErrorResponse, ValidationErrorResponseBuilder> {
  _$ValidationErrorResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MapBuilder<String, BuiltList<String>>? _errors;
  MapBuilder<String, BuiltList<String>> get errors =>
      _$this._errors ??= MapBuilder<String, BuiltList<String>>();
  set errors(MapBuilder<String, BuiltList<String>>? errors) =>
      _$this._errors = errors;

  ValidationErrorResponseBuilder() {
    ValidationErrorResponse._defaults(this);
  }

  ValidationErrorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
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
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'ValidationErrorResponse',
              'success',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'ValidationErrorResponse',
              'message',
            ),
            errors: errors.build(),
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
