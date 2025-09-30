// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_preparation_summary200_response_data_orders_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerPreparationSummary200ResponseDataOrdersInner
    extends GetCustomerPreparationSummary200ResponseDataOrdersInner {
  @override
  final String? orderId;
  @override
  final bool? isFullyPrepared;
  @override
  final double? preparationPercentage;
  @override
  final String? status;

  factory _$GetCustomerPreparationSummary200ResponseDataOrdersInner([
    void Function(
      GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder,
    )?
    updates,
  ]) =>
      (GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder()
            ..update(updates))
          ._build();

  _$GetCustomerPreparationSummary200ResponseDataOrdersInner._({
    this.orderId,
    this.isFullyPrepared,
    this.preparationPercentage,
    this.status,
  }) : super._();
  @override
  GetCustomerPreparationSummary200ResponseDataOrdersInner rebuild(
    void Function(
      GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder toBuilder() =>
      GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerPreparationSummary200ResponseDataOrdersInner &&
        orderId == other.orderId &&
        isFullyPrepared == other.isFullyPrepared &&
        preparationPercentage == other.preparationPercentage &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetCustomerPreparationSummary200ResponseDataOrdersInner',
          )
          ..add('orderId', orderId)
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('preparationPercentage', preparationPercentage)
          ..add('status', status))
        .toString();
  }
}

class GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder
    implements
        Builder<
          GetCustomerPreparationSummary200ResponseDataOrdersInner,
          GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder
        > {
  _$GetCustomerPreparationSummary200ResponseDataOrdersInner? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  bool? _isFullyPrepared;
  bool? get isFullyPrepared => _$this._isFullyPrepared;
  set isFullyPrepared(bool? isFullyPrepared) =>
      _$this._isFullyPrepared = isFullyPrepared;

  double? _preparationPercentage;
  double? get preparationPercentage => _$this._preparationPercentage;
  set preparationPercentage(double? preparationPercentage) =>
      _$this._preparationPercentage = preparationPercentage;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder() {
    GetCustomerPreparationSummary200ResponseDataOrdersInner._defaults(this);
  }

  GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _isFullyPrepared = $v.isFullyPrepared;
      _preparationPercentage = $v.preparationPercentage;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerPreparationSummary200ResponseDataOrdersInner other) {
    _$v = other as _$GetCustomerPreparationSummary200ResponseDataOrdersInner;
  }

  @override
  void update(
    void Function(
      GetCustomerPreparationSummary200ResponseDataOrdersInnerBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerPreparationSummary200ResponseDataOrdersInner build() => _build();

  _$GetCustomerPreparationSummary200ResponseDataOrdersInner _build() {
    final _$result =
        _$v ??
        _$GetCustomerPreparationSummary200ResponseDataOrdersInner._(
          orderId: orderId,
          isFullyPrepared: isFullyPrepared,
          preparationPercentage: preparationPercentage,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
