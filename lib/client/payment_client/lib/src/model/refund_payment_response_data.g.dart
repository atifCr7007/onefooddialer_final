// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_payment_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefundPaymentResponseData extends RefundPaymentResponseData {
  @override
  final bool? success;
  @override
  final String? status;
  @override
  final String? gatewayTransactionId;

  factory _$RefundPaymentResponseData([
    void Function(RefundPaymentResponseDataBuilder)? updates,
  ]) => (RefundPaymentResponseDataBuilder()..update(updates))._build();

  _$RefundPaymentResponseData._({
    this.success,
    this.status,
    this.gatewayTransactionId,
  }) : super._();
  @override
  RefundPaymentResponseData rebuild(
    void Function(RefundPaymentResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RefundPaymentResponseDataBuilder toBuilder() =>
      RefundPaymentResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundPaymentResponseData &&
        success == other.success &&
        status == other.status &&
        gatewayTransactionId == other.gatewayTransactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, gatewayTransactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefundPaymentResponseData')
          ..add('success', success)
          ..add('status', status)
          ..add('gatewayTransactionId', gatewayTransactionId))
        .toString();
  }
}

class RefundPaymentResponseDataBuilder
    implements
        Builder<RefundPaymentResponseData, RefundPaymentResponseDataBuilder> {
  _$RefundPaymentResponseData? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _gatewayTransactionId;
  String? get gatewayTransactionId => _$this._gatewayTransactionId;
  set gatewayTransactionId(String? gatewayTransactionId) =>
      _$this._gatewayTransactionId = gatewayTransactionId;

  RefundPaymentResponseDataBuilder() {
    RefundPaymentResponseData._defaults(this);
  }

  RefundPaymentResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _status = $v.status;
      _gatewayTransactionId = $v.gatewayTransactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefundPaymentResponseData other) {
    _$v = other as _$RefundPaymentResponseData;
  }

  @override
  void update(void Function(RefundPaymentResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefundPaymentResponseData build() => _build();

  _$RefundPaymentResponseData _build() {
    final _$result =
        _$v ??
        _$RefundPaymentResponseData._(
          success: success,
          status: status,
          gatewayTransactionId: gatewayTransactionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
