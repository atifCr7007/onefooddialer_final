// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoiceStatistics extends InvoiceStatistics {
  @override
  final int totalInvoices;
  @override
  final double totalAmount;
  @override
  final double paidAmount;
  @override
  final double pendingAmount;
  @override
  final double overdueAmount;
  @override
  final int draftCount;
  @override
  final int sentCount;
  @override
  final int paidCount;
  @override
  final int overdueCount;
  @override
  final int cancelledCount;
  @override
  final String currency;

  factory _$InvoiceStatistics([
    void Function(InvoiceStatisticsBuilder)? updates,
  ]) => (InvoiceStatisticsBuilder()..update(updates))._build();

  _$InvoiceStatistics._({
    required this.totalInvoices,
    required this.totalAmount,
    required this.paidAmount,
    required this.pendingAmount,
    required this.overdueAmount,
    required this.draftCount,
    required this.sentCount,
    required this.paidCount,
    required this.overdueCount,
    required this.cancelledCount,
    required this.currency,
  }) : super._();
  @override
  InvoiceStatistics rebuild(void Function(InvoiceStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoiceStatisticsBuilder toBuilder() =>
      InvoiceStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoiceStatistics &&
        totalInvoices == other.totalInvoices &&
        totalAmount == other.totalAmount &&
        paidAmount == other.paidAmount &&
        pendingAmount == other.pendingAmount &&
        overdueAmount == other.overdueAmount &&
        draftCount == other.draftCount &&
        sentCount == other.sentCount &&
        paidCount == other.paidCount &&
        overdueCount == other.overdueCount &&
        cancelledCount == other.cancelledCount &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalInvoices.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, paidAmount.hashCode);
    _$hash = $jc(_$hash, pendingAmount.hashCode);
    _$hash = $jc(_$hash, overdueAmount.hashCode);
    _$hash = $jc(_$hash, draftCount.hashCode);
    _$hash = $jc(_$hash, sentCount.hashCode);
    _$hash = $jc(_$hash, paidCount.hashCode);
    _$hash = $jc(_$hash, overdueCount.hashCode);
    _$hash = $jc(_$hash, cancelledCount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoiceStatistics')
          ..add('totalInvoices', totalInvoices)
          ..add('totalAmount', totalAmount)
          ..add('paidAmount', paidAmount)
          ..add('pendingAmount', pendingAmount)
          ..add('overdueAmount', overdueAmount)
          ..add('draftCount', draftCount)
          ..add('sentCount', sentCount)
          ..add('paidCount', paidCount)
          ..add('overdueCount', overdueCount)
          ..add('cancelledCount', cancelledCount)
          ..add('currency', currency))
        .toString();
  }
}

class InvoiceStatisticsBuilder
    implements Builder<InvoiceStatistics, InvoiceStatisticsBuilder> {
  _$InvoiceStatistics? _$v;

  int? _totalInvoices;
  int? get totalInvoices => _$this._totalInvoices;
  set totalInvoices(int? totalInvoices) =>
      _$this._totalInvoices = totalInvoices;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  double? _paidAmount;
  double? get paidAmount => _$this._paidAmount;
  set paidAmount(double? paidAmount) => _$this._paidAmount = paidAmount;

  double? _pendingAmount;
  double? get pendingAmount => _$this._pendingAmount;
  set pendingAmount(double? pendingAmount) =>
      _$this._pendingAmount = pendingAmount;

  double? _overdueAmount;
  double? get overdueAmount => _$this._overdueAmount;
  set overdueAmount(double? overdueAmount) =>
      _$this._overdueAmount = overdueAmount;

  int? _draftCount;
  int? get draftCount => _$this._draftCount;
  set draftCount(int? draftCount) => _$this._draftCount = draftCount;

  int? _sentCount;
  int? get sentCount => _$this._sentCount;
  set sentCount(int? sentCount) => _$this._sentCount = sentCount;

  int? _paidCount;
  int? get paidCount => _$this._paidCount;
  set paidCount(int? paidCount) => _$this._paidCount = paidCount;

  int? _overdueCount;
  int? get overdueCount => _$this._overdueCount;
  set overdueCount(int? overdueCount) => _$this._overdueCount = overdueCount;

  int? _cancelledCount;
  int? get cancelledCount => _$this._cancelledCount;
  set cancelledCount(int? cancelledCount) =>
      _$this._cancelledCount = cancelledCount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  InvoiceStatisticsBuilder() {
    InvoiceStatistics._defaults(this);
  }

  InvoiceStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalInvoices = $v.totalInvoices;
      _totalAmount = $v.totalAmount;
      _paidAmount = $v.paidAmount;
      _pendingAmount = $v.pendingAmount;
      _overdueAmount = $v.overdueAmount;
      _draftCount = $v.draftCount;
      _sentCount = $v.sentCount;
      _paidCount = $v.paidCount;
      _overdueCount = $v.overdueCount;
      _cancelledCount = $v.cancelledCount;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoiceStatistics other) {
    _$v = other as _$InvoiceStatistics;
  }

  @override
  void update(void Function(InvoiceStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoiceStatistics build() => _build();

  _$InvoiceStatistics _build() {
    final _$result =
        _$v ??
        _$InvoiceStatistics._(
          totalInvoices: BuiltValueNullFieldError.checkNotNull(
            totalInvoices,
            r'InvoiceStatistics',
            'totalInvoices',
          ),
          totalAmount: BuiltValueNullFieldError.checkNotNull(
            totalAmount,
            r'InvoiceStatistics',
            'totalAmount',
          ),
          paidAmount: BuiltValueNullFieldError.checkNotNull(
            paidAmount,
            r'InvoiceStatistics',
            'paidAmount',
          ),
          pendingAmount: BuiltValueNullFieldError.checkNotNull(
            pendingAmount,
            r'InvoiceStatistics',
            'pendingAmount',
          ),
          overdueAmount: BuiltValueNullFieldError.checkNotNull(
            overdueAmount,
            r'InvoiceStatistics',
            'overdueAmount',
          ),
          draftCount: BuiltValueNullFieldError.checkNotNull(
            draftCount,
            r'InvoiceStatistics',
            'draftCount',
          ),
          sentCount: BuiltValueNullFieldError.checkNotNull(
            sentCount,
            r'InvoiceStatistics',
            'sentCount',
          ),
          paidCount: BuiltValueNullFieldError.checkNotNull(
            paidCount,
            r'InvoiceStatistics',
            'paidCount',
          ),
          overdueCount: BuiltValueNullFieldError.checkNotNull(
            overdueCount,
            r'InvoiceStatistics',
            'overdueCount',
          ),
          cancelledCount: BuiltValueNullFieldError.checkNotNull(
            cancelledCount,
            r'InvoiceStatistics',
            'cancelledCount',
          ),
          currency: BuiltValueNullFieldError.checkNotNull(
            currency,
            r'InvoiceStatistics',
            'currency',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
