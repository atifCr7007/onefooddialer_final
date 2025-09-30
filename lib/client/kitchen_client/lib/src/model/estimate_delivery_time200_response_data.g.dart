// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_delivery_time200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstimateDeliveryTime200ResponseData
    extends EstimateDeliveryTime200ResponseData {
  @override
  final String? orderId;
  @override
  final int? preparationTimeMinutes;
  @override
  final int? deliveryTimeMinutes;
  @override
  final int? totalEstimatedTimeMinutes;
  @override
  final DateTime? estimatedDeliveryTime;
  @override
  final EstimateDeliveryTime200ResponseDataPreparationStatus? preparationStatus;

  factory _$EstimateDeliveryTime200ResponseData([
    void Function(EstimateDeliveryTime200ResponseDataBuilder)? updates,
  ]) =>
      (EstimateDeliveryTime200ResponseDataBuilder()..update(updates))._build();

  _$EstimateDeliveryTime200ResponseData._({
    this.orderId,
    this.preparationTimeMinutes,
    this.deliveryTimeMinutes,
    this.totalEstimatedTimeMinutes,
    this.estimatedDeliveryTime,
    this.preparationStatus,
  }) : super._();
  @override
  EstimateDeliveryTime200ResponseData rebuild(
    void Function(EstimateDeliveryTime200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EstimateDeliveryTime200ResponseDataBuilder toBuilder() =>
      EstimateDeliveryTime200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimateDeliveryTime200ResponseData &&
        orderId == other.orderId &&
        preparationTimeMinutes == other.preparationTimeMinutes &&
        deliveryTimeMinutes == other.deliveryTimeMinutes &&
        totalEstimatedTimeMinutes == other.totalEstimatedTimeMinutes &&
        estimatedDeliveryTime == other.estimatedDeliveryTime &&
        preparationStatus == other.preparationStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, preparationTimeMinutes.hashCode);
    _$hash = $jc(_$hash, deliveryTimeMinutes.hashCode);
    _$hash = $jc(_$hash, totalEstimatedTimeMinutes.hashCode);
    _$hash = $jc(_$hash, estimatedDeliveryTime.hashCode);
    _$hash = $jc(_$hash, preparationStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EstimateDeliveryTime200ResponseData')
          ..add('orderId', orderId)
          ..add('preparationTimeMinutes', preparationTimeMinutes)
          ..add('deliveryTimeMinutes', deliveryTimeMinutes)
          ..add('totalEstimatedTimeMinutes', totalEstimatedTimeMinutes)
          ..add('estimatedDeliveryTime', estimatedDeliveryTime)
          ..add('preparationStatus', preparationStatus))
        .toString();
  }
}

class EstimateDeliveryTime200ResponseDataBuilder
    implements
        Builder<
          EstimateDeliveryTime200ResponseData,
          EstimateDeliveryTime200ResponseDataBuilder
        > {
  _$EstimateDeliveryTime200ResponseData? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  int? _preparationTimeMinutes;
  int? get preparationTimeMinutes => _$this._preparationTimeMinutes;
  set preparationTimeMinutes(int? preparationTimeMinutes) =>
      _$this._preparationTimeMinutes = preparationTimeMinutes;

  int? _deliveryTimeMinutes;
  int? get deliveryTimeMinutes => _$this._deliveryTimeMinutes;
  set deliveryTimeMinutes(int? deliveryTimeMinutes) =>
      _$this._deliveryTimeMinutes = deliveryTimeMinutes;

  int? _totalEstimatedTimeMinutes;
  int? get totalEstimatedTimeMinutes => _$this._totalEstimatedTimeMinutes;
  set totalEstimatedTimeMinutes(int? totalEstimatedTimeMinutes) =>
      _$this._totalEstimatedTimeMinutes = totalEstimatedTimeMinutes;

  DateTime? _estimatedDeliveryTime;
  DateTime? get estimatedDeliveryTime => _$this._estimatedDeliveryTime;
  set estimatedDeliveryTime(DateTime? estimatedDeliveryTime) =>
      _$this._estimatedDeliveryTime = estimatedDeliveryTime;

  EstimateDeliveryTime200ResponseDataPreparationStatusBuilder?
  _preparationStatus;
  EstimateDeliveryTime200ResponseDataPreparationStatusBuilder
  get preparationStatus => _$this._preparationStatus ??=
      EstimateDeliveryTime200ResponseDataPreparationStatusBuilder();
  set preparationStatus(
    EstimateDeliveryTime200ResponseDataPreparationStatusBuilder?
    preparationStatus,
  ) => _$this._preparationStatus = preparationStatus;

  EstimateDeliveryTime200ResponseDataBuilder() {
    EstimateDeliveryTime200ResponseData._defaults(this);
  }

  EstimateDeliveryTime200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _preparationTimeMinutes = $v.preparationTimeMinutes;
      _deliveryTimeMinutes = $v.deliveryTimeMinutes;
      _totalEstimatedTimeMinutes = $v.totalEstimatedTimeMinutes;
      _estimatedDeliveryTime = $v.estimatedDeliveryTime;
      _preparationStatus = $v.preparationStatus?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimateDeliveryTime200ResponseData other) {
    _$v = other as _$EstimateDeliveryTime200ResponseData;
  }

  @override
  void update(
    void Function(EstimateDeliveryTime200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EstimateDeliveryTime200ResponseData build() => _build();

  _$EstimateDeliveryTime200ResponseData _build() {
    _$EstimateDeliveryTime200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$EstimateDeliveryTime200ResponseData._(
            orderId: orderId,
            preparationTimeMinutes: preparationTimeMinutes,
            deliveryTimeMinutes: deliveryTimeMinutes,
            totalEstimatedTimeMinutes: totalEstimatedTimeMinutes,
            estimatedDeliveryTime: estimatedDeliveryTime,
            preparationStatus: _preparationStatus?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preparationStatus';
        _preparationStatus?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EstimateDeliveryTime200ResponseData',
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
