// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCustomer200Response extends UpdateCustomer200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Customer? data;

  factory _$UpdateCustomer200Response(
          [void Function(UpdateCustomer200ResponseBuilder)? updates]) =>
      (UpdateCustomer200ResponseBuilder()..update(updates))._build();

  _$UpdateCustomer200Response._({this.success, this.message, this.data})
      : super._();
  @override
  UpdateCustomer200Response rebuild(
          void Function(UpdateCustomer200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCustomer200ResponseBuilder toBuilder() =>
      UpdateCustomer200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCustomer200Response &&
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
    return (newBuiltValueToStringHelper(r'UpdateCustomer200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateCustomer200ResponseBuilder
    implements
        Builder<UpdateCustomer200Response, UpdateCustomer200ResponseBuilder> {
  _$UpdateCustomer200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CustomerBuilder? _data;
  CustomerBuilder get data => _$this._data ??= CustomerBuilder();
  set data(CustomerBuilder? data) => _$this._data = data;

  UpdateCustomer200ResponseBuilder() {
    UpdateCustomer200Response._defaults(this);
  }

  UpdateCustomer200ResponseBuilder get _$this {
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
  void replace(UpdateCustomer200Response other) {
    _$v = other as _$UpdateCustomer200Response;
  }

  @override
  void update(void Function(UpdateCustomer200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCustomer200Response build() => _build();

  _$UpdateCustomer200Response _build() {
    _$UpdateCustomer200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateCustomer200Response._(
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
            r'UpdateCustomer200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
