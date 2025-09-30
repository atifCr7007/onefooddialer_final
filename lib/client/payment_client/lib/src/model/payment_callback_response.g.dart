// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_callback_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentCallbackResponse extends PaymentCallbackResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final PaymentCallbackResponseData? data;

  factory _$PaymentCallbackResponse([
    void Function(PaymentCallbackResponseBuilder)? updates,
  ]) => (PaymentCallbackResponseBuilder()..update(updates))._build();

  _$PaymentCallbackResponse._({this.success, this.message, this.data})
    : super._();
  @override
  PaymentCallbackResponse rebuild(
    void Function(PaymentCallbackResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentCallbackResponseBuilder toBuilder() =>
      PaymentCallbackResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentCallbackResponse &&
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
    return (newBuiltValueToStringHelper(r'PaymentCallbackResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class PaymentCallbackResponseBuilder
    implements
        Builder<PaymentCallbackResponse, PaymentCallbackResponseBuilder> {
  _$PaymentCallbackResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  PaymentCallbackResponseDataBuilder? _data;
  PaymentCallbackResponseDataBuilder get data =>
      _$this._data ??= PaymentCallbackResponseDataBuilder();
  set data(PaymentCallbackResponseDataBuilder? data) => _$this._data = data;

  PaymentCallbackResponseBuilder() {
    PaymentCallbackResponse._defaults(this);
  }

  PaymentCallbackResponseBuilder get _$this {
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
  void replace(PaymentCallbackResponse other) {
    _$v = other as _$PaymentCallbackResponse;
  }

  @override
  void update(void Function(PaymentCallbackResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentCallbackResponse build() => _build();

  _$PaymentCallbackResponse _build() {
    _$PaymentCallbackResponse _$result;
    try {
      _$result =
          _$v ??
          _$PaymentCallbackResponse._(
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
          r'PaymentCallbackResponse',
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
