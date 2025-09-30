// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_preparation_status_for_delivery200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderPreparationStatusForDelivery200ResponseData
    extends GetOrderPreparationStatusForDelivery200ResponseData {
  @override
  final String? orderId;
  @override
  final Date? date;
  @override
  final String? menu;
  @override
  final bool? isFullyPrepared;
  @override
  final double? preparationPercentage;
  @override
  final String? status;

  factory _$GetOrderPreparationStatusForDelivery200ResponseData(
          [void Function(
                  GetOrderPreparationStatusForDelivery200ResponseDataBuilder)?
              updates]) =>
      (GetOrderPreparationStatusForDelivery200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$GetOrderPreparationStatusForDelivery200ResponseData._(
      {this.orderId,
      this.date,
      this.menu,
      this.isFullyPrepared,
      this.preparationPercentage,
      this.status})
      : super._();
  @override
  GetOrderPreparationStatusForDelivery200ResponseData rebuild(
          void Function(
                  GetOrderPreparationStatusForDelivery200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrderPreparationStatusForDelivery200ResponseDataBuilder toBuilder() =>
      GetOrderPreparationStatusForDelivery200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderPreparationStatusForDelivery200ResponseData &&
        orderId == other.orderId &&
        date == other.date &&
        menu == other.menu &&
        isFullyPrepared == other.isFullyPrepared &&
        preparationPercentage == other.preparationPercentage &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetOrderPreparationStatusForDelivery200ResponseData')
          ..add('orderId', orderId)
          ..add('date', date)
          ..add('menu', menu)
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('preparationPercentage', preparationPercentage)
          ..add('status', status))
        .toString();
  }
}

class GetOrderPreparationStatusForDelivery200ResponseDataBuilder
    implements
        Builder<GetOrderPreparationStatusForDelivery200ResponseData,
            GetOrderPreparationStatusForDelivery200ResponseDataBuilder> {
  _$GetOrderPreparationStatusForDelivery200ResponseData? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

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

  GetOrderPreparationStatusForDelivery200ResponseDataBuilder() {
    GetOrderPreparationStatusForDelivery200ResponseData._defaults(this);
  }

  GetOrderPreparationStatusForDelivery200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _date = $v.date;
      _menu = $v.menu;
      _isFullyPrepared = $v.isFullyPrepared;
      _preparationPercentage = $v.preparationPercentage;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrderPreparationStatusForDelivery200ResponseData other) {
    _$v = other as _$GetOrderPreparationStatusForDelivery200ResponseData;
  }

  @override
  void update(
      void Function(GetOrderPreparationStatusForDelivery200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderPreparationStatusForDelivery200ResponseData build() => _build();

  _$GetOrderPreparationStatusForDelivery200ResponseData _build() {
    final _$result = _$v ??
        _$GetOrderPreparationStatusForDelivery200ResponseData._(
          orderId: orderId,
          date: date,
          menu: menu,
          isFullyPrepared: isFullyPrepared,
          preparationPercentage: preparationPercentage,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
