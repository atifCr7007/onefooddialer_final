// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_payment_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiatePaymentResponseData extends InitiatePaymentResponseData {
  @override
  final int? transactionId;
  @override
  final double? amount;
  @override
  final String? status;

  factory _$InitiatePaymentResponseData([
    void Function(InitiatePaymentResponseDataBuilder)? updates,
  ]) => (InitiatePaymentResponseDataBuilder()..update(updates))._build();

  _$InitiatePaymentResponseData._({
    this.transactionId,
    this.amount,
    this.status,
  }) : super._();
  @override
  InitiatePaymentResponseData rebuild(
    void Function(InitiatePaymentResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InitiatePaymentResponseDataBuilder toBuilder() =>
      InitiatePaymentResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiatePaymentResponseData &&
        transactionId == other.transactionId &&
        amount == other.amount &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitiatePaymentResponseData')
          ..add('transactionId', transactionId)
          ..add('amount', amount)
          ..add('status', status))
        .toString();
  }
}

class InitiatePaymentResponseDataBuilder
    implements
        Builder<
          InitiatePaymentResponseData,
          InitiatePaymentResponseDataBuilder
        > {
  _$InitiatePaymentResponseData? _$v;

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

  InitiatePaymentResponseDataBuilder() {
    InitiatePaymentResponseData._defaults(this);
  }

  InitiatePaymentResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _amount = $v.amount;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiatePaymentResponseData other) {
    _$v = other as _$InitiatePaymentResponseData;
  }

  @override
  void update(void Function(InitiatePaymentResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiatePaymentResponseData build() => _build();

  _$InitiatePaymentResponseData _build() {
    final _$result =
        _$v ??
        _$InitiatePaymentResponseData._(
          transactionId: transactionId,
          amount: amount,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
