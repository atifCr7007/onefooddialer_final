// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_order_id_items_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersOrderIdItemsGet200ResponseData
    extends OrdersOrderIdItemsGet200ResponseData {
  @override
  final BuiltList<OrderItem>? items;

  factory _$OrdersOrderIdItemsGet200ResponseData([
    void Function(OrdersOrderIdItemsGet200ResponseDataBuilder)? updates,
  ]) =>
      (OrdersOrderIdItemsGet200ResponseDataBuilder()..update(updates))._build();

  _$OrdersOrderIdItemsGet200ResponseData._({this.items}) : super._();
  @override
  OrdersOrderIdItemsGet200ResponseData rebuild(
    void Function(OrdersOrderIdItemsGet200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrdersOrderIdItemsGet200ResponseDataBuilder toBuilder() =>
      OrdersOrderIdItemsGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersOrderIdItemsGet200ResponseData &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'OrdersOrderIdItemsGet200ResponseData',
    )..add('items', items)).toString();
  }
}

class OrdersOrderIdItemsGet200ResponseDataBuilder
    implements
        Builder<
          OrdersOrderIdItemsGet200ResponseData,
          OrdersOrderIdItemsGet200ResponseDataBuilder
        > {
  _$OrdersOrderIdItemsGet200ResponseData? _$v;

  ListBuilder<OrderItem>? _items;
  ListBuilder<OrderItem> get items =>
      _$this._items ??= ListBuilder<OrderItem>();
  set items(ListBuilder<OrderItem>? items) => _$this._items = items;

  OrdersOrderIdItemsGet200ResponseDataBuilder() {
    OrdersOrderIdItemsGet200ResponseData._defaults(this);
  }

  OrdersOrderIdItemsGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersOrderIdItemsGet200ResponseData other) {
    _$v = other as _$OrdersOrderIdItemsGet200ResponseData;
  }

  @override
  void update(
    void Function(OrdersOrderIdItemsGet200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  OrdersOrderIdItemsGet200ResponseData build() => _build();

  _$OrdersOrderIdItemsGet200ResponseData _build() {
    _$OrdersOrderIdItemsGet200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$OrdersOrderIdItemsGet200ResponseData._(items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrdersOrderIdItemsGet200ResponseData',
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
