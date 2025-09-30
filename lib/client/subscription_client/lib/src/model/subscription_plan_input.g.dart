// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnum_day =
    const SubscriptionPlanInputPlanPeriodEnum._('day');
const SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnum_week =
    const SubscriptionPlanInputPlanPeriodEnum._('week');
const SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnum_month =
    const SubscriptionPlanInputPlanPeriodEnum._('month');
const SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnum_year =
    const SubscriptionPlanInputPlanPeriodEnum._('year');
const SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnum_unknownDefaultOpenApi =
    const SubscriptionPlanInputPlanPeriodEnum._('unknownDefaultOpenApi');

SubscriptionPlanInputPlanPeriodEnum
    _$subscriptionPlanInputPlanPeriodEnumValueOf(String name) {
  switch (name) {
    case 'day':
      return _$subscriptionPlanInputPlanPeriodEnum_day;
    case 'week':
      return _$subscriptionPlanInputPlanPeriodEnum_week;
    case 'month':
      return _$subscriptionPlanInputPlanPeriodEnum_month;
    case 'year':
      return _$subscriptionPlanInputPlanPeriodEnum_year;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanInputPlanPeriodEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanInputPlanPeriodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanInputPlanPeriodEnum>
    _$subscriptionPlanInputPlanPeriodEnumValues = BuiltSet<
        SubscriptionPlanInputPlanPeriodEnum>(const <SubscriptionPlanInputPlanPeriodEnum>[
  _$subscriptionPlanInputPlanPeriodEnum_day,
  _$subscriptionPlanInputPlanPeriodEnum_week,
  _$subscriptionPlanInputPlanPeriodEnum_month,
  _$subscriptionPlanInputPlanPeriodEnum_year,
  _$subscriptionPlanInputPlanPeriodEnum_unknownDefaultOpenApi,
]);

const SubscriptionPlanInputShowToCustomerEnum
    _$subscriptionPlanInputShowToCustomerEnum_true_ =
    const SubscriptionPlanInputShowToCustomerEnum._('true_');
const SubscriptionPlanInputShowToCustomerEnum
    _$subscriptionPlanInputShowToCustomerEnum_false_ =
    const SubscriptionPlanInputShowToCustomerEnum._('false_');
const SubscriptionPlanInputShowToCustomerEnum
    _$subscriptionPlanInputShowToCustomerEnum_admin =
    const SubscriptionPlanInputShowToCustomerEnum._('admin');
const SubscriptionPlanInputShowToCustomerEnum
    _$subscriptionPlanInputShowToCustomerEnum_unknownDefaultOpenApi =
    const SubscriptionPlanInputShowToCustomerEnum._('unknownDefaultOpenApi');

SubscriptionPlanInputShowToCustomerEnum
    _$subscriptionPlanInputShowToCustomerEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$subscriptionPlanInputShowToCustomerEnum_true_;
    case 'false_':
      return _$subscriptionPlanInputShowToCustomerEnum_false_;
    case 'admin':
      return _$subscriptionPlanInputShowToCustomerEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanInputShowToCustomerEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanInputShowToCustomerEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanInputShowToCustomerEnum>
    _$subscriptionPlanInputShowToCustomerEnumValues = BuiltSet<
        SubscriptionPlanInputShowToCustomerEnum>(const <SubscriptionPlanInputShowToCustomerEnum>[
  _$subscriptionPlanInputShowToCustomerEnum_true_,
  _$subscriptionPlanInputShowToCustomerEnum_false_,
  _$subscriptionPlanInputShowToCustomerEnum_admin,
  _$subscriptionPlanInputShowToCustomerEnum_unknownDefaultOpenApi,
]);

Serializer<SubscriptionPlanInputPlanPeriodEnum>
    _$subscriptionPlanInputPlanPeriodEnumSerializer =
    _$SubscriptionPlanInputPlanPeriodEnumSerializer();
Serializer<SubscriptionPlanInputShowToCustomerEnum>
    _$subscriptionPlanInputShowToCustomerEnumSerializer =
    _$SubscriptionPlanInputShowToCustomerEnumSerializer();

class _$SubscriptionPlanInputPlanPeriodEnumSerializer
    implements PrimitiveSerializer<SubscriptionPlanInputPlanPeriodEnum> {
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
  final Iterable<Type> types = const <Type>[
    SubscriptionPlanInputPlanPeriodEnum
  ];
  @override
  final String wireName = 'SubscriptionPlanInputPlanPeriodEnum';

  @override
  Object serialize(
          Serializers serializers, SubscriptionPlanInputPlanPeriodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanInputPlanPeriodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubscriptionPlanInputPlanPeriodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SubscriptionPlanInputShowToCustomerEnumSerializer
    implements PrimitiveSerializer<SubscriptionPlanInputShowToCustomerEnum> {
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
  final Iterable<Type> types = const <Type>[
    SubscriptionPlanInputShowToCustomerEnum
  ];
  @override
  final String wireName = 'SubscriptionPlanInputShowToCustomerEnum';

  @override
  Object serialize(Serializers serializers,
          SubscriptionPlanInputShowToCustomerEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanInputShowToCustomerEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubscriptionPlanInputShowToCustomerEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SubscriptionPlanInput extends SubscriptionPlanInput {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String planName;
  @override
  final int planQuantity;
  @override
  final SubscriptionPlanInputPlanPeriodEnum planPeriod;
  @override
  final String? planType;
  @override
  final Date planStartDate;
  @override
  final Date planEndDate;
  @override
  final int? fkPromoCode;
  @override
  final bool? planStatus;
  @override
  final SubscriptionPlanInputShowToCustomerEnum? showToCustomer;
  @override
  final int? fkKitchenCode;
  @override
  final double price;
  @override
  final bool? isRecurring;

  factory _$SubscriptionPlanInput(
          [void Function(SubscriptionPlanInputBuilder)? updates]) =>
      (SubscriptionPlanInputBuilder()..update(updates))._build();

  _$SubscriptionPlanInput._(
      {this.companyId,
      this.unitId,
      required this.planName,
      required this.planQuantity,
      required this.planPeriod,
      this.planType,
      required this.planStartDate,
      required this.planEndDate,
      this.fkPromoCode,
      this.planStatus,
      this.showToCustomer,
      this.fkKitchenCode,
      required this.price,
      this.isRecurring})
      : super._();
  @override
  SubscriptionPlanInput rebuild(
          void Function(SubscriptionPlanInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionPlanInputBuilder toBuilder() =>
      SubscriptionPlanInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPlanInput &&
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
        isRecurring == other.isRecurring;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionPlanInput')
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
          ..add('isRecurring', isRecurring))
        .toString();
  }
}

class SubscriptionPlanInputBuilder
    implements Builder<SubscriptionPlanInput, SubscriptionPlanInputBuilder> {
  _$SubscriptionPlanInput? _$v;

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

  SubscriptionPlanInputPlanPeriodEnum? _planPeriod;
  SubscriptionPlanInputPlanPeriodEnum? get planPeriod => _$this._planPeriod;
  set planPeriod(SubscriptionPlanInputPlanPeriodEnum? planPeriod) =>
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

  SubscriptionPlanInputShowToCustomerEnum? _showToCustomer;
  SubscriptionPlanInputShowToCustomerEnum? get showToCustomer =>
      _$this._showToCustomer;
  set showToCustomer(SubscriptionPlanInputShowToCustomerEnum? showToCustomer) =>
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

  SubscriptionPlanInputBuilder() {
    SubscriptionPlanInput._defaults(this);
  }

  SubscriptionPlanInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionPlanInput other) {
    _$v = other as _$SubscriptionPlanInput;
  }

  @override
  void update(void Function(SubscriptionPlanInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionPlanInput build() => _build();

  _$SubscriptionPlanInput _build() {
    final _$result = _$v ??
        _$SubscriptionPlanInput._(
          companyId: companyId,
          unitId: unitId,
          planName: BuiltValueNullFieldError.checkNotNull(
              planName, r'SubscriptionPlanInput', 'planName'),
          planQuantity: BuiltValueNullFieldError.checkNotNull(
              planQuantity, r'SubscriptionPlanInput', 'planQuantity'),
          planPeriod: BuiltValueNullFieldError.checkNotNull(
              planPeriod, r'SubscriptionPlanInput', 'planPeriod'),
          planType: planType,
          planStartDate: BuiltValueNullFieldError.checkNotNull(
              planStartDate, r'SubscriptionPlanInput', 'planStartDate'),
          planEndDate: BuiltValueNullFieldError.checkNotNull(
              planEndDate, r'SubscriptionPlanInput', 'planEndDate'),
          fkPromoCode: fkPromoCode,
          planStatus: planStatus,
          showToCustomer: showToCustomer,
          fkKitchenCode: fkKitchenCode,
          price: BuiltValueNullFieldError.checkNotNull(
              price, r'SubscriptionPlanInput', 'price'),
          isRecurring: isRecurring,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
