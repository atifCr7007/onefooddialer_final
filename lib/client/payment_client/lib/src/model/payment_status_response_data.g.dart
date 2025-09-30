// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentStatusResponseData extends PaymentStatusResponseData {
  @override
  final int? transactionId;
  @override
  final double? amount;
  @override
  final String? status;
  @override
  final String? gateway;
  @override
  final String? gatewayTransactionId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PaymentStatusResponseData([
    void Function(PaymentStatusResponseDataBuilder)? updates,
  ]) => (PaymentStatusResponseDataBuilder()..update(updates))._build();

  _$PaymentStatusResponseData._({
    this.transactionId,
    this.amount,
    this.status,
    this.gateway,
    this.gatewayTransactionId,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  PaymentStatusResponseData rebuild(
    void Function(PaymentStatusResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentStatusResponseDataBuilder toBuilder() =>
      PaymentStatusResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentStatusResponseData &&
        transactionId == other.transactionId &&
        amount == other.amount &&
        status == other.status &&
        gateway == other.gateway &&
        gatewayTransactionId == other.gatewayTransactionId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, gateway.hashCode);
    _$hash = $jc(_$hash, gatewayTransactionId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentStatusResponseData')
          ..add('transactionId', transactionId)
          ..add('amount', amount)
          ..add('status', status)
          ..add('gateway', gateway)
          ..add('gatewayTransactionId', gatewayTransactionId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PaymentStatusResponseDataBuilder
    implements
        Builder<PaymentStatusResponseData, PaymentStatusResponseDataBuilder> {
  _$PaymentStatusResponseData? _$v;

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

  String? _gatewayTransactionId;
  String? get gatewayTransactionId => _$this._gatewayTransactionId;
  set gatewayTransactionId(String? gatewayTransactionId) =>
      _$this._gatewayTransactionId = gatewayTransactionId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PaymentStatusResponseDataBuilder() {
    PaymentStatusResponseData._defaults(this);
  }

  PaymentStatusResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _amount = $v.amount;
      _status = $v.status;
      _gateway = $v.gateway;
      _gatewayTransactionId = $v.gatewayTransactionId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentStatusResponseData other) {
    _$v = other as _$PaymentStatusResponseData;
  }

  @override
  void update(void Function(PaymentStatusResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentStatusResponseData build() => _build();

  _$PaymentStatusResponseData _build() {
    final _$result =
        _$v ??
        _$PaymentStatusResponseData._(
          transactionId: transactionId,
          amount: amount,
          status: status,
          gateway: gateway,
          gatewayTransactionId: gatewayTransactionId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
