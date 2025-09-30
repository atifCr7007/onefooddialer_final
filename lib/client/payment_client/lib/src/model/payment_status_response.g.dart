// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentStatusResponse extends PaymentStatusResponse {
  @override
  final bool? success;
  @override
  final PaymentStatusResponseData? data;

  factory _$PaymentStatusResponse([
    void Function(PaymentStatusResponseBuilder)? updates,
  ]) => (PaymentStatusResponseBuilder()..update(updates))._build();

  _$PaymentStatusResponse._({this.success, this.data}) : super._();
  @override
  PaymentStatusResponse rebuild(
    void Function(PaymentStatusResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentStatusResponseBuilder toBuilder() =>
      PaymentStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentStatusResponse &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentStatusResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class PaymentStatusResponseBuilder
    implements Builder<PaymentStatusResponse, PaymentStatusResponseBuilder> {
  _$PaymentStatusResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PaymentStatusResponseDataBuilder? _data;
  PaymentStatusResponseDataBuilder get data =>
      _$this._data ??= PaymentStatusResponseDataBuilder();
  set data(PaymentStatusResponseDataBuilder? data) => _$this._data = data;

  PaymentStatusResponseBuilder() {
    PaymentStatusResponse._defaults(this);
  }

  PaymentStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentStatusResponse other) {
    _$v = other as _$PaymentStatusResponse;
  }

  @override
  void update(void Function(PaymentStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentStatusResponse build() => _build();

  _$PaymentStatusResponse _build() {
    _$PaymentStatusResponse _$result;
    try {
      _$result =
          _$v ??
          _$PaymentStatusResponse._(success: success, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PaymentStatusResponse',
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
