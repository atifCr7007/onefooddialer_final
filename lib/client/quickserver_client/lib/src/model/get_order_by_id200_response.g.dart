// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderById200Response extends GetOrderById200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Order? data;

  factory _$GetOrderById200Response(
          [void Function(GetOrderById200ResponseBuilder)? updates]) =>
      (GetOrderById200ResponseBuilder()..update(updates))._build();

  _$GetOrderById200Response._({this.success, this.message, this.data})
      : super._();
  @override
  GetOrderById200Response rebuild(
          void Function(GetOrderById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrderById200ResponseBuilder toBuilder() =>
      GetOrderById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetOrderById200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetOrderById200ResponseBuilder
    implements
        Builder<GetOrderById200Response, GetOrderById200ResponseBuilder> {
  _$GetOrderById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OrderBuilder? _data;
  OrderBuilder get data => _$this._data ??= OrderBuilder();
  set data(OrderBuilder? data) => _$this._data = data;

  GetOrderById200ResponseBuilder() {
    GetOrderById200Response._defaults(this);
  }

  GetOrderById200ResponseBuilder get _$this {
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
  void replace(GetOrderById200Response other) {
    _$v = other as _$GetOrderById200Response;
  }

  @override
  void update(void Function(GetOrderById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderById200Response build() => _build();

  _$GetOrderById200Response _build() {
    _$GetOrderById200Response _$result;
    try {
      _$result = _$v ??
          _$GetOrderById200Response._(
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
            r'GetOrderById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
