// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_delivery_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeliveryStatus200Response
    extends UpdateDeliveryStatus200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$UpdateDeliveryStatus200Response([
    void Function(UpdateDeliveryStatus200ResponseBuilder)? updates,
  ]) => (UpdateDeliveryStatus200ResponseBuilder()..update(updates))._build();

  _$UpdateDeliveryStatus200Response._({this.success, this.message}) : super._();
  @override
  UpdateDeliveryStatus200Response rebuild(
    void Function(UpdateDeliveryStatus200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateDeliveryStatus200ResponseBuilder toBuilder() =>
      UpdateDeliveryStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeliveryStatus200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateDeliveryStatus200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class UpdateDeliveryStatus200ResponseBuilder
    implements
        Builder<
          UpdateDeliveryStatus200Response,
          UpdateDeliveryStatus200ResponseBuilder
        > {
  _$UpdateDeliveryStatus200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  UpdateDeliveryStatus200ResponseBuilder() {
    UpdateDeliveryStatus200Response._defaults(this);
  }

  UpdateDeliveryStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeliveryStatus200Response other) {
    _$v = other as _$UpdateDeliveryStatus200Response;
  }

  @override
  void update(void Function(UpdateDeliveryStatus200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeliveryStatus200Response build() => _build();

  _$UpdateDeliveryStatus200Response _build() {
    final _$result =
        _$v ??
        _$UpdateDeliveryStatus200Response._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
