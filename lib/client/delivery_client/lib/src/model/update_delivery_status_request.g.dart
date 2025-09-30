// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_delivery_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeliveryStatusRequest extends UpdateDeliveryStatusRequest {
  @override
  final int orderId;
  @override
  final bool? orderCompleted;

  factory _$UpdateDeliveryStatusRequest([
    void Function(UpdateDeliveryStatusRequestBuilder)? updates,
  ]) => (UpdateDeliveryStatusRequestBuilder()..update(updates))._build();

  _$UpdateDeliveryStatusRequest._({required this.orderId, this.orderCompleted})
    : super._();
  @override
  UpdateDeliveryStatusRequest rebuild(
    void Function(UpdateDeliveryStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateDeliveryStatusRequestBuilder toBuilder() =>
      UpdateDeliveryStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeliveryStatusRequest &&
        orderId == other.orderId &&
        orderCompleted == other.orderCompleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderCompleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateDeliveryStatusRequest')
          ..add('orderId', orderId)
          ..add('orderCompleted', orderCompleted))
        .toString();
  }
}

class UpdateDeliveryStatusRequestBuilder
    implements
        Builder<
          UpdateDeliveryStatusRequest,
          UpdateDeliveryStatusRequestBuilder
        > {
  _$UpdateDeliveryStatusRequest? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  bool? _orderCompleted;
  bool? get orderCompleted => _$this._orderCompleted;
  set orderCompleted(bool? orderCompleted) =>
      _$this._orderCompleted = orderCompleted;

  UpdateDeliveryStatusRequestBuilder() {
    UpdateDeliveryStatusRequest._defaults(this);
  }

  UpdateDeliveryStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _orderCompleted = $v.orderCompleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeliveryStatusRequest other) {
    _$v = other as _$UpdateDeliveryStatusRequest;
  }

  @override
  void update(void Function(UpdateDeliveryStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeliveryStatusRequest build() => _build();

  _$UpdateDeliveryStatusRequest _build() {
    final _$result =
        _$v ??
        _$UpdateDeliveryStatusRequest._(
          orderId: BuiltValueNullFieldError.checkNotNull(
            orderId,
            r'UpdateDeliveryStatusRequest',
            'orderId',
          ),
          orderCompleted: orderCompleted,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
