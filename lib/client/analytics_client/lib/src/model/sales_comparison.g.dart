// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_comparison.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalesComparison extends SalesComparison {
  @override
  final String? period;
  @override
  final double? grossAmount;
  @override
  final double? netAmount;

  factory _$SalesComparison([void Function(SalesComparisonBuilder)? updates]) =>
      (SalesComparisonBuilder()..update(updates))._build();

  _$SalesComparison._({this.period, this.grossAmount, this.netAmount})
      : super._();
  @override
  SalesComparison rebuild(void Function(SalesComparisonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SalesComparisonBuilder toBuilder() => SalesComparisonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalesComparison &&
        period == other.period &&
        grossAmount == other.grossAmount &&
        netAmount == other.netAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, grossAmount.hashCode);
    _$hash = $jc(_$hash, netAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SalesComparison')
          ..add('period', period)
          ..add('grossAmount', grossAmount)
          ..add('netAmount', netAmount))
        .toString();
  }
}

class SalesComparisonBuilder
    implements Builder<SalesComparison, SalesComparisonBuilder> {
  _$SalesComparison? _$v;

  String? _period;
  String? get period => _$this._period;
  set period(String? period) => _$this._period = period;

  double? _grossAmount;
  double? get grossAmount => _$this._grossAmount;
  set grossAmount(double? grossAmount) => _$this._grossAmount = grossAmount;

  double? _netAmount;
  double? get netAmount => _$this._netAmount;
  set netAmount(double? netAmount) => _$this._netAmount = netAmount;

  SalesComparisonBuilder() {
    SalesComparison._defaults(this);
  }

  SalesComparisonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _period = $v.period;
      _grossAmount = $v.grossAmount;
      _netAmount = $v.netAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalesComparison other) {
    _$v = other as _$SalesComparison;
  }

  @override
  void update(void Function(SalesComparisonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SalesComparison build() => _build();

  _$SalesComparison _build() {
    final _$result = _$v ??
        _$SalesComparison._(
          period: period,
          grossAmount: grossAmount,
          netAmount: netAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
