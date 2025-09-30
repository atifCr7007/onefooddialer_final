// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCustomer201Response extends CreateCustomer201Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Customer? data;

  factory _$CreateCustomer201Response(
          [void Function(CreateCustomer201ResponseBuilder)? updates]) =>
      (CreateCustomer201ResponseBuilder()..update(updates))._build();

  _$CreateCustomer201Response._({this.success, this.message, this.data})
      : super._();
  @override
  CreateCustomer201Response rebuild(
          void Function(CreateCustomer201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomer201ResponseBuilder toBuilder() =>
      CreateCustomer201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomer201Response &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCustomer201Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateCustomer201ResponseBuilder
    implements
        Builder<CreateCustomer201Response, CreateCustomer201ResponseBuilder> {
  _$CreateCustomer201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CustomerBuilder? _data;
  CustomerBuilder get data => _$this._data ??= CustomerBuilder();
  set data(CustomerBuilder? data) => _$this._data = data;

  CreateCustomer201ResponseBuilder() {
    CreateCustomer201Response._defaults(this);
  }

  CreateCustomer201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCustomer201Response other) {
    _$v = other as _$CreateCustomer201Response;
  }

  @override
  void update(void Function(CreateCustomer201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomer201Response build() => _build();

  _$CreateCustomer201Response _build() {
    _$CreateCustomer201Response _$result;
    try {
      _$result = _$v ??
          _$CreateCustomer201Response._(
            success: success,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateCustomer201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
