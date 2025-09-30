// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_preparation_summary200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPreparationSummary200ResponseData
    extends GetPreparationSummary200ResponseData {
  @override
  final Date? date;
  @override
  final String? menu;
  @override
  final int? kitchenId;
  @override
  final int? totalOrders;
  @override
  final int? totalPrepared;
  @override
  final int? remaining;
  @override
  final double? preparationPercentage;
  @override
  final bool? isFullyPrepared;

  factory _$GetPreparationSummary200ResponseData(
          [void Function(GetPreparationSummary200ResponseDataBuilder)?
              updates]) =>
      (GetPreparationSummary200ResponseDataBuilder()..update(updates))._build();

  _$GetPreparationSummary200ResponseData._(
      {this.date,
      this.menu,
      this.kitchenId,
      this.totalOrders,
      this.totalPrepared,
      this.remaining,
      this.preparationPercentage,
      this.isFullyPrepared})
      : super._();
  @override
  GetPreparationSummary200ResponseData rebuild(
          void Function(GetPreparationSummary200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPreparationSummary200ResponseDataBuilder toBuilder() =>
      GetPreparationSummary200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPreparationSummary200ResponseData &&
        date == other.date &&
        menu == other.menu &&
        kitchenId == other.kitchenId &&
        totalOrders == other.totalOrders &&
        totalPrepared == other.totalPrepared &&
        remaining == other.remaining &&
        preparationPercentage == other.preparationPercentage &&
        isFullyPrepared == other.isFullyPrepared;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, kitchenId.hashCode);
    _$hash = $jc(_$hash, totalOrders.hashCode);
    _$hash = $jc(_$hash, totalPrepared.hashCode);
    _$hash = $jc(_$hash, remaining.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetPreparationSummary200ResponseData')
          ..add('date', date)
          ..add('menu', menu)
          ..add('kitchenId', kitchenId)
          ..add('totalOrders', totalOrders)
          ..add('totalPrepared', totalPrepared)
          ..add('remaining', remaining)
          ..add('preparationPercentage', preparationPercentage)
          ..add('isFullyPrepared', isFullyPrepared))
        .toString();
  }
}

class GetPreparationSummary200ResponseDataBuilder
    implements
        Builder<GetPreparationSummary200ResponseData,
            GetPreparationSummary200ResponseDataBuilder> {
  _$GetPreparationSummary200ResponseData? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

  int? _kitchenId;
  int? get kitchenId => _$this._kitchenId;
  set kitchenId(int? kitchenId) => _$this._kitchenId = kitchenId;

  int? _totalOrders;
  int? get totalOrders => _$this._totalOrders;
  set totalOrders(int? totalOrders) => _$this._totalOrders = totalOrders;

  int? _totalPrepared;
  int? get totalPrepared => _$this._totalPrepared;
  set totalPrepared(int? totalPrepared) =>
      _$this._totalPrepared = totalPrepared;

  int? _remaining;
  int? get remaining => _$this._remaining;
  set remaining(int? remaining) => _$this._remaining = remaining;

  double? _preparationPercentage;
  double? get preparationPercentage => _$this._preparationPercentage;
  set preparationPercentage(double? preparationPercentage) =>
      _$this._preparationPercentage = preparationPercentage;

  bool? _isFullyPrepared;
  bool? get isFullyPrepared => _$this._isFullyPrepared;
  set isFullyPrepared(bool? isFullyPrepared) =>
      _$this._isFullyPrepared = isFullyPrepared;

  GetPreparationSummary200ResponseDataBuilder() {
    GetPreparationSummary200ResponseData._defaults(this);
  }

  GetPreparationSummary200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _menu = $v.menu;
      _kitchenId = $v.kitchenId;
      _totalOrders = $v.totalOrders;
      _totalPrepared = $v.totalPrepared;
      _remaining = $v.remaining;
      _preparationPercentage = $v.preparationPercentage;
      _isFullyPrepared = $v.isFullyPrepared;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPreparationSummary200ResponseData other) {
    _$v = other as _$GetPreparationSummary200ResponseData;
  }

  @override
  void update(
      void Function(GetPreparationSummary200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPreparationSummary200ResponseData build() => _build();

  _$GetPreparationSummary200ResponseData _build() {
    final _$result = _$v ??
        _$GetPreparationSummary200ResponseData._(
          date: date,
          menu: menu,
          kitchenId: kitchenId,
          totalOrders: totalOrders,
          totalPrepared: totalPrepared,
          remaining: remaining,
          preparationPercentage: preparationPercentage,
          isFullyPrepared: isFullyPrepared,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
