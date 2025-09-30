// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatisticsResponseData extends StatisticsResponseData {
  @override
  final int? totalTransactions;
  @override
  final double? totalAmount;
  @override
  final Map<String, dynamic>? transactionsByStatus;
  @override
  final Map<String, dynamic>? transactionsByGateway;
  @override
  final BuiltList<TransactionSummary>? recentTransactions;

  factory _$StatisticsResponseData([
    void Function(StatisticsResponseDataBuilder)? updates,
  ]) => (StatisticsResponseDataBuilder()..update(updates))._build();

  _$StatisticsResponseData._({
    this.totalTransactions,
    this.totalAmount,
    this.transactionsByStatus,
    this.transactionsByGateway,
    this.recentTransactions,
  }) : super._();
  @override
  StatisticsResponseData rebuild(
    void Function(StatisticsResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StatisticsResponseDataBuilder toBuilder() =>
      StatisticsResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsResponseData &&
        totalTransactions == other.totalTransactions &&
        totalAmount == other.totalAmount &&
        transactionsByStatus == other.transactionsByStatus &&
        transactionsByGateway == other.transactionsByGateway &&
        recentTransactions == other.recentTransactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalTransactions.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, transactionsByStatus.hashCode);
    _$hash = $jc(_$hash, transactionsByGateway.hashCode);
    _$hash = $jc(_$hash, recentTransactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatisticsResponseData')
          ..add('totalTransactions', totalTransactions)
          ..add('totalAmount', totalAmount)
          ..add('transactionsByStatus', transactionsByStatus)
          ..add('transactionsByGateway', transactionsByGateway)
          ..add('recentTransactions', recentTransactions))
        .toString();
  }
}

class StatisticsResponseDataBuilder
    implements Builder<StatisticsResponseData, StatisticsResponseDataBuilder> {
  _$StatisticsResponseData? _$v;

  int? _totalTransactions;
  int? get totalTransactions => _$this._totalTransactions;
  set totalTransactions(int? totalTransactions) =>
      _$this._totalTransactions = totalTransactions;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  Map<String, dynamic>? _transactionsByStatus;
  Map<String, dynamic>? get transactionsByStatus =>
      _$this._transactionsByStatus;
  set transactionsByStatus(Map<String, dynamic>? transactionsByStatus) =>
      _$this._transactionsByStatus = transactionsByStatus;

  Map<String, dynamic>? _transactionsByGateway;
  Map<String, dynamic>? get transactionsByGateway =>
      _$this._transactionsByGateway;
  set transactionsByGateway(Map<String, dynamic>? transactionsByGateway) =>
      _$this._transactionsByGateway = transactionsByGateway;

  ListBuilder<dynamic>? _recentTransactions;
  ListBuilder<dynamic> get recentTransactions =>
      _$this._recentTransactions ??= ListBuilder<dynamic>();
  set recentTransactions(ListBuilder<dynamic>? recentTransactions) =>
      _$this._recentTransactions = recentTransactions;

  StatisticsResponseDataBuilder() {
    StatisticsResponseData._defaults(this);
  }

  StatisticsResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTransactions = $v.totalTransactions;
      _totalAmount = $v.totalAmount;
      _transactionsByStatus = $v.transactionsByStatus;
      _transactionsByGateway = $v.transactionsByGateway;
      _recentTransactions = $v.recentTransactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsResponseData other) {
    _$v = other as _$StatisticsResponseData;
  }

  @override
  void update(void Function(StatisticsResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatisticsResponseData build() => _build();

  _$StatisticsResponseData _build() {
    _$StatisticsResponseData _$result;
    try {
      _$result =
          _$v ??
          _$StatisticsResponseData._(
            totalTransactions: totalTransactions,
            totalAmount: totalAmount,
            transactionsByStatus: transactionsByStatus,
            transactionsByGateway: transactionsByGateway,
            recentTransactions: _recentTransactions?.build() as BuiltList<TransactionSummary>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recentTransactions';
        _recentTransactions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StatisticsResponseData',
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
