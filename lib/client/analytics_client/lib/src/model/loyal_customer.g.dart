// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyal_customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoyalCustomer extends LoyalCustomer {
  @override
  final String? customerCode;
  @override
  final String? customerName;
  @override
  final double? netAmount;

  factory _$LoyalCustomer([void Function(LoyalCustomerBuilder)? updates]) =>
      (LoyalCustomerBuilder()..update(updates))._build();

  _$LoyalCustomer._({this.customerCode, this.customerName, this.netAmount})
      : super._();
  @override
  LoyalCustomer rebuild(void Function(LoyalCustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoyalCustomerBuilder toBuilder() => LoyalCustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoyalCustomer &&
        customerCode == other.customerCode &&
        customerName == other.customerName &&
        netAmount == other.netAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerCode.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, netAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoyalCustomer')
          ..add('customerCode', customerCode)
          ..add('customerName', customerName)
          ..add('netAmount', netAmount))
        .toString();
  }
}

class LoyalCustomerBuilder
    implements Builder<LoyalCustomer, LoyalCustomerBuilder> {
  _$LoyalCustomer? _$v;

  String? _customerCode;
  String? get customerCode => _$this._customerCode;
  set customerCode(String? customerCode) => _$this._customerCode = customerCode;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  double? _netAmount;
  double? get netAmount => _$this._netAmount;
  set netAmount(double? netAmount) => _$this._netAmount = netAmount;

  LoyalCustomerBuilder() {
    LoyalCustomer._defaults(this);
  }

  LoyalCustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerCode = $v.customerCode;
      _customerName = $v.customerName;
      _netAmount = $v.netAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoyalCustomer other) {
    _$v = other as _$LoyalCustomer;
  }

  @override
  void update(void Function(LoyalCustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoyalCustomer build() => _build();

  _$LoyalCustomer _build() {
    final _$result = _$v ??
        _$LoyalCustomer._(
          customerCode: customerCode,
          customerName: customerName,
          netAmount: netAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
