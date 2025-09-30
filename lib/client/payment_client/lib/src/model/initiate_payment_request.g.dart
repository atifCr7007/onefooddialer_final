// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiatePaymentRequest extends InitiatePaymentRequest {
  @override
  final int customerId;
  @override
  final String? customerEmail;
  @override
  final String? customerPhone;
  @override
  final String? customerName;
  @override
  final double amount;
  @override
  final double? transactionCharges;
  @override
  final double? walletAmount;
  @override
  final String? orderId;
  @override
  final String? referer;
  @override
  final String successUrl;
  @override
  final String failureUrl;
  @override
  final String? context;
  @override
  final bool? recurring;
  @override
  final double? discount;

  factory _$InitiatePaymentRequest([
    void Function(InitiatePaymentRequestBuilder)? updates,
  ]) => (InitiatePaymentRequestBuilder()..update(updates))._build();

  _$InitiatePaymentRequest._({
    required this.customerId,
    this.customerEmail,
    this.customerPhone,
    this.customerName,
    required this.amount,
    this.transactionCharges,
    this.walletAmount,
    this.orderId,
    this.referer,
    required this.successUrl,
    required this.failureUrl,
    this.context,
    this.recurring,
    this.discount,
  }) : super._();
  @override
  InitiatePaymentRequest rebuild(
    void Function(InitiatePaymentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InitiatePaymentRequestBuilder toBuilder() =>
      InitiatePaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiatePaymentRequest &&
        customerId == other.customerId &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        customerName == other.customerName &&
        amount == other.amount &&
        transactionCharges == other.transactionCharges &&
        walletAmount == other.walletAmount &&
        orderId == other.orderId &&
        referer == other.referer &&
        successUrl == other.successUrl &&
        failureUrl == other.failureUrl &&
        context == other.context &&
        recurring == other.recurring &&
        discount == other.discount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, transactionCharges.hashCode);
    _$hash = $jc(_$hash, walletAmount.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, referer.hashCode);
    _$hash = $jc(_$hash, successUrl.hashCode);
    _$hash = $jc(_$hash, failureUrl.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, recurring.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitiatePaymentRequest')
          ..add('customerId', customerId)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('customerName', customerName)
          ..add('amount', amount)
          ..add('transactionCharges', transactionCharges)
          ..add('walletAmount', walletAmount)
          ..add('orderId', orderId)
          ..add('referer', referer)
          ..add('successUrl', successUrl)
          ..add('failureUrl', failureUrl)
          ..add('context', context)
          ..add('recurring', recurring)
          ..add('discount', discount))
        .toString();
  }
}

class InitiatePaymentRequestBuilder
    implements Builder<InitiatePaymentRequest, InitiatePaymentRequestBuilder> {
  _$InitiatePaymentRequest? _$v;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  double? _transactionCharges;
  double? get transactionCharges => _$this._transactionCharges;
  set transactionCharges(double? transactionCharges) =>
      _$this._transactionCharges = transactionCharges;

  double? _walletAmount;
  double? get walletAmount => _$this._walletAmount;
  set walletAmount(double? walletAmount) => _$this._walletAmount = walletAmount;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _referer;
  String? get referer => _$this._referer;
  set referer(String? referer) => _$this._referer = referer;

  String? _successUrl;
  String? get successUrl => _$this._successUrl;
  set successUrl(String? successUrl) => _$this._successUrl = successUrl;

  String? _failureUrl;
  String? get failureUrl => _$this._failureUrl;
  set failureUrl(String? failureUrl) => _$this._failureUrl = failureUrl;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  bool? _recurring;
  bool? get recurring => _$this._recurring;
  set recurring(bool? recurring) => _$this._recurring = recurring;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  InitiatePaymentRequestBuilder() {
    InitiatePaymentRequest._defaults(this);
  }

  InitiatePaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _customerEmail = $v.customerEmail;
      _customerPhone = $v.customerPhone;
      _customerName = $v.customerName;
      _amount = $v.amount;
      _transactionCharges = $v.transactionCharges;
      _walletAmount = $v.walletAmount;
      _orderId = $v.orderId;
      _referer = $v.referer;
      _successUrl = $v.successUrl;
      _failureUrl = $v.failureUrl;
      _context = $v.context;
      _recurring = $v.recurring;
      _discount = $v.discount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiatePaymentRequest other) {
    _$v = other as _$InitiatePaymentRequest;
  }

  @override
  void update(void Function(InitiatePaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiatePaymentRequest build() => _build();

  _$InitiatePaymentRequest _build() {
    final _$result =
        _$v ??
        _$InitiatePaymentRequest._(
          customerId: BuiltValueNullFieldError.checkNotNull(
            customerId,
            r'InitiatePaymentRequest',
            'customerId',
          ),
          customerEmail: customerEmail,
          customerPhone: customerPhone,
          customerName: customerName,
          amount: BuiltValueNullFieldError.checkNotNull(
            amount,
            r'InitiatePaymentRequest',
            'amount',
          ),
          transactionCharges: transactionCharges,
          walletAmount: walletAmount,
          orderId: orderId,
          referer: referer,
          successUrl: BuiltValueNullFieldError.checkNotNull(
            successUrl,
            r'InitiatePaymentRequest',
            'successUrl',
          ),
          failureUrl: BuiltValueNullFieldError.checkNotNull(
            failureUrl,
            r'InitiatePaymentRequest',
            'failureUrl',
          ),
          context: context,
          recurring: recurring,
          discount: discount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
