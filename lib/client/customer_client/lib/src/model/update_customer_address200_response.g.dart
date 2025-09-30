// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_address200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCustomerAddress200Response
    extends UpdateCustomerAddress200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Address? data;

  factory _$UpdateCustomerAddress200Response([
    void Function(UpdateCustomerAddress200ResponseBuilder)? updates,
  ]) => (UpdateCustomerAddress200ResponseBuilder()..update(updates))._build();

  _$UpdateCustomerAddress200Response._({this.success, this.message, this.data})
    : super._();
  @override
  UpdateCustomerAddress200Response rebuild(
    void Function(UpdateCustomerAddress200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCustomerAddress200ResponseBuilder toBuilder() =>
      UpdateCustomerAddress200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCustomerAddress200Response &&
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
    return (newBuiltValueToStringHelper(r'UpdateCustomerAddress200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateCustomerAddress200ResponseBuilder
    implements
        Builder<
          UpdateCustomerAddress200Response,
          UpdateCustomerAddress200ResponseBuilder
        > {
  _$UpdateCustomerAddress200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AddressBuilder? _data;
  AddressBuilder get data => _$this._data ??= AddressBuilder();
  set data(AddressBuilder? data) => _$this._data = data;

  UpdateCustomerAddress200ResponseBuilder() {
    UpdateCustomerAddress200Response._defaults(this);
  }

  UpdateCustomerAddress200ResponseBuilder get _$this {
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
  void replace(UpdateCustomerAddress200Response other) {
    _$v = other as _$UpdateCustomerAddress200Response;
  }

  @override
  void update(void Function(UpdateCustomerAddress200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCustomerAddress200Response build() => _build();

  _$UpdateCustomerAddress200Response _build() {
    _$UpdateCustomerAddress200Response _$result;
    try {
      _$result =
          _$v ??
          _$UpdateCustomerAddress200Response._(
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
          r'UpdateCustomerAddress200Response',
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
