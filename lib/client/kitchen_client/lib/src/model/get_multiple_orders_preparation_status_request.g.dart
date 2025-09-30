// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multiple_orders_preparation_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMultipleOrdersPreparationStatusRequest
    extends GetMultipleOrdersPreparationStatusRequest {
  @override
  final BuiltList<String> orderIds;
  @override
  final Date? date;
  @override
  final String? menu;

  factory _$GetMultipleOrdersPreparationStatusRequest([
    void Function(GetMultipleOrdersPreparationStatusRequestBuilder)? updates,
  ]) => (GetMultipleOrdersPreparationStatusRequestBuilder()..update(updates))
      ._build();

  _$GetMultipleOrdersPreparationStatusRequest._({
    required this.orderIds,
    this.date,
    this.menu,
  }) : super._();
  @override
  GetMultipleOrdersPreparationStatusRequest rebuild(
    void Function(GetMultipleOrdersPreparationStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetMultipleOrdersPreparationStatusRequestBuilder toBuilder() =>
      GetMultipleOrdersPreparationStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMultipleOrdersPreparationStatusRequest &&
        orderIds == other.orderIds &&
        date == other.date &&
        menu == other.menu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderIds.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, menu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetMultipleOrdersPreparationStatusRequest',
          )
          ..add('orderIds', orderIds)
          ..add('date', date)
          ..add('menu', menu))
        .toString();
  }
}

class GetMultipleOrdersPreparationStatusRequestBuilder
    implements
        Builder<
          GetMultipleOrdersPreparationStatusRequest,
          GetMultipleOrdersPreparationStatusRequestBuilder
        > {
  _$GetMultipleOrdersPreparationStatusRequest? _$v;

  ListBuilder<String>? _orderIds;
  ListBuilder<String> get orderIds =>
      _$this._orderIds ??= ListBuilder<String>();
  set orderIds(ListBuilder<String>? orderIds) => _$this._orderIds = orderIds;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _menu;
  String? get menu => _$this._menu;
  set menu(String? menu) => _$this._menu = menu;

  GetMultipleOrdersPreparationStatusRequestBuilder() {
    GetMultipleOrdersPreparationStatusRequest._defaults(this);
  }

  GetMultipleOrdersPreparationStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderIds = $v.orderIds.toBuilder();
      _date = $v.date;
      _menu = $v.menu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMultipleOrdersPreparationStatusRequest other) {
    _$v = other as _$GetMultipleOrdersPreparationStatusRequest;
  }

  @override
  void update(
    void Function(GetMultipleOrdersPreparationStatusRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetMultipleOrdersPreparationStatusRequest build() => _build();

  _$GetMultipleOrdersPreparationStatusRequest _build() {
    _$GetMultipleOrdersPreparationStatusRequest _$result;
    try {
      _$result =
          _$v ??
          _$GetMultipleOrdersPreparationStatusRequest._(
            orderIds: orderIds.build(),
            date: date,
            menu: menu,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderIds';
        orderIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetMultipleOrdersPreparationStatusRequest',
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
