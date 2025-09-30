// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multiple_orders_preparation_status200_response_data_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMultipleOrdersPreparationStatus200ResponseDataValue
    extends GetMultipleOrdersPreparationStatus200ResponseDataValue {
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

  factory _$GetMultipleOrdersPreparationStatus200ResponseDataValue(
          [void Function(
                  GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder)?
              updates]) =>
      (GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder()
            ..update(updates))
          ._build();

  _$GetMultipleOrdersPreparationStatus200ResponseDataValue._(
      {this.date,
      this.menu,
      this.isFullyPrepared,
      this.preparationPercentage,
      this.status})
      : super._();
  @override
  GetMultipleOrdersPreparationStatus200ResponseDataValue rebuild(
          void Function(
                  GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder toBuilder() =>
      GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMultipleOrdersPreparationStatus200ResponseDataValue &&
        date == other.date &&
        menu == other.menu &&
        isFullyPrepared == other.isFullyPrepared &&
        preparationPercentage == other.preparationPercentage &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
            r'GetMultipleOrdersPreparationStatus200ResponseDataValue')
          ..add('date', date)
          ..add('menu', menu)
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('preparationPercentage', preparationPercentage)
          ..add('status', status))
        .toString();
  }
}

class GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder
    implements
        Builder<GetMultipleOrdersPreparationStatus200ResponseDataValue,
            GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder> {
  _$GetMultipleOrdersPreparationStatus200ResponseDataValue? _$v;

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

  GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder() {
    GetMultipleOrdersPreparationStatus200ResponseDataValue._defaults(this);
  }

  GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(GetMultipleOrdersPreparationStatus200ResponseDataValue other) {
    _$v = other as _$GetMultipleOrdersPreparationStatus200ResponseDataValue;
  }

  @override
  void update(
      void Function(
              GetMultipleOrdersPreparationStatus200ResponseDataValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMultipleOrdersPreparationStatus200ResponseDataValue build() => _build();

  _$GetMultipleOrdersPreparationStatus200ResponseDataValue _build() {
    final _$result = _$v ??
        _$GetMultipleOrdersPreparationStatus200ResponseDataValue._(
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
