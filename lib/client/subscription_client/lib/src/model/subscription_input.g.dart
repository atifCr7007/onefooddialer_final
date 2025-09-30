// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionInput extends SubscriptionInput {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final int customerId;
  @override
  final int planId;
  @override
  final Date startDate;
  @override
  final Date endDate;
  @override
  final double amount;
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
  @override
  final BuiltList<SubscriptionItemInput>? items;

  factory _$SubscriptionInput([
    void Function(SubscriptionInputBuilder)? updates,
  ]) => (SubscriptionInputBuilder()..update(updates))._build();

  _$SubscriptionInput._({
    this.companyId,
    this.unitId,
    required this.customerId,
    required this.planId,
    required this.startDate,
    required this.endDate,
    required this.amount,
    this.discount,
    this.paymentMethod,
    this.paymentStatus,
    this.transactionId,
    this.autoRenew,
    this.notes,
    this.items,
  }) : super._();
  @override
  SubscriptionInput rebuild(void Function(SubscriptionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionInputBuilder toBuilder() =>
      SubscriptionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionInput &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        customerId == other.customerId &&
        planId == other.planId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        amount == other.amount &&
        discount == other.discount &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        transactionId == other.transactionId &&
        autoRenew == other.autoRenew &&
        notes == other.notes &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, planId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionInput')
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('customerId', customerId)
          ..add('planId', planId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('amount', amount)
          ..add('discount', discount)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('transactionId', transactionId)
          ..add('autoRenew', autoRenew)
          ..add('notes', notes)
          ..add('items', items))
        .toString();
  }
}

class SubscriptionInputBuilder
    implements Builder<SubscriptionInput, SubscriptionInputBuilder> {
  _$SubscriptionInput? _$v;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  int? _planId;
  int? get planId => _$this._planId;
  set planId(int? planId) => _$this._planId = planId;

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

  ListBuilder<SubscriptionItemInput>? _items;
  ListBuilder<SubscriptionItemInput> get items =>
      _$this._items ??= ListBuilder<SubscriptionItemInput>();
  set items(ListBuilder<SubscriptionItemInput>? items) => _$this._items = items;

  SubscriptionInputBuilder() {
    SubscriptionInput._defaults(this);
  }

  SubscriptionInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _customerId = $v.customerId;
      _planId = $v.planId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _amount = $v.amount;
      _discount = $v.discount;
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _transactionId = $v.transactionId;
      _autoRenew = $v.autoRenew;
      _notes = $v.notes;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionInput other) {
    _$v = other as _$SubscriptionInput;
  }

  @override
  void update(void Function(SubscriptionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionInput build() => _build();

  _$SubscriptionInput _build() {
    _$SubscriptionInput _$result;
    try {
      _$result =
          _$v ??
          _$SubscriptionInput._(
            companyId: companyId,
            unitId: unitId,
            customerId: BuiltValueNullFieldError.checkNotNull(
              customerId,
              r'SubscriptionInput',
              'customerId',
            ),
            planId: BuiltValueNullFieldError.checkNotNull(
              planId,
              r'SubscriptionInput',
              'planId',
            ),
            startDate: BuiltValueNullFieldError.checkNotNull(
              startDate,
              r'SubscriptionInput',
              'startDate',
            ),
            endDate: BuiltValueNullFieldError.checkNotNull(
              endDate,
              r'SubscriptionInput',
              'endDate',
            ),
            amount: BuiltValueNullFieldError.checkNotNull(
              amount,
              r'SubscriptionInput',
              'amount',
            ),
            discount: discount,
            paymentMethod: paymentMethod,
            paymentStatus: paymentStatus,
            transactionId: transactionId,
            autoRenew: autoRenew,
            notes: notes,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubscriptionInput',
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
