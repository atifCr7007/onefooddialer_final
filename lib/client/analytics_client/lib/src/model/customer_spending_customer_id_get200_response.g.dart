// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_spending_customer_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerSpendingCustomerIdGet200Response
    extends CustomerSpendingCustomerIdGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<CustomerSpending>? data;

  factory _$CustomerSpendingCustomerIdGet200Response(
          [void Function(CustomerSpendingCustomerIdGet200ResponseBuilder)?
              updates]) =>
      (CustomerSpendingCustomerIdGet200ResponseBuilder()..update(updates))
          ._build();

  _$CustomerSpendingCustomerIdGet200Response._({this.status, this.data})
      : super._();
  @override
  CustomerSpendingCustomerIdGet200Response rebuild(
          void Function(CustomerSpendingCustomerIdGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerSpendingCustomerIdGet200ResponseBuilder toBuilder() =>
      CustomerSpendingCustomerIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSpendingCustomerIdGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CustomerSpendingCustomerIdGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class CustomerSpendingCustomerIdGet200ResponseBuilder
    implements
        Builder<CustomerSpendingCustomerIdGet200Response,
            CustomerSpendingCustomerIdGet200ResponseBuilder> {
  _$CustomerSpendingCustomerIdGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<CustomerSpending>? _data;
  ListBuilder<CustomerSpending> get data =>
      _$this._data ??= ListBuilder<CustomerSpending>();
  set data(ListBuilder<CustomerSpending>? data) => _$this._data = data;

  CustomerSpendingCustomerIdGet200ResponseBuilder() {
    CustomerSpendingCustomerIdGet200Response._defaults(this);
  }

  CustomerSpendingCustomerIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerSpendingCustomerIdGet200Response other) {
    _$v = other as _$CustomerSpendingCustomerIdGet200Response;
  }

  @override
  void update(
      void Function(CustomerSpendingCustomerIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerSpendingCustomerIdGet200Response build() => _build();

  _$CustomerSpendingCustomerIdGet200Response _build() {
    _$CustomerSpendingCustomerIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$CustomerSpendingCustomerIdGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerSpendingCustomerIdGet200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
