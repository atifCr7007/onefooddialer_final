// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_payment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefundPaymentResponse extends RefundPaymentResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final RefundPaymentResponseData? data;

  factory _$RefundPaymentResponse(
          [void Function(RefundPaymentResponseBuilder)? updates]) =>
      (RefundPaymentResponseBuilder()..update(updates))._build();

  _$RefundPaymentResponse._({this.success, this.message, this.data})
      : super._();
  @override
  RefundPaymentResponse rebuild(
          void Function(RefundPaymentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefundPaymentResponseBuilder toBuilder() =>
      RefundPaymentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefundPaymentResponse &&
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
    return (newBuiltValueToStringHelper(r'RefundPaymentResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class RefundPaymentResponseBuilder
    implements Builder<RefundPaymentResponse, RefundPaymentResponseBuilder> {
  _$RefundPaymentResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  RefundPaymentResponseDataBuilder? _data;
  RefundPaymentResponseDataBuilder get data =>
      _$this._data ??= RefundPaymentResponseDataBuilder();
  set data(RefundPaymentResponseDataBuilder? data) => _$this._data = data;

  RefundPaymentResponseBuilder() {
    RefundPaymentResponse._defaults(this);
  }

  RefundPaymentResponseBuilder get _$this {
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
  void replace(RefundPaymentResponse other) {
    _$v = other as _$RefundPaymentResponse;
  }

  @override
  void update(void Function(RefundPaymentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefundPaymentResponse build() => _build();

  _$RefundPaymentResponse _build() {
    _$RefundPaymentResponse _$result;
    try {
      _$result = _$v ??
          _$RefundPaymentResponse._(
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
            r'RefundPaymentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
