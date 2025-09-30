// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_payment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiatePaymentResponse extends InitiatePaymentResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final InitiatePaymentResponseData? data;

  factory _$InitiatePaymentResponse([
    void Function(InitiatePaymentResponseBuilder)? updates,
  ]) => (InitiatePaymentResponseBuilder()..update(updates))._build();

  _$InitiatePaymentResponse._({this.success, this.message, this.data})
    : super._();
  @override
  InitiatePaymentResponse rebuild(
    void Function(InitiatePaymentResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InitiatePaymentResponseBuilder toBuilder() =>
      InitiatePaymentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiatePaymentResponse &&
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
    return (newBuiltValueToStringHelper(r'InitiatePaymentResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class InitiatePaymentResponseBuilder
    implements
        Builder<InitiatePaymentResponse, InitiatePaymentResponseBuilder> {
  _$InitiatePaymentResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InitiatePaymentResponseDataBuilder? _data;
  InitiatePaymentResponseDataBuilder get data =>
      _$this._data ??= InitiatePaymentResponseDataBuilder();
  set data(InitiatePaymentResponseDataBuilder? data) => _$this._data = data;

  InitiatePaymentResponseBuilder() {
    InitiatePaymentResponse._defaults(this);
  }

  InitiatePaymentResponseBuilder get _$this {
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
  void replace(InitiatePaymentResponse other) {
    _$v = other as _$InitiatePaymentResponse;
  }

  @override
  void update(void Function(InitiatePaymentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiatePaymentResponse build() => _build();

  _$InitiatePaymentResponse _build() {
    _$InitiatePaymentResponse _$result;
    try {
      _$result =
          _$v ??
          _$InitiatePaymentResponse._(
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
          r'InitiatePaymentResponse',
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
