// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationError extends ValidationError {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final JsonObject? errors;

  factory _$ValidationError([void Function(ValidationErrorBuilder)? updates]) =>
      (ValidationErrorBuilder()..update(updates))._build();

  _$ValidationError._({this.success, this.message, this.errors}) : super._();
  @override
  ValidationError rebuild(void Function(ValidationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationErrorBuilder toBuilder() => ValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationError &&
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
    return (newBuiltValueToStringHelper(r'ValidationError')
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationErrorBuilder
    implements Builder<ValidationError, ValidationErrorBuilder> {
  _$ValidationError? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _errors;
  JsonObject? get errors => _$this._errors;
  set errors(JsonObject? errors) => _$this._errors = errors;

  ValidationErrorBuilder() {
    ValidationError._defaults(this);
  }

  ValidationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _errors = $v.errors;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationError other) {
    _$v = other as _$ValidationError;
  }

  @override
  void update(void Function(ValidationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationError build() => _build();

  _$ValidationError _build() {
    final _$result =
        _$v ??
        _$ValidationError._(success: success, message: message, errors: errors);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
