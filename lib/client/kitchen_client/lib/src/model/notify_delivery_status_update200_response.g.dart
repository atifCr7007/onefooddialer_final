// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_delivery_status_update200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotifyDeliveryStatusUpdate200Response
    extends NotifyDeliveryStatusUpdate200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$NotifyDeliveryStatusUpdate200Response([
    void Function(NotifyDeliveryStatusUpdate200ResponseBuilder)? updates,
  ]) => (NotifyDeliveryStatusUpdate200ResponseBuilder()..update(updates))
      ._build();

  _$NotifyDeliveryStatusUpdate200Response._({this.success, this.message})
    : super._();
  @override
  NotifyDeliveryStatusUpdate200Response rebuild(
    void Function(NotifyDeliveryStatusUpdate200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NotifyDeliveryStatusUpdate200ResponseBuilder toBuilder() =>
      NotifyDeliveryStatusUpdate200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotifyDeliveryStatusUpdate200Response &&
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
    return (newBuiltValueToStringHelper(
            r'NotifyDeliveryStatusUpdate200Response',
          )
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class NotifyDeliveryStatusUpdate200ResponseBuilder
    implements
        Builder<
          NotifyDeliveryStatusUpdate200Response,
          NotifyDeliveryStatusUpdate200ResponseBuilder
        > {
  _$NotifyDeliveryStatusUpdate200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  NotifyDeliveryStatusUpdate200ResponseBuilder() {
    NotifyDeliveryStatusUpdate200Response._defaults(this);
  }

  NotifyDeliveryStatusUpdate200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotifyDeliveryStatusUpdate200Response other) {
    _$v = other as _$NotifyDeliveryStatusUpdate200Response;
  }

  @override
  void update(
    void Function(NotifyDeliveryStatusUpdate200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NotifyDeliveryStatusUpdate200Response build() => _build();

  _$NotifyDeliveryStatusUpdate200Response _build() {
    final _$result =
        _$v ??
        _$NotifyDeliveryStatusUpdate200Response._(
          success: success,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
