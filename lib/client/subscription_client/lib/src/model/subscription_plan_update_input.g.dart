// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan_update_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnum_day =
    const SubscriptionPlanUpdateInputPlanPeriodEnum._('day');
const SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnum_week =
    const SubscriptionPlanUpdateInputPlanPeriodEnum._('week');
const SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnum_month =
    const SubscriptionPlanUpdateInputPlanPeriodEnum._('month');
const SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnum_year =
    const SubscriptionPlanUpdateInputPlanPeriodEnum._('year');
const SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnum_unknownDefaultOpenApi =
    const SubscriptionPlanUpdateInputPlanPeriodEnum._('unknownDefaultOpenApi');

SubscriptionPlanUpdateInputPlanPeriodEnum
_$subscriptionPlanUpdateInputPlanPeriodEnumValueOf(String name) {
  switch (name) {
    case 'day':
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_day;
    case 'week':
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_week;
    case 'month':
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_month;
    case 'year':
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_year;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanUpdateInputPlanPeriodEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanUpdateInputPlanPeriodEnum>
_$subscriptionPlanUpdateInputPlanPeriodEnumValues =
    BuiltSet<SubscriptionPlanUpdateInputPlanPeriodEnum>(
      const <SubscriptionPlanUpdateInputPlanPeriodEnum>[
        _$subscriptionPlanUpdateInputPlanPeriodEnum_day,
        _$subscriptionPlanUpdateInputPlanPeriodEnum_week,
        _$subscriptionPlanUpdateInputPlanPeriodEnum_month,
        _$subscriptionPlanUpdateInputPlanPeriodEnum_year,
        _$subscriptionPlanUpdateInputPlanPeriodEnum_unknownDefaultOpenApi,
      ],
    );

const SubscriptionPlanUpdateInputShowToCustomerEnum
_$subscriptionPlanUpdateInputShowToCustomerEnum_true_ =
    const SubscriptionPlanUpdateInputShowToCustomerEnum._('true_');
const SubscriptionPlanUpdateInputShowToCustomerEnum
_$subscriptionPlanUpdateInputShowToCustomerEnum_false_ =
    const SubscriptionPlanUpdateInputShowToCustomerEnum._('false_');
const SubscriptionPlanUpdateInputShowToCustomerEnum
_$subscriptionPlanUpdateInputShowToCustomerEnum_admin =
    const SubscriptionPlanUpdateInputShowToCustomerEnum._('admin');
const SubscriptionPlanUpdateInputShowToCustomerEnum
_$subscriptionPlanUpdateInputShowToCustomerEnum_unknownDefaultOpenApi =
    const SubscriptionPlanUpdateInputShowToCustomerEnum._(
      'unknownDefaultOpenApi',
    );

SubscriptionPlanUpdateInputShowToCustomerEnum
_$subscriptionPlanUpdateInputShowToCustomerEnumValueOf(String name) {
  switch (name) {
    case 'true_':
      return _$subscriptionPlanUpdateInputShowToCustomerEnum_true_;
    case 'false_':
      return _$subscriptionPlanUpdateInputShowToCustomerEnum_false_;
    case 'admin':
      return _$subscriptionPlanUpdateInputShowToCustomerEnum_admin;
    case 'unknownDefaultOpenApi':
      return _$subscriptionPlanUpdateInputShowToCustomerEnum_unknownDefaultOpenApi;
    default:
      return _$subscriptionPlanUpdateInputShowToCustomerEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<SubscriptionPlanUpdateInputShowToCustomerEnum>
_$subscriptionPlanUpdateInputShowToCustomerEnumValues =
    BuiltSet<SubscriptionPlanUpdateInputShowToCustomerEnum>(
      const <SubscriptionPlanUpdateInputShowToCustomerEnum>[
        _$subscriptionPlanUpdateInputShowToCustomerEnum_true_,
        _$subscriptionPlanUpdateInputShowToCustomerEnum_false_,
        _$subscriptionPlanUpdateInputShowToCustomerEnum_admin,
        _$subscriptionPlanUpdateInputShowToCustomerEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<SubscriptionPlanUpdateInputPlanPeriodEnum>
_$subscriptionPlanUpdateInputPlanPeriodEnumSerializer =
    _$SubscriptionPlanUpdateInputPlanPeriodEnumSerializer();
Serializer<SubscriptionPlanUpdateInputShowToCustomerEnum>
_$subscriptionPlanUpdateInputShowToCustomerEnumSerializer =
    _$SubscriptionPlanUpdateInputShowToCustomerEnumSerializer();

class _$SubscriptionPlanUpdateInputPlanPeriodEnumSerializer
    implements PrimitiveSerializer<SubscriptionPlanUpdateInputPlanPeriodEnum> {
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
    SubscriptionPlanUpdateInputPlanPeriodEnum,
  ];
  @override
  final String wireName = 'SubscriptionPlanUpdateInputPlanPeriodEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPlanUpdateInputPlanPeriodEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanUpdateInputPlanPeriodEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionPlanUpdateInputPlanPeriodEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubscriptionPlanUpdateInputShowToCustomerEnumSerializer
    implements
        PrimitiveSerializer<SubscriptionPlanUpdateInputShowToCustomerEnum> {
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
    SubscriptionPlanUpdateInputShowToCustomerEnum,
  ];
  @override
  final String wireName = 'SubscriptionPlanUpdateInputShowToCustomerEnum';

  @override
  Object serialize(
    Serializers serializers,
    SubscriptionPlanUpdateInputShowToCustomerEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubscriptionPlanUpdateInputShowToCustomerEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubscriptionPlanUpdateInputShowToCustomerEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$SubscriptionPlanUpdateInput extends SubscriptionPlanUpdateInput {
  @override
  final String? planName;
  @override
  final int? planQuantity;
  @override
  final SubscriptionPlanUpdateInputPlanPeriodEnum? planPeriod;
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
  final SubscriptionPlanUpdateInputShowToCustomerEnum? showToCustomer;
  @override
  final int? fkKitchenCode;
  @override
  final double? price;
  @override
  final bool? isRecurring;

  factory _$SubscriptionPlanUpdateInput([
    void Function(SubscriptionPlanUpdateInputBuilder)? updates,
  ]) => (SubscriptionPlanUpdateInputBuilder()..update(updates))._build();

  _$SubscriptionPlanUpdateInput._({
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
  }) : super._();
  @override
  SubscriptionPlanUpdateInput rebuild(
    void Function(SubscriptionPlanUpdateInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubscriptionPlanUpdateInputBuilder toBuilder() =>
      SubscriptionPlanUpdateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPlanUpdateInput &&
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
    return (newBuiltValueToStringHelper(r'SubscriptionPlanUpdateInput')
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

class SubscriptionPlanUpdateInputBuilder
    implements
        Builder<
          SubscriptionPlanUpdateInput,
          SubscriptionPlanUpdateInputBuilder
        > {
  _$SubscriptionPlanUpdateInput? _$v;

  String? _planName;
  String? get planName => _$this._planName;
  set planName(String? planName) => _$this._planName = planName;

  int? _planQuantity;
  int? get planQuantity => _$this._planQuantity;
  set planQuantity(int? planQuantity) => _$this._planQuantity = planQuantity;

  SubscriptionPlanUpdateInputPlanPeriodEnum? _planPeriod;
  SubscriptionPlanUpdateInputPlanPeriodEnum? get planPeriod =>
      _$this._planPeriod;
  set planPeriod(SubscriptionPlanUpdateInputPlanPeriodEnum? planPeriod) =>
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

  SubscriptionPlanUpdateInputShowToCustomerEnum? _showToCustomer;
  SubscriptionPlanUpdateInputShowToCustomerEnum? get showToCustomer =>
      _$this._showToCustomer;
  set showToCustomer(
    SubscriptionPlanUpdateInputShowToCustomerEnum? showToCustomer,
  ) => _$this._showToCustomer = showToCustomer;

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

  SubscriptionPlanUpdateInputBuilder() {
    SubscriptionPlanUpdateInput._defaults(this);
  }

  SubscriptionPlanUpdateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(SubscriptionPlanUpdateInput other) {
    _$v = other as _$SubscriptionPlanUpdateInput;
  }

  @override
  void update(void Function(SubscriptionPlanUpdateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionPlanUpdateInput build() => _build();

  _$SubscriptionPlanUpdateInput _build() {
    final _$result =
        _$v ??
        _$SubscriptionPlanUpdateInput._(
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
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
