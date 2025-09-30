// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_spending.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerSpending extends CustomerSpending {
  @override
  final String? customerName;
  @override
  final double? yearly;
  @override
  final double? monthly;

  factory _$CustomerSpending([
    void Function(CustomerSpendingBuilder)? updates,
  ]) => (CustomerSpendingBuilder()..update(updates))._build();

  _$CustomerSpending._({this.customerName, this.yearly, this.monthly})
    : super._();
  @override
  CustomerSpending rebuild(void Function(CustomerSpendingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerSpendingBuilder toBuilder() =>
      CustomerSpendingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSpending &&
        customerName == other.customerName &&
        yearly == other.yearly &&
        monthly == other.monthly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, yearly.hashCode);
    _$hash = $jc(_$hash, monthly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerSpending')
          ..add('customerName', customerName)
          ..add('yearly', yearly)
          ..add('monthly', monthly))
        .toString();
  }
}

class CustomerSpendingBuilder
    implements Builder<CustomerSpending, CustomerSpendingBuilder> {
  _$CustomerSpending? _$v;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  double? _yearly;
  double? get yearly => _$this._yearly;
  set yearly(double? yearly) => _$this._yearly = yearly;

  double? _monthly;
  double? get monthly => _$this._monthly;
  set monthly(double? monthly) => _$this._monthly = monthly;

  CustomerSpendingBuilder() {
    CustomerSpending._defaults(this);
  }

  CustomerSpendingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _yearly = $v.yearly;
      _monthly = $v.monthly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerSpending other) {
    _$v = other as _$CustomerSpending;
  }

  @override
  void update(void Function(CustomerSpendingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerSpending build() => _build();

  _$CustomerSpending _build() {
    final _$result =
        _$v ??
        _$CustomerSpending._(
          customerName: customerName,
          yearly: yearly,
          monthly: monthly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
