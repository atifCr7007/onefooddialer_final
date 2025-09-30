// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefundPaymentRequest extends RefundPaymentRequest {
  @override
  final double? amount;

  factory _$RefundPaymentRequest([
    void Function(RefundPaymentRequestBuilder)? updates,
  ]) => (RefundPaymentRequestBuilder()..update(updates))._build();

  _$RefundPaymentRequest._({this.amount}) : super._();
  @override
  RefundPaymentRequest rebuild(
    void Function(RefundPaymentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RefundPaymentRequestBuilder toBuilder() =>
      RefundPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundPaymentRequest && amount == other.amount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RefundPaymentRequest',
    )..add('amount', amount)).toString();
  }
}

class RefundPaymentRequestBuilder
    implements Builder<RefundPaymentRequest, RefundPaymentRequestBuilder> {
  _$RefundPaymentRequest? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  RefundPaymentRequestBuilder() {
    RefundPaymentRequest._defaults(this);
  }

  RefundPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundPaymentRequest other) {
    _$v = other as _$RefundPaymentRequest;
  }

  @override
  void update(void Function(RefundPaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefundPaymentRequest build() => _build();

  _$RefundPaymentRequest _build() {
    final _$result = _$v ?? _$RefundPaymentRequest._(amount: amount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
