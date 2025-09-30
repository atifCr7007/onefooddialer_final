// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_payment_methods_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalesPaymentMethodsGet200Response
    extends SalesPaymentMethodsGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<PaymentMode>? data;

  factory _$SalesPaymentMethodsGet200Response(
          [void Function(SalesPaymentMethodsGet200ResponseBuilder)? updates]) =>
      (SalesPaymentMethodsGet200ResponseBuilder()..update(updates))._build();

  _$SalesPaymentMethodsGet200Response._({this.status, this.data}) : super._();
  @override
  SalesPaymentMethodsGet200Response rebuild(
          void Function(SalesPaymentMethodsGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SalesPaymentMethodsGet200ResponseBuilder toBuilder() =>
      SalesPaymentMethodsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalesPaymentMethodsGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SalesPaymentMethodsGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class SalesPaymentMethodsGet200ResponseBuilder
    implements
        Builder<SalesPaymentMethodsGet200Response,
            SalesPaymentMethodsGet200ResponseBuilder> {
  _$SalesPaymentMethodsGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<PaymentMode>? _data;
  ListBuilder<PaymentMode> get data =>
      _$this._data ??= ListBuilder<PaymentMode>();
  set data(ListBuilder<PaymentMode>? data) => _$this._data = data;

  SalesPaymentMethodsGet200ResponseBuilder() {
    SalesPaymentMethodsGet200Response._defaults(this);
  }

  SalesPaymentMethodsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalesPaymentMethodsGet200Response other) {
    _$v = other as _$SalesPaymentMethodsGet200Response;
  }

  @override
  void update(
      void Function(SalesPaymentMethodsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SalesPaymentMethodsGet200Response build() => _build();

  _$SalesPaymentMethodsGet200Response _build() {
    _$SalesPaymentMethodsGet200Response _$result;
    try {
      _$result = _$v ??
          _$SalesPaymentMethodsGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SalesPaymentMethodsGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
