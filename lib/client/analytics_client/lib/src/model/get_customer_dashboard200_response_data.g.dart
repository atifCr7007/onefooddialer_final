// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_dashboard200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerDashboard200ResponseData
    extends GetCustomerDashboard200ResponseData {
  @override
  final BuiltList<LoyalCustomer>? loyalCustomers;
  @override
  final BuiltList<CustomerPreference>? customerPreferences;
  @override
  final BuiltList<CustomerSpending>? customerSpending;

  factory _$GetCustomerDashboard200ResponseData([
    void Function(GetCustomerDashboard200ResponseDataBuilder)? updates,
  ]) =>
      (GetCustomerDashboard200ResponseDataBuilder()..update(updates))._build();

  _$GetCustomerDashboard200ResponseData._({
    this.loyalCustomers,
    this.customerPreferences,
    this.customerSpending,
  }) : super._();
  @override
  GetCustomerDashboard200ResponseData rebuild(
    void Function(GetCustomerDashboard200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomerDashboard200ResponseDataBuilder toBuilder() =>
      GetCustomerDashboard200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerDashboard200ResponseData &&
        loyalCustomers == other.loyalCustomers &&
        customerPreferences == other.customerPreferences &&
        customerSpending == other.customerSpending;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loyalCustomers.hashCode);
    _$hash = $jc(_$hash, customerPreferences.hashCode);
    _$hash = $jc(_$hash, customerSpending.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCustomerDashboard200ResponseData')
          ..add('loyalCustomers', loyalCustomers)
          ..add('customerPreferences', customerPreferences)
          ..add('customerSpending', customerSpending))
        .toString();
  }
}

class GetCustomerDashboard200ResponseDataBuilder
    implements
        Builder<
          GetCustomerDashboard200ResponseData,
          GetCustomerDashboard200ResponseDataBuilder
        > {
  _$GetCustomerDashboard200ResponseData? _$v;

  ListBuilder<LoyalCustomer>? _loyalCustomers;
  ListBuilder<LoyalCustomer> get loyalCustomers =>
      _$this._loyalCustomers ??= ListBuilder<LoyalCustomer>();
  set loyalCustomers(ListBuilder<LoyalCustomer>? loyalCustomers) =>
      _$this._loyalCustomers = loyalCustomers;

  ListBuilder<CustomerPreference>? _customerPreferences;
  ListBuilder<CustomerPreference> get customerPreferences =>
      _$this._customerPreferences ??= ListBuilder<CustomerPreference>();
  set customerPreferences(
    ListBuilder<CustomerPreference>? customerPreferences,
  ) => _$this._customerPreferences = customerPreferences;

  ListBuilder<CustomerSpending>? _customerSpending;
  ListBuilder<CustomerSpending> get customerSpending =>
      _$this._customerSpending ??= ListBuilder<CustomerSpending>();
  set customerSpending(ListBuilder<CustomerSpending>? customerSpending) =>
      _$this._customerSpending = customerSpending;

  GetCustomerDashboard200ResponseDataBuilder() {
    GetCustomerDashboard200ResponseData._defaults(this);
  }

  GetCustomerDashboard200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loyalCustomers = $v.loyalCustomers?.toBuilder();
      _customerPreferences = $v.customerPreferences?.toBuilder();
      _customerSpending = $v.customerSpending?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerDashboard200ResponseData other) {
    _$v = other as _$GetCustomerDashboard200ResponseData;
  }

  @override
  void update(
    void Function(GetCustomerDashboard200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerDashboard200ResponseData build() => _build();

  _$GetCustomerDashboard200ResponseData _build() {
    _$GetCustomerDashboard200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomerDashboard200ResponseData._(
            loyalCustomers: _loyalCustomers?.build(),
            customerPreferences: _customerPreferences?.build(),
            customerSpending: _customerSpending?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loyalCustomers';
        _loyalCustomers?.build();
        _$failedField = 'customerPreferences';
        _customerPreferences?.build();
        _$failedField = 'customerSpending';
        _customerSpending?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetCustomerDashboard200ResponseData',
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
