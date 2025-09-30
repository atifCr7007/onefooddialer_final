// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionSummary extends TransactionSummary {
  @override
  final int? transactionId;
  @override
  final double? amount;
  @override
  final String? status;
  @override
  final String? gateway;
  @override
  final DateTime? createdAt;

  factory _$TransactionSummary([
    void Function(TransactionSummaryBuilder)? updates,
  ]) => (TransactionSummaryBuilder()..update(updates))._build();

  _$TransactionSummary._({
    this.transactionId,
    this.amount,
    this.status,
    this.gateway,
    this.createdAt,
  }) : super._();
  @override
  TransactionSummary rebuild(
    void Function(TransactionSummaryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TransactionSummaryBuilder toBuilder() =>
      TransactionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionSummary &&
        transactionId == other.transactionId &&
        amount == other.amount &&
        status == other.status &&
        gateway == other.gateway &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, gateway.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionSummary')
          ..add('transactionId', transactionId)
          ..add('amount', amount)
          ..add('status', status)
          ..add('gateway', gateway)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TransactionSummaryBuilder
    implements Builder<TransactionSummary, TransactionSummaryBuilder> {
  _$TransactionSummary? _$v;

  int? _transactionId;
  int? get transactionId => _$this._transactionId;
  set transactionId(int? transactionId) =>
      _$this._transactionId = transactionId;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _gateway;
  String? get gateway => _$this._gateway;
  set gateway(String? gateway) => _$this._gateway = gateway;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  TransactionSummaryBuilder() {
    TransactionSummary._defaults(this);
  }

  TransactionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _amount = $v.amount;
      _status = $v.status;
      _gateway = $v.gateway;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionSummary other) {
    _$v = other as _$TransactionSummary;
  }

  @override
  void update(void Function(TransactionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionSummary build() => _build();

  _$TransactionSummary _build() {
    final _$result =
        _$v ??
        _$TransactionSummary._(
          transactionId: transactionId,
          amount: amount,
          status: status,
          gateway: gateway,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
