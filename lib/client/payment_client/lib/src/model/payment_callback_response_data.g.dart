// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_callback_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentCallbackResponseData extends PaymentCallbackResponseData {
  @override
  final int? transactionId;
  @override
  final String? status;
  @override
  final String? gatewayTransactionId;

  factory _$PaymentCallbackResponseData([
    void Function(PaymentCallbackResponseDataBuilder)? updates,
  ]) => (PaymentCallbackResponseDataBuilder()..update(updates))._build();

  _$PaymentCallbackResponseData._({
    this.transactionId,
    this.status,
    this.gatewayTransactionId,
  }) : super._();
  @override
  PaymentCallbackResponseData rebuild(
    void Function(PaymentCallbackResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentCallbackResponseDataBuilder toBuilder() =>
      PaymentCallbackResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentCallbackResponseData &&
        transactionId == other.transactionId &&
        status == other.status &&
        gatewayTransactionId == other.gatewayTransactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, gatewayTransactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentCallbackResponseData')
          ..add('transactionId', transactionId)
          ..add('status', status)
          ..add('gatewayTransactionId', gatewayTransactionId))
        .toString();
  }
}

class PaymentCallbackResponseDataBuilder
    implements
        Builder<
          PaymentCallbackResponseData,
          PaymentCallbackResponseDataBuilder
        > {
  _$PaymentCallbackResponseData? _$v;

  int? _transactionId;
  int? get transactionId => _$this._transactionId;
  set transactionId(int? transactionId) =>
      _$this._transactionId = transactionId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _gatewayTransactionId;
  String? get gatewayTransactionId => _$this._gatewayTransactionId;
  set gatewayTransactionId(String? gatewayTransactionId) =>
      _$this._gatewayTransactionId = gatewayTransactionId;

  PaymentCallbackResponseDataBuilder() {
    PaymentCallbackResponseData._defaults(this);
  }

  PaymentCallbackResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _status = $v.status;
      _gatewayTransactionId = $v.gatewayTransactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentCallbackResponseData other) {
    _$v = other as _$PaymentCallbackResponseData;
  }

  @override
  void update(void Function(PaymentCallbackResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentCallbackResponseData build() => _build();

  _$PaymentCallbackResponseData _build() {
    final _$result =
        _$v ??
        _$PaymentCallbackResponseData._(
          transactionId: transactionId,
          status: status,
          gatewayTransactionId: gatewayTransactionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
