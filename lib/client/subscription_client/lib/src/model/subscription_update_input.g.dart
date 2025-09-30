// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_update_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionUpdateInput extends SubscriptionUpdateInput {
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final double? amount;
  @override
  final double? discount;
  @override
  final String? paymentMethod;
  @override
  final String? paymentStatus;
  @override
  final String? transactionId;
  @override
  final bool? autoRenew;
  @override
  final String? notes;

  factory _$SubscriptionUpdateInput([
    void Function(SubscriptionUpdateInputBuilder)? updates,
  ]) => (SubscriptionUpdateInputBuilder()..update(updates))._build();

  _$SubscriptionUpdateInput._({
    this.startDate,
    this.endDate,
    this.amount,
    this.discount,
    this.paymentMethod,
    this.paymentStatus,
    this.transactionId,
    this.autoRenew,
    this.notes,
  }) : super._();
  @override
  SubscriptionUpdateInput rebuild(
    void Function(SubscriptionUpdateInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubscriptionUpdateInputBuilder toBuilder() =>
      SubscriptionUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionUpdateInput &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        amount == other.amount &&
        discount == other.discount &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        transactionId == other.transactionId &&
        autoRenew == other.autoRenew &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionUpdateInput')
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('amount', amount)
          ..add('discount', discount)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('transactionId', transactionId)
          ..add('autoRenew', autoRenew)
          ..add('notes', notes))
        .toString();
  }
}

class SubscriptionUpdateInputBuilder
    implements
        Builder<SubscriptionUpdateInput, SubscriptionUpdateInputBuilder> {
  _$SubscriptionUpdateInput? _$v;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SubscriptionUpdateInputBuilder() {
    SubscriptionUpdateInput._defaults(this);
  }

  SubscriptionUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _amount = $v.amount;
      _discount = $v.discount;
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _transactionId = $v.transactionId;
      _autoRenew = $v.autoRenew;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionUpdateInput other) {
    _$v = other as _$SubscriptionUpdateInput;
  }

  @override
  void update(void Function(SubscriptionUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionUpdateInput build() => _build();

  _$SubscriptionUpdateInput _build() {
    final _$result =
        _$v ??
        _$SubscriptionUpdateInput._(
          startDate: startDate,
          endDate: endDate,
          amount: amount,
          discount: discount,
          paymentMethod: paymentMethod,
          paymentStatus: paymentStatus,
          transactionId: transactionId,
          autoRenew: autoRenew,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
