// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_backorder_from_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBackorderFromOrderRequest
    extends CreateBackorderFromOrderRequest {
  @override
  final int orderId;
  @override
  final String reason;

  factory _$CreateBackorderFromOrderRequest([
    void Function(CreateBackorderFromOrderRequestBuilder)? updates,
  ]) => (CreateBackorderFromOrderRequestBuilder()..update(updates))._build();

  _$CreateBackorderFromOrderRequest._({
    required this.orderId,
    required this.reason,
  }) : super._();
  @override
  CreateBackorderFromOrderRequest rebuild(
    void Function(CreateBackorderFromOrderRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateBackorderFromOrderRequestBuilder toBuilder() =>
      CreateBackorderFromOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBackorderFromOrderRequest &&
        orderId == other.orderId &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateBackorderFromOrderRequest')
          ..add('orderId', orderId)
          ..add('reason', reason))
        .toString();
  }
}

class CreateBackorderFromOrderRequestBuilder
    implements
        Builder<
          CreateBackorderFromOrderRequest,
          CreateBackorderFromOrderRequestBuilder
        > {
  _$CreateBackorderFromOrderRequest? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  CreateBackorderFromOrderRequestBuilder() {
    CreateBackorderFromOrderRequest._defaults(this);
  }

  CreateBackorderFromOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBackorderFromOrderRequest other) {
    _$v = other as _$CreateBackorderFromOrderRequest;
  }

  @override
  void update(void Function(CreateBackorderFromOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBackorderFromOrderRequest build() => _build();

  _$CreateBackorderFromOrderRequest _build() {
    final _$result =
        _$v ??
        _$CreateBackorderFromOrderRequest._(
          orderId: BuiltValueNullFieldError.checkNotNull(
            orderId,
            r'CreateBackorderFromOrderRequest',
            'orderId',
          ),
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'CreateBackorderFromOrderRequest',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
