// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionPlanPlanPeriodEnum _$subscriptionPlanPlanPeriodEnum_day =
    const SubscriptionPlanPlanPeriodEnum._('day');
const SubscriptionPlanPlanPeriodEnum _$subscriptionPlanPlanPeriodEnum_week =
    const SubscriptionPlanPlanPeriodEnum._('week');
const SubscriptionPlanPlanPeriodEnum _$subscriptionPlanPlanPeriodEnum_month =
    const SubscriptionPlanPlanPeriodEnum._('month');
const SubscriptionPlanPlanPeriodEnum _$subscriptionPlanPlanPeriodEnum_year =
    const SubscriptionPlanPlanPeriodEnum._('year');
const SubscriptionPlanPlanPeriodEnum
_$subscriptionPlanPlanPeriodEnum_unknownDefaultOpenApi =
    const SubscriptionPlanPlanPeriodEnum._('unknownDefaultOpenApi');

SubscriptionPlanPlanPeriodEnum _$subscriptionPlanPlanPeriodEnumValueOf(
  String name,
) {
  switch (name) {
    case 'day':
      return _$subscriptionPlanPlanPeriodEnum_day;
    case 'week':
      return _$subscriptionPlanPlanPeriodEnum_week;
    case 'month':
      return _$subscriptionPlanPlanPeriodEnum_month;
    case 'year':
      return _$subscriptionPlanPlanPeriodEnum_year;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanPlanPeriodEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanPlanPeriodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanPlanPeriodEnum>
_$subscriptionPlanPlanPeriodEnumValues =
    BuiltSet<SubscriptionPlanPlanPeriodEnum>(
      const <SubscriptionPlanPlanPeriodEnum>[
        _$subscriptionPlanPlanPeriodEnum_day,
        _$subscriptionPlanPlanPeriodEnum_week,
        _$subscriptionPlanPlanPeriodEnum_month,
        _$subscriptionPlanPlanPeriodEnum_year,
        _$subscriptionPlanPlanPeriodEnum_unknownDefaultOpenApi,
      ],
    );

const SubscriptionPlanShowToCustomerEnum
_$subscriptionPlanShowToCustomerEnum_true_ =
    const SubscriptionPlanShowToCustomerEnum._('true_');
const SubscriptionPlanShowToCustomerEnum
_$subscriptionPlanShowToCustomerEnum_false_ =
    const SubscriptionPlanShowToCustomerEnum._('false_');
const SubscriptionPlanShowToCustomerEnum
_$subscriptionPlanShowToCustomerEnum_admin =
    const SubscriptionPlanShowToCustomerEnum._('admin');
const SubscriptionPlanShowToCustomerEnum
_$subscriptionPlanShowToCustomerEnum_unknownDefaultOpenApi =
    const SubscriptionPlanShowToCustomerEnum._('unknownDefaultOpenApi');

SubscriptionPlanShowToCustomerEnum _$subscriptionPlanShowToCustomerEnumValueOf(
  String name,
) {
  switch (name) {
    case 'true_':
      return _$subscriptionPlanShowToCustomerEnum_true_;
    case 'false_':
      return _$subscriptionPlanShowToCustomerEnum_false_;
    case 'admin':
      return _$subscriptionPlanShowToCustomerEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanShowToCustomerEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanShowToCustomerEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanShowToCustomerEnum>
_$subscriptionPlanShowToCustomerEnumValues =
    BuiltSet<SubscriptionPlanShowToCustomerEnum>(
      const <SubscriptionPlanShowToCustomerEnum>[
        _$subscriptionPlanShowToCustomerEnum_true_,
        _$subscriptionPlanShowToCustomerEnum_false_,
        _$subscriptionPlanShowToCustomerEnum_admin,
        _$subscriptionPlanShowToCustomerEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SubscriptionPlanPlanPeriodEnum>
_$subscriptionPlanPlanPeriodEnumSerializer =
    _$SubscriptionPlanPlanPeriodEnumSerializer();
Serializer<SubscriptionPlanShowToCustomerEnum>
_$subscriptionPlanShowToCustomerEnumSerializer =
    _$SubscriptionPlanShowToCustomerEnumSerializer();

class _$SubscriptionPlanPlanPeriodEnumSerializer
    implements PrimitiveSerializer<SubscriptionPlanPlanPeriodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'day': 'day',
    'week': 'week',
    'month': 'month',
    'year': 'year',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'day': 'day',
    'week': 'week',
    'month': 'month',
    'year': 'year',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionPlanPlanPeriodEnum];
  @override
  final String wireName = 'SubscriptionPlanPlanPeriodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPlanPlanPeriodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanPlanPeriodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionPlanPlanPeriodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubscriptionPlanShowToCustomerEnumSerializer
    implements PrimitiveSerializer<SubscriptionPlanShowToCustomerEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'true_': 'true',
    'false_': 'false',
    'admin': 'admin',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'true': 'true_',
    'false': 'false_',
    'admin': 'admin',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubscriptionPlanShowToCustomerEnum];
  @override
  final String wireName = 'SubscriptionPlanShowToCustomerEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPlanShowToCustomerEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanShowToCustomerEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionPlanShowToCustomerEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubscriptionPlan extends SubscriptionPlan {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String? planName;
  @override
  final int? planQuantity;
  @override
  final SubscriptionPlanPlanPeriodEnum? planPeriod;
  @override
  final String? planType;
  @override
  final Date? planStartDate;
  @override
  final Date? planEndDate;
  @override
  final int? fkPromoCode;
  @override
  final bool? planStatus;
  @override
  final SubscriptionPlanShowToCustomerEnum? showToCustomer;
  @override
  final int? fkKitchenCode;
  @override
  final double? price;
  @override
  final bool? isRecurring;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$SubscriptionPlan([
    void Function(SubscriptionPlanBuilder)? updates,
  ]) => (SubscriptionPlanBuilder()..update(updates))._build();

  _$SubscriptionPlan._({
    this.id,
    this.companyId,
    this.unitId,
    this.planName,
    this.planQuantity,
    this.planPeriod,
    this.planType,
    this.planStartDate,
    this.planEndDate,
    this.fkPromoCode,
    this.planStatus,
    this.showToCustomer,
    this.fkKitchenCode,
    this.price,
    this.isRecurring,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  SubscriptionPlan rebuild(void Function(SubscriptionPlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionPlanBuilder toBuilder() =>
      SubscriptionPlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPlan &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        planName == other.planName &&
        planQuantity == other.planQuantity &&
        planPeriod == other.planPeriod &&
        planType == other.planType &&
        planStartDate == other.planStartDate &&
        planEndDate == other.planEndDate &&
        fkPromoCode == other.fkPromoCode &&
        planStatus == other.planStatus &&
        showToCustomer == other.showToCustomer &&
        fkKitchenCode == other.fkKitchenCode &&
        price == other.price &&
        isRecurring == other.isRecurring &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, planName.hashCode);
    _$hash = $jc(_$hash, planQuantity.hashCode);
    _$hash = $jc(_$hash, planPeriod.hashCode);
    _$hash = $jc(_$hash, planType.hashCode);
    _$hash = $jc(_$hash, planStartDate.hashCode);
    _$hash = $jc(_$hash, planEndDate.hashCode);
    _$hash = $jc(_$hash, fkPromoCode.hashCode);
    _$hash = $jc(_$hash, planStatus.hashCode);
    _$hash = $jc(_$hash, showToCustomer.hashCode);
    _$hash = $jc(_$hash, fkKitchenCode.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, isRecurring.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionPlan')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('planName', planName)
          ..add('planQuantity', planQuantity)
          ..add('planPeriod', planPeriod)
          ..add('planType', planType)
          ..add('planStartDate', planStartDate)
          ..add('planEndDate', planEndDate)
          ..add('fkPromoCode', fkPromoCode)
          ..add('planStatus', planStatus)
          ..add('showToCustomer', showToCustomer)
          ..add('fkKitchenCode', fkKitchenCode)
          ..add('price', price)
          ..add('isRecurring', isRecurring)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SubscriptionPlanBuilder
    implements Builder<SubscriptionPlan, SubscriptionPlanBuilder> {
  _$SubscriptionPlan? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  String? _planName;
  String? get planName => _$this._planName;
  set planName(String? planName) => _$this._planName = planName;

  int? _planQuantity;
  int? get planQuantity => _$this._planQuantity;
  set planQuantity(int? planQuantity) => _$this._planQuantity = planQuantity;

  SubscriptionPlanPlanPeriodEnum? _planPeriod;
  SubscriptionPlanPlanPeriodEnum? get planPeriod => _$this._planPeriod;
  set planPeriod(SubscriptionPlanPlanPeriodEnum? planPeriod) =>
      _$this._planPeriod = planPeriod;

  String? _planType;
  String? get planType => _$this._planType;
  set planType(String? planType) => _$this._planType = planType;

  Date? _planStartDate;
  Date? get planStartDate => _$this._planStartDate;
  set planStartDate(Date? planStartDate) =>
      _$this._planStartDate = planStartDate;

  Date? _planEndDate;
  Date? get planEndDate => _$this._planEndDate;
  set planEndDate(Date? planEndDate) => _$this._planEndDate = planEndDate;

  int? _fkPromoCode;
  int? get fkPromoCode => _$this._fkPromoCode;
  set fkPromoCode(int? fkPromoCode) => _$this._fkPromoCode = fkPromoCode;

  bool? _planStatus;
  bool? get planStatus => _$this._planStatus;
  set planStatus(bool? planStatus) => _$this._planStatus = planStatus;

  SubscriptionPlanShowToCustomerEnum? _showToCustomer;
  SubscriptionPlanShowToCustomerEnum? get showToCustomer =>
      _$this._showToCustomer;
  set showToCustomer(SubscriptionPlanShowToCustomerEnum? showToCustomer) =>
      _$this._showToCustomer = showToCustomer;

  int? _fkKitchenCode;
  int? get fkKitchenCode => _$this._fkKitchenCode;
  set fkKitchenCode(int? fkKitchenCode) =>
      _$this._fkKitchenCode = fkKitchenCode;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _isRecurring;
  bool? get isRecurring => _$this._isRecurring;
  set isRecurring(bool? isRecurring) => _$this._isRecurring = isRecurring;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SubscriptionPlanBuilder() {
    SubscriptionPlan._defaults(this);
  }

  SubscriptionPlanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _planName = $v.planName;
      _planQuantity = $v.planQuantity;
      _planPeriod = $v.planPeriod;
      _planType = $v.planType;
      _planStartDate = $v.planStartDate;
      _planEndDate = $v.planEndDate;
      _fkPromoCode = $v.fkPromoCode;
      _planStatus = $v.planStatus;
      _showToCustomer = $v.showToCustomer;
      _fkKitchenCode = $v.fkKitchenCode;
      _price = $v.price;
      _isRecurring = $v.isRecurring;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionPlan other) {
    _$v = other as _$SubscriptionPlan;
  }

  @override
  void update(void Function(SubscriptionPlanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionPlan build() => _build();

  _$SubscriptionPlan _build() {
    final _$result =
        _$v ??
        _$SubscriptionPlan._(
          id: id,
          companyId: companyId,
          unitId: unitId,
          planName: planName,
          planQuantity: planQuantity,
          planPeriod: planPeriod,
          planType: planType,
          planStartDate: planStartDate,
          planEndDate: planEndDate,
          fkPromoCode: fkPromoCode,
          planStatus: planStatus,
          showToCustomer: showToCustomer,
          fkKitchenCode: fkKitchenCode,
          price: price,
          isRecurring: isRecurring,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
