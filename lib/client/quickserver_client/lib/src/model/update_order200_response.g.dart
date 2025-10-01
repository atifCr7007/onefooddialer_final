// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOrder200Response extends UpdateOrder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Order? data;

  factory _$UpdateOrder200Response([
    void Function(UpdateOrder200ResponseBuilder)? updates,
  ]) => (UpdateOrder200ResponseBuilder()..update(updates))._build();

  _$UpdateOrder200Response._({this.success, this.message, this.data})
    : super._();
  @override
  UpdateOrder200Response rebuild(
    void Function(UpdateOrder200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateOrder200ResponseBuilder toBuilder() =>
      UpdateOrder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOrder200Response &&
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
    return (newBuiltValueToStringHelper(r'UpdateOrder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateOrder200ResponseBuilder
    implements Builder<UpdateOrder200Response, UpdateOrder200ResponseBuilder> {
  _$UpdateOrder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OrderBuilder? _data;
  OrderBuilder get data => _$this._data ??= OrderBuilder();
  set data(OrderBuilder? data) => _$this._data = data;

  UpdateOrder200ResponseBuilder() {
    UpdateOrder200Response._defaults(this);
  }

  UpdateOrder200ResponseBuilder get _$this {
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
  void replace(UpdateOrder200Response other) {
    _$v = other as _$UpdateOrder200Response;
  }

  @override
  void update(void Function(UpdateOrder200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOrder200Response build() => _build();

  _$UpdateOrder200Response _build() {
    _$UpdateOrder200Response _$result;
    try {
      _$result =
          _$v ??
          _$UpdateOrder200Response._(
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
          r'UpdateOrder200Response',
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
