// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_order_id_items_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrdersOrderIdItemsGet200ResponseStatusEnum
_$ordersOrderIdItemsGet200ResponseStatusEnum_success =
    const OrdersOrderIdItemsGet200ResponseStatusEnum._('success');
const OrdersOrderIdItemsGet200ResponseStatusEnum
_$ordersOrderIdItemsGet200ResponseStatusEnum_unknownDefaultOpenApi =
    const OrdersOrderIdItemsGet200ResponseStatusEnum._('unknownDefaultOpenApi');

OrdersOrderIdItemsGet200ResponseStatusEnum
_$ordersOrderIdItemsGet200ResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$ordersOrderIdItemsGet200ResponseStatusEnum_success;
    case 'unknownDefaultOpenApi':
      return _$ordersOrderIdItemsGet200ResponseStatusEnum_unknownDefaultOpenApi;
    default:
      return _$ordersOrderIdItemsGet200ResponseStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrdersOrderIdItemsGet200ResponseStatusEnum>
_$ordersOrderIdItemsGet200ResponseStatusEnumValues =
    BuiltSet<OrdersOrderIdItemsGet200ResponseStatusEnum>(
      const <OrdersOrderIdItemsGet200ResponseStatusEnum>[
        _$ordersOrderIdItemsGet200ResponseStatusEnum_success,
        _$ordersOrderIdItemsGet200ResponseStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<OrdersOrderIdItemsGet200ResponseStatusEnum>
_$ordersOrderIdItemsGet200ResponseStatusEnumSerializer =
    _$OrdersOrderIdItemsGet200ResponseStatusEnumSerializer();

class _$OrdersOrderIdItemsGet200ResponseStatusEnumSerializer
    implements PrimitiveSerializer<OrdersOrderIdItemsGet200ResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OrdersOrderIdItemsGet200ResponseStatusEnum,
  ];
  @override
  final String wireName = 'OrdersOrderIdItemsGet200ResponseStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrdersOrderIdItemsGet200ResponseStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrdersOrderIdItemsGet200ResponseStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrdersOrderIdItemsGet200ResponseStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrdersOrderIdItemsGet200Response
    extends OrdersOrderIdItemsGet200Response {
  @override
  final OrdersOrderIdItemsGet200ResponseStatusEnum? status;
  @override
  final OrdersOrderIdItemsGet200ResponseData? data;

  factory _$OrdersOrderIdItemsGet200Response([
    void Function(OrdersOrderIdItemsGet200ResponseBuilder)? updates,
  ]) => (OrdersOrderIdItemsGet200ResponseBuilder()..update(updates))._build();

  _$OrdersOrderIdItemsGet200Response._({this.status, this.data}) : super._();
  @override
  OrdersOrderIdItemsGet200Response rebuild(
    void Function(OrdersOrderIdItemsGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrdersOrderIdItemsGet200ResponseBuilder toBuilder() =>
      OrdersOrderIdItemsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersOrderIdItemsGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersOrderIdItemsGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class OrdersOrderIdItemsGet200ResponseBuilder
    implements
        Builder<
          OrdersOrderIdItemsGet200Response,
          OrdersOrderIdItemsGet200ResponseBuilder
        > {
  _$OrdersOrderIdItemsGet200Response? _$v;

  OrdersOrderIdItemsGet200ResponseStatusEnum? _status;
  OrdersOrderIdItemsGet200ResponseStatusEnum? get status => _$this._status;
  set status(OrdersOrderIdItemsGet200ResponseStatusEnum? status) =>
      _$this._status = status;

  OrdersOrderIdItemsGet200ResponseDataBuilder? _data;
  OrdersOrderIdItemsGet200ResponseDataBuilder get data =>
      _$this._data ??= OrdersOrderIdItemsGet200ResponseDataBuilder();
  set data(OrdersOrderIdItemsGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  OrdersOrderIdItemsGet200ResponseBuilder() {
    OrdersOrderIdItemsGet200Response._defaults(this);
  }

  OrdersOrderIdItemsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersOrderIdItemsGet200Response other) {
    _$v = other as _$OrdersOrderIdItemsGet200Response;
  }

  @override
  void update(void Function(OrdersOrderIdItemsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersOrderIdItemsGet200Response build() => _build();

  _$OrdersOrderIdItemsGet200Response _build() {
    _$OrdersOrderIdItemsGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$OrdersOrderIdItemsGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrdersOrderIdItemsGet200Response',
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
