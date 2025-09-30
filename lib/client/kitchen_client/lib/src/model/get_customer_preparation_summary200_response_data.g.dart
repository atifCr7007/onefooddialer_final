// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_preparation_summary200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerPreparationSummary200ResponseData
    extends GetCustomerPreparationSummary200ResponseData {
  @override
  final String? customerId;
  @override
  final Date? date;
  @override
  final String? menu;
  @override
  final int? totalOrders;
  @override
  final int? preparedOrders;
  @override
  final double? preparationPercentage;
  @override
  final BuiltList<GetCustomerPreparationSummary200ResponseDataOrdersInner>?
  orders;

  factory _$GetCustomerPreparationSummary200ResponseData([
    void Function(GetCustomerPreparationSummary200ResponseDataBuilder)? updates,
  ]) => (GetCustomerPreparationSummary200ResponseDataBuilder()..update(updates))
      ._build();

  _$GetCustomerPreparationSummary200ResponseData._({
    this.customerId,
    this.date,
    this.menu,
    this.totalOrders,
    this.preparedOrders,
    this.preparationPercentage,
    this.orders,
  }) : super._();
  @override
  GetCustomerPreparationSummary200ResponseData rebuild(
    void Function(GetCustomerPreparationSummary200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomerPreparationSummary200ResponseDataBuilder toBuilder() =>
      GetCustomerPreparationSummary200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerPreparationSummary200ResponseData &&
        customerId == other.customerId &&
        date == other.date &&
        menu == other.menu &&
        totalOrders == other.totalOrders &&
        preparedOrders == other.preparedOrders &&
        preparationPercentage == other.preparationPercentage &&
        orders == other.orders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jc(_$hash, totalOrders.hashCode);
    _$hash = $jc(_$hash, preparedOrders.hashCode);
    _$hash = $jc(_$hash, preparationPercentage.hashCode);
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetCustomerPreparationSummary200ResponseData',
          )
          ..add('customerId', customerId)
          ..add('date', date)
          ..add('menu', menu)
          ..add('totalOrders', totalOrders)
          ..add('preparedOrders', preparedOrders)
          ..add('preparationPercentage', preparationPercentage)
          ..add('orders', orders))
        .toString();
  }
}

class GetCustomerPreparationSummary200ResponseDataBuilder
    implements
        Builder<
          GetCustomerPreparationSummary200ResponseData,
          GetCustomerPreparationSummary200ResponseDataBuilder
        > {
  _$GetCustomerPreparationSummary200ResponseData? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

  int? _totalOrders;
  int? get totalOrders => _$this._totalOrders;
  set totalOrders(int? totalOrders) => _$this._totalOrders = totalOrders;

  int? _preparedOrders;
  int? get preparedOrders => _$this._preparedOrders;
  set preparedOrders(int? preparedOrders) =>
      _$this._preparedOrders = preparedOrders;

  double? _preparationPercentage;
  double? get preparationPercentage => _$this._preparationPercentage;
  set preparationPercentage(double? preparationPercentage) =>
      _$this._preparationPercentage = preparationPercentage;

  ListBuilder<GetCustomerPreparationSummary200ResponseDataOrdersInner>? _orders;
  ListBuilder<GetCustomerPreparationSummary200ResponseDataOrdersInner>
  get orders => _$this._orders ??=
      ListBuilder<GetCustomerPreparationSummary200ResponseDataOrdersInner>();
  set orders(
    ListBuilder<GetCustomerPreparationSummary200ResponseDataOrdersInner>?
    orders,
  ) => _$this._orders = orders;

  GetCustomerPreparationSummary200ResponseDataBuilder() {
    GetCustomerPreparationSummary200ResponseData._defaults(this);
  }

  GetCustomerPreparationSummary200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _date = $v.date;
      _menu = $v.menu;
      _totalOrders = $v.totalOrders;
      _preparedOrders = $v.preparedOrders;
      _preparationPercentage = $v.preparationPercentage;
      _orders = $v.orders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerPreparationSummary200ResponseData other) {
    _$v = other as _$GetCustomerPreparationSummary200ResponseData;
  }

  @override
  void update(
    void Function(GetCustomerPreparationSummary200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerPreparationSummary200ResponseData build() => _build();

  _$GetCustomerPreparationSummary200ResponseData _build() {
    _$GetCustomerPreparationSummary200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomerPreparationSummary200ResponseData._(
            customerId: customerId,
            date: date,
            menu: menu,
            totalOrders: totalOrders,
            preparedOrders: preparedOrders,
            preparationPercentage: preparationPercentage,
            orders: _orders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        _orders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetCustomerPreparationSummary200ResponseData',
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
