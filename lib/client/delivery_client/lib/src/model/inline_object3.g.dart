// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object3.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject3 extends InlineObject3 {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltMap<String, BuiltList<String>>? errors;

  factory _$InlineObject3([void Function(InlineObject3Builder)? updates]) =>
      (InlineObject3Builder()..update(updates))._build();

  _$InlineObject3._({this.success, this.message, this.errors}) : super._();
  @override
  InlineObject3 rebuild(void Function(InlineObject3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject3Builder toBuilder() => InlineObject3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject3 &&
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
    return (newBuiltValueToStringHelper(r'InlineObject3')
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors))
        .toString();
  }
}

class InlineObject3Builder
    implements Builder<InlineObject3, InlineObject3Builder> {
  _$InlineObject3? _$v;

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

  InlineObject3Builder() {
    InlineObject3._defaults(this);
  }

  InlineObject3Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject3 other) {
    _$v = other as _$InlineObject3;
  }

  @override
  void update(void Function(InlineObject3Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineObject3 build() => _build();

  _$InlineObject3 _build() {
    _$InlineObject3 _$result;
    try {
      _$result =
          _$v ??
          _$InlineObject3._(
            success: success,
            message: message,
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InlineObject3',
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
