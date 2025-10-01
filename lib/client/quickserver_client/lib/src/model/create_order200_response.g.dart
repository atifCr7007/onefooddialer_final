// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrder200Response extends CreateOrder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Order? data;

  factory _$CreateOrder200Response(
          [void Function(CreateOrder200ResponseBuilder)? updates]) =>
      (CreateOrder200ResponseBuilder()..update(updates))._build();

  _$CreateOrder200Response._({this.success, this.message, this.data})
      : super._();
  @override
  CreateOrder200Response rebuild(
          void Function(CreateOrder200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOrder200ResponseBuilder toBuilder() =>
      CreateOrder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrder200Response &&
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
    return (newBuiltValueToStringHelper(r'CreateOrder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateOrder200ResponseBuilder
    implements Builder<CreateOrder200Response, CreateOrder200ResponseBuilder> {
  _$CreateOrder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OrderBuilder? _data;
  OrderBuilder get data => _$this._data ??= OrderBuilder();
  set data(OrderBuilder? data) => _$this._data = data;

  CreateOrder200ResponseBuilder() {
    CreateOrder200Response._defaults(this);
  }

  CreateOrder200ResponseBuilder get _$this {
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
  void replace(CreateOrder200Response other) {
    _$v = other as _$CreateOrder200Response;
  }

  @override
  void update(void Function(CreateOrder200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrder200Response build() => _build();

  _$CreateOrder200Response _build() {
    _$CreateOrder200Response _$result;
    try {
      _$result = _$v ??
          _$CreateOrder200Response._(
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
            r'CreateOrder200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
