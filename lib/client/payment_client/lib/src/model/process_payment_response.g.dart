// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_payment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessPaymentResponse extends ProcessPaymentResponse {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final ProcessPaymentResponseData? data;

  factory _$ProcessPaymentResponse(
          [void Function(ProcessPaymentResponseBuilder)? updates]) =>
      (ProcessPaymentResponseBuilder()..update(updates))._build();

  _$ProcessPaymentResponse._({this.success, this.message, this.data})
      : super._();
  @override
  ProcessPaymentResponse rebuild(
          void Function(ProcessPaymentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessPaymentResponseBuilder toBuilder() =>
      ProcessPaymentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessPaymentResponse &&
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
    return (newBuiltValueToStringHelper(r'ProcessPaymentResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ProcessPaymentResponseBuilder
    implements Builder<ProcessPaymentResponse, ProcessPaymentResponseBuilder> {
  _$ProcessPaymentResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProcessPaymentResponseDataBuilder? _data;
  ProcessPaymentResponseDataBuilder get data =>
      _$this._data ??= ProcessPaymentResponseDataBuilder();
  set data(ProcessPaymentResponseDataBuilder? data) => _$this._data = data;

  ProcessPaymentResponseBuilder() {
    ProcessPaymentResponse._defaults(this);
  }

  ProcessPaymentResponseBuilder get _$this {
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
  void replace(ProcessPaymentResponse other) {
    _$v = other as _$ProcessPaymentResponse;
  }

  @override
  void update(void Function(ProcessPaymentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessPaymentResponse build() => _build();

  _$ProcessPaymentResponse _build() {
    _$ProcessPaymentResponse _$result;
    try {
      _$result = _$v ??
          _$ProcessPaymentResponse._(
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
            r'ProcessPaymentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
