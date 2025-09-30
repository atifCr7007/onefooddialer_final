// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_delivery_status_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotifyDeliveryStatusUpdateRequest
    extends NotifyDeliveryStatusUpdateRequest {
  @override
  final String orderId;
  @override
  final String status;
  @override
  final DateTime? timestamp;
  @override
  final NotifyDeliveryStatusUpdateRequestDeliveryAgent? deliveryAgent;

  factory _$NotifyDeliveryStatusUpdateRequest([
    void Function(NotifyDeliveryStatusUpdateRequestBuilder)? updates,
  ]) => (NotifyDeliveryStatusUpdateRequestBuilder()..update(updates))._build();

  _$NotifyDeliveryStatusUpdateRequest._({
    required this.orderId,
    required this.status,
    this.timestamp,
    this.deliveryAgent,
  }) : super._();
  @override
  NotifyDeliveryStatusUpdateRequest rebuild(
    void Function(NotifyDeliveryStatusUpdateRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotifyDeliveryStatusUpdateRequestBuilder toBuilder() =>
      NotifyDeliveryStatusUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotifyDeliveryStatusUpdateRequest &&
        orderId == other.orderId &&
        status == other.status &&
        timestamp == other.timestamp &&
        deliveryAgent == other.deliveryAgent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, deliveryAgent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotifyDeliveryStatusUpdateRequest')
          ..add('orderId', orderId)
          ..add('status', status)
          ..add('timestamp', timestamp)
          ..add('deliveryAgent', deliveryAgent))
        .toString();
  }
}

class NotifyDeliveryStatusUpdateRequestBuilder
    implements
        Builder<
          NotifyDeliveryStatusUpdateRequest,
          NotifyDeliveryStatusUpdateRequestBuilder
        > {
  _$NotifyDeliveryStatusUpdateRequest? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder? _deliveryAgent;
  NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder get deliveryAgent =>
      _$this._deliveryAgent ??=
          NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder();
  set deliveryAgent(
    NotifyDeliveryStatusUpdateRequestDeliveryAgentBuilder? deliveryAgent,
  ) => _$this._deliveryAgent = deliveryAgent;

  NotifyDeliveryStatusUpdateRequestBuilder() {
    NotifyDeliveryStatusUpdateRequest._defaults(this);
  }

  NotifyDeliveryStatusUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _status = $v.status;
      _timestamp = $v.timestamp;
      _deliveryAgent = $v.deliveryAgent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotifyDeliveryStatusUpdateRequest other) {
    _$v = other as _$NotifyDeliveryStatusUpdateRequest;
  }

  @override
  void update(
    void Function(NotifyDeliveryStatusUpdateRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NotifyDeliveryStatusUpdateRequest build() => _build();

  _$NotifyDeliveryStatusUpdateRequest _build() {
    _$NotifyDeliveryStatusUpdateRequest _$result;
    try {
      _$result =
          _$v ??
          _$NotifyDeliveryStatusUpdateRequest._(
            orderId: BuiltValueNullFieldError.checkNotNull(
              orderId,
              r'NotifyDeliveryStatusUpdateRequest',
              'orderId',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'NotifyDeliveryStatusUpdateRequest',
              'status',
            ),
            timestamp: timestamp,
            deliveryAgent: _deliveryAgent?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deliveryAgent';
        _deliveryAgent?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NotifyDeliveryStatusUpdateRequest',
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
