// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_preference.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerPreference extends CustomerPreference {
  @override
  final String? customerCode;
  @override
  final String? customerName;
  @override
  final String? productName;
  @override
  final double? netAmount;

  factory _$CustomerPreference([
    void Function(CustomerPreferenceBuilder)? updates,
  ]) => (CustomerPreferenceBuilder()..update(updates))._build();

  _$CustomerPreference._({
    this.customerCode,
    this.customerName,
    this.productName,
    this.netAmount,
  }) : super._();
  @override
  CustomerPreference rebuild(
    void Function(CustomerPreferenceBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerPreferenceBuilder toBuilder() =>
      CustomerPreferenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerPreference &&
        customerCode == other.customerCode &&
        customerName == other.customerName &&
        productName == other.productName &&
        netAmount == other.netAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerCode.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, netAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerPreference')
          ..add('customerCode', customerCode)
          ..add('customerName', customerName)
          ..add('productName', productName)
          ..add('netAmount', netAmount))
        .toString();
  }
}

class CustomerPreferenceBuilder
    implements Builder<CustomerPreference, CustomerPreferenceBuilder> {
  _$CustomerPreference? _$v;

  String? _customerCode;
  String? get customerCode => _$this._customerCode;
  set customerCode(String? customerCode) => _$this._customerCode = customerCode;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  double? _netAmount;
  double? get netAmount => _$this._netAmount;
  set netAmount(double? netAmount) => _$this._netAmount = netAmount;

  CustomerPreferenceBuilder() {
    CustomerPreference._defaults(this);
  }

  CustomerPreferenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerCode = $v.customerCode;
      _customerName = $v.customerName;
      _productName = $v.productName;
      _netAmount = $v.netAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerPreference other) {
    _$v = other as _$CustomerPreference;
  }

  @override
  void update(void Function(CustomerPreferenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerPreference build() => _build();

  _$CustomerPreference _build() {
    final _$result =
        _$v ??
        _$CustomerPreference._(
          customerCode: customerCode,
          customerName: customerName,
          productName: productName,
          netAmount: netAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
