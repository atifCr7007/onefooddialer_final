// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_customer200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCustomer200Response extends DeleteCustomer200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$DeleteCustomer200Response([
    void Function(DeleteCustomer200ResponseBuilder)? updates,
  ]) => (DeleteCustomer200ResponseBuilder()..update(updates))._build();

  _$DeleteCustomer200Response._({this.success, this.message}) : super._();
  @override
  DeleteCustomer200Response rebuild(
    void Function(DeleteCustomer200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteCustomer200ResponseBuilder toBuilder() =>
      DeleteCustomer200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCustomer200Response &&
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
    return (newBuiltValueToStringHelper(r'DeleteCustomer200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteCustomer200ResponseBuilder
    implements
        Builder<DeleteCustomer200Response, DeleteCustomer200ResponseBuilder> {
  _$DeleteCustomer200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteCustomer200ResponseBuilder() {
    DeleteCustomer200Response._defaults(this);
  }

  DeleteCustomer200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCustomer200Response other) {
    _$v = other as _$DeleteCustomer200Response;
  }

  @override
  void update(void Function(DeleteCustomer200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCustomer200Response build() => _build();

  _$DeleteCustomer200Response _build() {
    final _$result =
        _$v ??
        _$DeleteCustomer200Response._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
