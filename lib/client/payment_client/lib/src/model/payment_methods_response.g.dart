// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentMethodsResponse extends PaymentMethodsResponse {
  @override
  final bool? success;
  @override
  final BuiltList<PaymentMethod>? data;

  factory _$PaymentMethodsResponse([
    void Function(PaymentMethodsResponseBuilder)? updates,
  ]) => (PaymentMethodsResponseBuilder()..update(updates))._build();

  _$PaymentMethodsResponse._({this.success, this.data}) : super._();
  @override
  PaymentMethodsResponse rebuild(
    void Function(PaymentMethodsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentMethodsResponseBuilder toBuilder() =>
      PaymentMethodsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentMethodsResponse &&
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
    return (newBuiltValueToStringHelper(r'PaymentMethodsResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class PaymentMethodsResponseBuilder
    implements Builder<PaymentMethodsResponse, PaymentMethodsResponseBuilder> {
  _$PaymentMethodsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  PaymentMethodsResponseBuilder() {
    PaymentMethodsResponse._defaults(this);
  }

  PaymentMethodsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentMethodsResponse other) {
    _$v = other as _$PaymentMethodsResponse;
  }

  @override
  void update(void Function(PaymentMethodsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentMethodsResponse build() => _build();

  _$PaymentMethodsResponse _build() {
    _$PaymentMethodsResponse _$result;
    try {
      _$result =
          _$v ??
          _$PaymentMethodsResponse._(success: success, data: _data?.build()as BuiltList<PaymentMethod>);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PaymentMethodsResponse',
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
