// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_order_id_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersOrderIdDeleteRequest extends OrdersOrderIdDeleteRequest {
  @override
  final String? reason;
  @override
  final double? refundAmount;
  @override
  final bool? notifyCustomer;

  factory _$OrdersOrderIdDeleteRequest([
    void Function(OrdersOrderIdDeleteRequestBuilder)? updates,
  ]) => (OrdersOrderIdDeleteRequestBuilder()..update(updates))._build();

  _$OrdersOrderIdDeleteRequest._({
    this.reason,
    this.refundAmount,
    this.notifyCustomer,
  }) : super._();
  @override
  OrdersOrderIdDeleteRequest rebuild(
    void Function(OrdersOrderIdDeleteRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrdersOrderIdDeleteRequestBuilder toBuilder() =>
      OrdersOrderIdDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersOrderIdDeleteRequest &&
        reason == other.reason &&
        refundAmount == other.refundAmount &&
        notifyCustomer == other.notifyCustomer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, refundAmount.hashCode);
    _$hash = $jc(_$hash, notifyCustomer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersOrderIdDeleteRequest')
          ..add('reason', reason)
          ..add('refundAmount', refundAmount)
          ..add('notifyCustomer', notifyCustomer))
        .toString();
  }
}

class OrdersOrderIdDeleteRequestBuilder
    implements
        Builder<OrdersOrderIdDeleteRequest, OrdersOrderIdDeleteRequestBuilder> {
  _$OrdersOrderIdDeleteRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  double? _refundAmount;
  double? get refundAmount => _$this._refundAmount;
  set refundAmount(double? refundAmount) => _$this._refundAmount = refundAmount;

  bool? _notifyCustomer;
  bool? get notifyCustomer => _$this._notifyCustomer;
  set notifyCustomer(bool? notifyCustomer) =>
      _$this._notifyCustomer = notifyCustomer;

  OrdersOrderIdDeleteRequestBuilder() {
    OrdersOrderIdDeleteRequest._defaults(this);
  }

  OrdersOrderIdDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _refundAmount = $v.refundAmount;
      _notifyCustomer = $v.notifyCustomer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersOrderIdDeleteRequest other) {
    _$v = other as _$OrdersOrderIdDeleteRequest;
  }

  @override
  void update(void Function(OrdersOrderIdDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersOrderIdDeleteRequest build() => _build();

  _$OrdersOrderIdDeleteRequest _build() {
    final _$result =
        _$v ??
        _$OrdersOrderIdDeleteRequest._(
          reason: reason,
          refundAmount: refundAmount,
          notifyCustomer: notifyCustomer,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
