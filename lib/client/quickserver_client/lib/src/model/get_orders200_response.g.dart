// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrders200Response extends GetOrders200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<Order>? data;

  factory _$GetOrders200Response([
    void Function(GetOrders200ResponseBuilder)? updates,
  ]) => (GetOrders200ResponseBuilder()..update(updates))._build();

  _$GetOrders200Response._({this.success, this.message, this.data}) : super._();
  @override
  GetOrders200Response rebuild(
    void Function(GetOrders200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetOrders200ResponseBuilder toBuilder() =>
      GetOrders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrders200Response &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetOrders200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetOrders200ResponseBuilder
    implements Builder<GetOrders200Response, GetOrders200ResponseBuilder> {
  _$GetOrders200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Order>? _data;
  ListBuilder<Order> get data => _$this._data ??= ListBuilder<Order>();
  set data(ListBuilder<Order>? data) => _$this._data = data;

  GetOrders200ResponseBuilder() {
    GetOrders200Response._defaults(this);
  }

  GetOrders200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrders200Response other) {
    _$v = other as _$GetOrders200Response;
  }

  @override
  void update(void Function(GetOrders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrders200Response build() => _build();

  _$GetOrders200Response _build() {
    _$GetOrders200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetOrders200Response._(
            success: success,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetOrders200Response',
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
