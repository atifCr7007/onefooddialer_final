// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionStatusEnum _$subscriptionStatusEnum_active =
    const SubscriptionStatusEnum._('active');
const SubscriptionStatusEnum _$subscriptionStatusEnum_paused =
    const SubscriptionStatusEnum._('paused');
const SubscriptionStatusEnum _$subscriptionStatusEnum_cancelled =
    const SubscriptionStatusEnum._('cancelled');
const SubscriptionStatusEnum _$subscriptionStatusEnum_expired =
    const SubscriptionStatusEnum._('expired');
const SubscriptionStatusEnum _$subscriptionStatusEnum_unknownDefaultOpenApi =
    const SubscriptionStatusEnum._('unknownDefaultOpenApi');

SubscriptionStatusEnum _$subscriptionStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$subscriptionStatusEnum_active;
    case 'paused':
      return _$subscriptionStatusEnum_paused;
    case 'cancelled':
      return _$subscriptionStatusEnum_cancelled;
    case 'expired':
      return _$subscriptionStatusEnum_expired;
    case 'unknownDefaultOpenApi':
      return _$subscriptionStatusEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionStatusEnum> _$subscriptionStatusEnumValues =
    BuiltSet<SubscriptionStatusEnum>(const <SubscriptionStatusEnum>[
  _$subscriptionStatusEnum_active,
  _$subscriptionStatusEnum_paused,
  _$subscriptionStatusEnum_cancelled,
  _$subscriptionStatusEnum_expired,
  _$subscriptionStatusEnum_unknownDefaultOpenApi,
]);

Serializer<SubscriptionStatusEnum> _$subscriptionStatusEnumSerializer =
    _$SubscriptionStatusEnumSerializer();

class _$SubscriptionStatusEnumSerializer
    implements PrimitiveSerializer<SubscriptionStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'paused': 'paused',
    'cancelled': 'cancelled',
    'expired': 'expired',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'paused': 'paused',
    'cancelled': 'cancelled',
    'expired': 'expired',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionStatusEnum];
  @override
  final String wireName = 'SubscriptionStatusEnum';

  @override
  Object serialize(Serializers serializers, SubscriptionStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubscriptionStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubscriptionStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Subscription extends Subscription {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final int? customerId;
  @override
  final int? planId;
  @override
  final String? subscriptionNo;
  @override
  final Date? startDate;
  @override
  final Date? endDate;
  @override
  final SubscriptionStatusEnum? status;
  @override
  final double? amount;
  @override
  final double? discount;
  @override
  final double? total;
  @override
  final String? paymentMethod;
  @override
  final String? paymentStatus;
  @override
  final String? transactionId;
  @override
  final BuiltList<SubscriptionPauseHistoryInner>? pauseHistory;
  @override
  final Date? nextBillingDate;
  @override
  final bool? autoRenew;
  @override
  final String? notes;
  @override
  final Customer? customer;
  @override
  final SubscriptionPlan? plan;
  @override
  final BuiltList<SubscriptionItem>? items;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Subscription([void Function(SubscriptionBuilder)? updates]) =>
      (SubscriptionBuilder()..update(updates))._build();

  _$Subscription._(
      {this.id,
      this.companyId,
      this.unitId,
      this.customerId,
      this.planId,
      this.subscriptionNo,
      this.startDate,
      this.endDate,
      this.status,
      this.amount,
      this.discount,
      this.total,
      this.paymentMethod,
      this.paymentStatus,
      this.transactionId,
      this.pauseHistory,
      this.nextBillingDate,
      this.autoRenew,
      this.notes,
      this.customer,
      this.plan,
      this.items,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  Subscription rebuild(void Function(SubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionBuilder toBuilder() => SubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscription &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        customerId == other.customerId &&
        planId == other.planId &&
        subscriptionNo == other.subscriptionNo &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        status == other.status &&
        amount == other.amount &&
        discount == other.discount &&
        total == other.total &&
        paymentMethod == other.paymentMethod &&
        paymentStatus == other.paymentStatus &&
        transactionId == other.transactionId &&
        pauseHistory == other.pauseHistory &&
        nextBillingDate == other.nextBillingDate &&
        autoRenew == other.autoRenew &&
        notes == other.notes &&
        customer == other.customer &&
        plan == other.plan &&
        items == other.items &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, planId.hashCode);
    _$hash = $jc(_$hash, subscriptionNo.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, pauseHistory.hashCode);
    _$hash = $jc(_$hash, nextBillingDate.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, plan.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Subscription')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('customerId', customerId)
          ..add('planId', planId)
          ..add('subscriptionNo', subscriptionNo)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('status', status)
          ..add('amount', amount)
          ..add('discount', discount)
          ..add('total', total)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentStatus', paymentStatus)
          ..add('transactionId', transactionId)
          ..add('pauseHistory', pauseHistory)
          ..add('nextBillingDate', nextBillingDate)
          ..add('autoRenew', autoRenew)
          ..add('notes', notes)
          ..add('customer', customer)
          ..add('plan', plan)
          ..add('items', items)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SubscriptionBuilder
    implements Builder<Subscription, SubscriptionBuilder> {
  _$Subscription? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _subscriptionNo;
  String? get subscriptionNo => _$this._subscriptionNo;
  set subscriptionNo(String? subscriptionNo) =>
      _$this._subscriptionNo = subscriptionNo;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  SubscriptionStatusEnum? _status;
  SubscriptionStatusEnum? get status => _$this._status;
  set status(SubscriptionStatusEnum? status) => _$this._status = status;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

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

  ListBuilder<SubscriptionPauseHistoryInner>? _pauseHistory;
  ListBuilder<SubscriptionPauseHistoryInner> get pauseHistory =>
      _$this._pauseHistory ??= ListBuilder<SubscriptionPauseHistoryInner>();
  set pauseHistory(ListBuilder<SubscriptionPauseHistoryInner>? pauseHistory) =>
      _$this._pauseHistory = pauseHistory;

  Date? _nextBillingDate;
  Date? get nextBillingDate => _$this._nextBillingDate;
  set nextBillingDate(Date? nextBillingDate) =>
      _$this._nextBillingDate = nextBillingDate;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  CustomerBuilder? _customer;
  CustomerBuilder get customer => _$this._customer ??= CustomerBuilder();
  set customer(CustomerBuilder? customer) => _$this._customer = customer;

  SubscriptionPlanBuilder? _plan;
  SubscriptionPlanBuilder get plan =>
      _$this._plan ??= SubscriptionPlanBuilder();
  set plan(SubscriptionPlanBuilder? plan) => _$this._plan = plan;

  ListBuilder<SubscriptionItem>? _items;
  ListBuilder<SubscriptionItem> get items =>
      _$this._items ??= ListBuilder<SubscriptionItem>();
  set items(ListBuilder<SubscriptionItem>? items) => _$this._items = items;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SubscriptionBuilder() {
    Subscription._defaults(this);
  }

  SubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _customerId = $v.customerId;
      _planId = $v.planId;
      _subscriptionNo = $v.subscriptionNo;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _status = $v.status;
      _amount = $v.amount;
      _discount = $v.discount;
      _total = $v.total;
      _paymentMethod = $v.paymentMethod;
      _paymentStatus = $v.paymentStatus;
      _transactionId = $v.transactionId;
      _pauseHistory = $v.pauseHistory?.toBuilder();
      _nextBillingDate = $v.nextBillingDate;
      _autoRenew = $v.autoRenew;
      _notes = $v.notes;
      _customer = $v.customer?.toBuilder();
      _plan = $v.plan?.toBuilder();
      _items = $v.items?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Subscription other) {
    _$v = other as _$Subscription;
  }

  @override
  void update(void Function(SubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Subscription build() => _build();

  _$Subscription _build() {
    _$Subscription _$result;
    try {
      _$result = _$v ??
          _$Subscription._(
            id: id,
            companyId: companyId,
            unitId: unitId,
            customerId: customerId,
            planId: planId,
            subscriptionNo: subscriptionNo,
            startDate: startDate,
            endDate: endDate,
            status: status,
            amount: amount,
            discount: discount,
            total: total,
            paymentMethod: paymentMethod,
            paymentStatus: paymentStatus,
            transactionId: transactionId,
            pauseHistory: _pauseHistory?.build(),
            nextBillingDate: nextBillingDate,
            autoRenew: autoRenew,
            notes: notes,
            customer: _customer?.build(),
            plan: _plan?.build(),
            items: _items?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pauseHistory';
        _pauseHistory?.build();

        _$failedField = 'customer';
        _customer?.build();
        _$failedField = 'plan';
        _plan?.build();
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Subscription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
