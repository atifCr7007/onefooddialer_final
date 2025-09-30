// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_address201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddCustomerAddress201Response extends AddCustomerAddress201Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Address? data;

  factory _$AddCustomerAddress201Response(
          [void Function(AddCustomerAddress201ResponseBuilder)? updates]) =>
      (AddCustomerAddress201ResponseBuilder()..update(updates))._build();

  _$AddCustomerAddress201Response._({this.success, this.message, this.data})
      : super._();
  @override
  AddCustomerAddress201Response rebuild(
          void Function(AddCustomerAddress201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddCustomerAddress201ResponseBuilder toBuilder() =>
      AddCustomerAddress201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddCustomerAddress201Response &&
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
    return (newBuiltValueToStringHelper(r'AddCustomerAddress201Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class AddCustomerAddress201ResponseBuilder
    implements
        Builder<AddCustomerAddress201Response,
            AddCustomerAddress201ResponseBuilder> {
  _$AddCustomerAddress201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AddressBuilder? _data;
  AddressBuilder get data => _$this._data ??= AddressBuilder();
  set data(AddressBuilder? data) => _$this._data = data;

  AddCustomerAddress201ResponseBuilder() {
    AddCustomerAddress201Response._defaults(this);
  }

  AddCustomerAddress201ResponseBuilder get _$this {
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
  void replace(AddCustomerAddress201Response other) {
    _$v = other as _$AddCustomerAddress201Response;
  }

  @override
  void update(void Function(AddCustomerAddress201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddCustomerAddress201Response build() => _build();

  _$AddCustomerAddress201Response _build() {
    _$AddCustomerAddress201Response _$result;
    try {
      _$result = _$v ??
          _$AddCustomerAddress201Response._(
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
            r'AddCustomerAddress201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
