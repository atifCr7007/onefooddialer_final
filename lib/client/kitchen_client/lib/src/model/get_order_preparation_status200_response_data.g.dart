// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_preparation_status200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderPreparationStatus200ResponseData
    extends GetOrderPreparationStatus200ResponseData {
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
  final BuiltList<KitchenPreparationResource>? items;

  factory _$GetOrderPreparationStatus200ResponseData(
          [void Function(GetOrderPreparationStatus200ResponseDataBuilder)?
              updates]) =>
      (GetOrderPreparationStatus200ResponseDataBuilder()..update(updates))
          ._build();

  _$GetOrderPreparationStatus200ResponseData._(
      {this.orderId,
      this.date,
      this.menu,
      this.isFullyPrepared,
      this.preparationPercentage,
      this.items})
      : super._();
  @override
  GetOrderPreparationStatus200ResponseData rebuild(
          void Function(GetOrderPreparationStatus200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrderPreparationStatus200ResponseDataBuilder toBuilder() =>
      GetOrderPreparationStatus200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderPreparationStatus200ResponseData &&
        orderId == other.orderId &&
        date == other.date &&
        menu == other.menu &&
        isFullyPrepared == other.isFullyPrepared &&
        preparationPercentage == other.preparationPercentage &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, isFullyPrepared.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetOrderPreparationStatus200ResponseData')
          ..add('orderId', orderId)
          ..add('date', date)
          ..add('menu', menu)
          ..add('isFullyPrepared', isFullyPrepared)
          ..add('preparationPercentage', preparationPercentage)
          ..add('items', items))
        .toString();
  }
}

class GetOrderPreparationStatus200ResponseDataBuilder
    implements
        Builder<GetOrderPreparationStatus200ResponseData,
            GetOrderPreparationStatus200ResponseDataBuilder> {
  _$GetOrderPreparationStatus200ResponseData? _$v;

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

  ListBuilder<KitchenPreparationResource>? _items;
  ListBuilder<KitchenPreparationResource> get items =>
      _$this._items ??= ListBuilder<KitchenPreparationResource>();
  set items(ListBuilder<KitchenPreparationResource>? items) =>
      _$this._items = items;

  GetOrderPreparationStatus200ResponseDataBuilder() {
    GetOrderPreparationStatus200ResponseData._defaults(this);
  }

  GetOrderPreparationStatus200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _date = $v.date;
      _menu = $v.menu;
      _isFullyPrepared = $v.isFullyPrepared;
      _preparationPercentage = $v.preparationPercentage;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrderPreparationStatus200ResponseData other) {
    _$v = other as _$GetOrderPreparationStatus200ResponseData;
  }

  @override
  void update(
      void Function(GetOrderPreparationStatus200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderPreparationStatus200ResponseData build() => _build();

  _$GetOrderPreparationStatus200ResponseData _build() {
    _$GetOrderPreparationStatus200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetOrderPreparationStatus200ResponseData._(
            orderId: orderId,
            date: date,
            menu: menu,
            isFullyPrepared: isFullyPrepared,
            preparationPercentage: preparationPercentage,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetOrderPreparationStatus200ResponseData',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
