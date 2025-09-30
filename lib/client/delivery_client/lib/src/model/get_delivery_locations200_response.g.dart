// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_delivery_locations200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDeliveryLocations200Response
    extends GetDeliveryLocations200Response {
  @override
  final BuiltList<DeliveryLocation>? data;

  factory _$GetDeliveryLocations200Response([
    void Function(GetDeliveryLocations200ResponseBuilder)? updates,
  ]) => (GetDeliveryLocations200ResponseBuilder()..update(updates))._build();

  _$GetDeliveryLocations200Response._({this.data}) : super._();
  @override
  GetDeliveryLocations200Response rebuild(
    void Function(GetDeliveryLocations200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetDeliveryLocations200ResponseBuilder toBuilder() =>
      GetDeliveryLocations200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDeliveryLocations200Response && data == other.data;
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
      r'GetDeliveryLocations200Response',
    )..add('data', data)).toString();
  }
}

class GetDeliveryLocations200ResponseBuilder
    implements
        Builder<
          GetDeliveryLocations200Response,
          GetDeliveryLocations200ResponseBuilder
        > {
  _$GetDeliveryLocations200Response? _$v;

  ListBuilder<DeliveryLocation>? _data;
  ListBuilder<DeliveryLocation> get data =>
      _$this._data ??= ListBuilder<DeliveryLocation>();
  set data(ListBuilder<DeliveryLocation>? data) => _$this._data = data;

  GetDeliveryLocations200ResponseBuilder() {
    GetDeliveryLocations200Response._defaults(this);
  }

  GetDeliveryLocations200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDeliveryLocations200Response other) {
    _$v = other as _$GetDeliveryLocations200Response;
  }

  @override
  void update(void Function(GetDeliveryLocations200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDeliveryLocations200Response build() => _build();

  _$GetDeliveryLocations200Response _build() {
    _$GetDeliveryLocations200Response _$result;
    try {
      _$result =
          _$v ?? _$GetDeliveryLocations200Response._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetDeliveryLocations200Response',
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
