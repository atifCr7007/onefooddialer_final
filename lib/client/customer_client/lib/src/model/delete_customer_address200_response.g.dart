// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_customer_address200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCustomerAddress200Response
    extends DeleteCustomerAddress200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$DeleteCustomerAddress200Response([
    void Function(DeleteCustomerAddress200ResponseBuilder)? updates,
  ]) => (DeleteCustomerAddress200ResponseBuilder()..update(updates))._build();

  _$DeleteCustomerAddress200Response._({this.success, this.message})
    : super._();
  @override
  DeleteCustomerAddress200Response rebuild(
    void Function(DeleteCustomerAddress200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteCustomerAddress200ResponseBuilder toBuilder() =>
      DeleteCustomerAddress200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCustomerAddress200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteCustomerAddress200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteCustomerAddress200ResponseBuilder
    implements
        Builder<
          DeleteCustomerAddress200Response,
          DeleteCustomerAddress200ResponseBuilder
        > {
  _$DeleteCustomerAddress200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteCustomerAddress200ResponseBuilder() {
    DeleteCustomerAddress200Response._defaults(this);
  }

  DeleteCustomerAddress200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCustomerAddress200Response other) {
    _$v = other as _$DeleteCustomerAddress200Response;
  }

  @override
  void update(void Function(DeleteCustomerAddress200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCustomerAddress200Response build() => _build();

  _$DeleteCustomerAddress200Response _build() {
    final _$result =
        _$v ??
        _$DeleteCustomerAddress200Response._(
          success: success,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
