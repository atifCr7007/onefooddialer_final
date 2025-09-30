// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_delivery_time200_response_data_preparation_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstimateDeliveryTime200ResponseDataPreparationStatus
    extends EstimateDeliveryTime200ResponseDataPreparationStatus {
  @override
  final bool? isFullyPrepared;
  @override
  final double? preparationPercentage;

  factory _$EstimateDeliveryTime200ResponseDataPreparationStatus([
    void Function(EstimateDeliveryTime200ResponseDataPreparationStatusBuilder)?
    updates,
  ]) =>
      (EstimateDeliveryTime200ResponseDataPreparationStatusBuilder()
            ..update(updates))
          ._build();

  _$EstimateDeliveryTime200ResponseDataPreparationStatus._({
    this.isFullyPrepared,
    this.preparationPercentage,
  }) : super._();
  @override
  EstimateDeliveryTime200ResponseDataPreparationStatus rebuild(
    void Function(EstimateDeliveryTime200ResponseDataPreparationStatusBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EstimateDeliveryTime200ResponseDataPreparationStatusBuilder toBuilder() =>
      EstimateDeliveryTime200ResponseDataPreparationStatusBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimateDeliveryTime200ResponseDataPreparationStatus &&
        isFullyPrepared == other.isFullyPrepared &&
        preparationPercentage == other.preparationPercentage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EstimateDeliveryTime200ResponseDataPreparationStatus',
          )
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('preparationPercentage', preparationPercentage))
        .toString();
  }
}

class EstimateDeliveryTime200ResponseDataPreparationStatusBuilder
    implements
        Builder<
          EstimateDeliveryTime200ResponseDataPreparationStatus,
          EstimateDeliveryTime200ResponseDataPreparationStatusBuilder
        > {
  _$EstimateDeliveryTime200ResponseDataPreparationStatus? _$v;

  bool? _isFullyPrepared;
  bool? get isFullyPrepared => _$this._isFullyPrepared;
  set isFullyPrepared(bool? isFullyPrepared) =>
      _$this._isFullyPrepared = isFullyPrepared;

  double? _preparationPercentage;
  double? get preparationPercentage => _$this._preparationPercentage;
  set preparationPercentage(double? preparationPercentage) =>
      _$this._preparationPercentage = preparationPercentage;

  EstimateDeliveryTime200ResponseDataPreparationStatusBuilder() {
    EstimateDeliveryTime200ResponseDataPreparationStatus._defaults(this);
  }

  EstimateDeliveryTime200ResponseDataPreparationStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isFullyPrepared = $v.isFullyPrepared;
      _preparationPercentage = $v.preparationPercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimateDeliveryTime200ResponseDataPreparationStatus other) {
    _$v = other as _$EstimateDeliveryTime200ResponseDataPreparationStatus;
  }

  @override
  void update(
    void Function(EstimateDeliveryTime200ResponseDataPreparationStatusBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EstimateDeliveryTime200ResponseDataPreparationStatus build() => _build();

  _$EstimateDeliveryTime200ResponseDataPreparationStatus _build() {
    final _$result =
        _$v ??
        _$EstimateDeliveryTime200ResponseDataPreparationStatus._(
          isFullyPrepared: isFullyPrepared,
          preparationPercentage: preparationPercentage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
