// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_id_mark_paid_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesIdMarkPaidPostRequest extends InvoicesIdMarkPaidPostRequest {
  @override
  final String? paymentMethod;
  @override
  final String? paymentReference;

  factory _$InvoicesIdMarkPaidPostRequest([
    void Function(InvoicesIdMarkPaidPostRequestBuilder)? updates,
  ]) => (InvoicesIdMarkPaidPostRequestBuilder()..update(updates))._build();

  _$InvoicesIdMarkPaidPostRequest._({this.paymentMethod, this.paymentReference})
    : super._();
  @override
  InvoicesIdMarkPaidPostRequest rebuild(
    void Function(InvoicesIdMarkPaidPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesIdMarkPaidPostRequestBuilder toBuilder() =>
      InvoicesIdMarkPaidPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesIdMarkPaidPostRequest &&
        paymentMethod == other.paymentMethod &&
        paymentReference == other.paymentReference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentReference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoicesIdMarkPaidPostRequest')
          ..add('paymentMethod', paymentMethod)
          ..add('paymentReference', paymentReference))
        .toString();
  }
}

class InvoicesIdMarkPaidPostRequestBuilder
    implements
        Builder<
          InvoicesIdMarkPaidPostRequest,
          InvoicesIdMarkPaidPostRequestBuilder
        > {
  _$InvoicesIdMarkPaidPostRequest? _$v;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentReference;
  String? get paymentReference => _$this._paymentReference;
  set paymentReference(String? paymentReference) =>
      _$this._paymentReference = paymentReference;

  InvoicesIdMarkPaidPostRequestBuilder() {
    InvoicesIdMarkPaidPostRequest._defaults(this);
  }

  InvoicesIdMarkPaidPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentMethod = $v.paymentMethod;
      _paymentReference = $v.paymentReference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesIdMarkPaidPostRequest other) {
    _$v = other as _$InvoicesIdMarkPaidPostRequest;
  }

  @override
  void update(void Function(InvoicesIdMarkPaidPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesIdMarkPaidPostRequest build() => _build();

  _$InvoicesIdMarkPaidPostRequest _build() {
    final _$result =
        _$v ??
        _$InvoicesIdMarkPaidPostRequest._(
          paymentMethod: paymentMethod,
          paymentReference: paymentReference,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
