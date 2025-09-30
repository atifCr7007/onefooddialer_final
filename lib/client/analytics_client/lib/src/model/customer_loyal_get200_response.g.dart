// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_loyal_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerLoyalGet200Response extends CustomerLoyalGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<LoyalCustomer>? data;

  factory _$CustomerLoyalGet200Response(
          [void Function(CustomerLoyalGet200ResponseBuilder)? updates]) =>
      (CustomerLoyalGet200ResponseBuilder()..update(updates))._build();

  _$CustomerLoyalGet200Response._({this.status, this.data}) : super._();
  @override
  CustomerLoyalGet200Response rebuild(
          void Function(CustomerLoyalGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerLoyalGet200ResponseBuilder toBuilder() =>
      CustomerLoyalGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerLoyalGet200Response &&
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
    return (newBuiltValueToStringHelper(r'CustomerLoyalGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class CustomerLoyalGet200ResponseBuilder
    implements
        Builder<CustomerLoyalGet200Response,
            CustomerLoyalGet200ResponseBuilder> {
  _$CustomerLoyalGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<LoyalCustomer>? _data;
  ListBuilder<LoyalCustomer> get data =>
      _$this._data ??= ListBuilder<LoyalCustomer>();
  set data(ListBuilder<LoyalCustomer>? data) => _$this._data = data;

  CustomerLoyalGet200ResponseBuilder() {
    CustomerLoyalGet200Response._defaults(this);
  }

  CustomerLoyalGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerLoyalGet200Response other) {
    _$v = other as _$CustomerLoyalGet200Response;
  }

  @override
  void update(void Function(CustomerLoyalGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerLoyalGet200Response build() => _build();

  _$CustomerLoyalGet200Response _build() {
    _$CustomerLoyalGet200Response _$result;
    try {
      _$result = _$v ??
          _$CustomerLoyalGet200Response._(
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
            r'CustomerLoyalGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
