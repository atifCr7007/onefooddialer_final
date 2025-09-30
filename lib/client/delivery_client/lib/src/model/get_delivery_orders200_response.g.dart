// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeliveryOrders200Response extends GetDeliveryOrders200Response {
  @override
  final BuiltList<Order>? data;

  factory _$GetDeliveryOrders200Response([
    void Function(GetDeliveryOrders200ResponseBuilder)? updates,
  ]) => (GetDeliveryOrders200ResponseBuilder()..update(updates))._build();

  _$GetDeliveryOrders200Response._({this.data}) : super._();
  @override
  GetDeliveryOrders200Response rebuild(
    void Function(GetDeliveryOrders200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetDeliveryOrders200ResponseBuilder toBuilder() =>
      GetDeliveryOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeliveryOrders200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetDeliveryOrders200Response',
    )..add('data', data)).toString();
  }
}

class GetDeliveryOrders200ResponseBuilder
    implements
        Builder<
          GetDeliveryOrders200Response,
          GetDeliveryOrders200ResponseBuilder
        > {
  _$GetDeliveryOrders200Response? _$v;

  ListBuilder<Order>? _data;
  ListBuilder<Order> get data => _$this._data ??= ListBuilder<Order>();
  set data(ListBuilder<Order>? data) => _$this._data = data;

  GetDeliveryOrders200ResponseBuilder() {
    GetDeliveryOrders200Response._defaults(this);
  }

  GetDeliveryOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeliveryOrders200Response other) {
    _$v = other as _$GetDeliveryOrders200Response;
  }

  @override
  void update(void Function(GetDeliveryOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeliveryOrders200Response build() => _build();

  _$GetDeliveryOrders200Response _build() {
    _$GetDeliveryOrders200Response _$result;
    try {
      _$result = _$v ?? _$GetDeliveryOrders200Response._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetDeliveryOrders200Response',
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
