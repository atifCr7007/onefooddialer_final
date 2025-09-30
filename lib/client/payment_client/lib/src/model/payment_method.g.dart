// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentMethod extends PaymentMethod {
  @override
  final int? id;
  @override
  final int? customerId;
  @override
  final String? gateway;
  @override
  final String? token;
  @override
  final String? type;
  @override
  final String? lastFour;
  @override
  final String? expiryMonth;
  @override
  final String? expiryYear;
  @override
  final String? cardHolderName;
  @override
  final String? cardBrand;
  @override
  final bool? isDefault;
  @override
  final bool? isActive;
  @override
  final Map<String, dynamic>? metadata;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? maskedCardNumber;
  @override
  final String? expiryDate;

  factory _$PaymentMethod([void Function(PaymentMethodBuilder)? updates]) =>
      (PaymentMethodBuilder()..update(updates))._build();

  _$PaymentMethod._({
    this.id,
    this.customerId,
    this.gateway,
    this.token,
    this.type,
    this.lastFour,
    this.expiryMonth,
    this.expiryYear,
    this.cardHolderName,
    this.cardBrand,
    this.isDefault,
    this.isActive,
    this.metadata,
    this.createdAt,
    this.updatedAt,
    this.maskedCardNumber,
    this.expiryDate,
  }) : super._();
  @override
  PaymentMethod rebuild(void Function(PaymentMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentMethodBuilder toBuilder() => PaymentMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentMethod &&
        id == other.id &&
        customerId == other.customerId &&
        gateway == other.gateway &&
        token == other.token &&
        type == other.type &&
        lastFour == other.lastFour &&
        expiryMonth == other.expiryMonth &&
        expiryYear == other.expiryYear &&
        cardHolderName == other.cardHolderName &&
        cardBrand == other.cardBrand &&
        isDefault == other.isDefault &&
        isActive == other.isActive &&
        metadata == other.metadata &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        maskedCardNumber == other.maskedCardNumber &&
        expiryDate == other.expiryDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, gateway.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lastFour.hashCode);
    _$hash = $jc(_$hash, expiryMonth.hashCode);
    _$hash = $jc(_$hash, expiryYear.hashCode);
    _$hash = $jc(_$hash, cardHolderName.hashCode);
    _$hash = $jc(_$hash, cardBrand.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, maskedCardNumber.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentMethod')
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('gateway', gateway)
          ..add('token', token)
          ..add('type', type)
          ..add('lastFour', lastFour)
          ..add('expiryMonth', expiryMonth)
          ..add('expiryYear', expiryYear)
          ..add('cardHolderName', cardHolderName)
          ..add('cardBrand', cardBrand)
          ..add('isDefault', isDefault)
          ..add('isActive', isActive)
          ..add('metadata', metadata)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('maskedCardNumber', maskedCardNumber)
          ..add('expiryDate', expiryDate))
        .toString();
  }
}

class PaymentMethodBuilder
    implements Builder<PaymentMethod, PaymentMethodBuilder> {
  _$PaymentMethod? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _gateway;
  String? get gateway => _$this._gateway;
  set gateway(String? gateway) => _$this._gateway = gateway;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _lastFour;
  String? get lastFour => _$this._lastFour;
  set lastFour(String? lastFour) => _$this._lastFour = lastFour;

  String? _expiryMonth;
  String? get expiryMonth => _$this._expiryMonth;
  set expiryMonth(String? expiryMonth) => _$this._expiryMonth = expiryMonth;

  String? _expiryYear;
  String? get expiryYear => _$this._expiryYear;
  set expiryYear(String? expiryYear) => _$this._expiryYear = expiryYear;

  String? _cardHolderName;
  String? get cardHolderName => _$this._cardHolderName;
  set cardHolderName(String? cardHolderName) =>
      _$this._cardHolderName = cardHolderName;

  String? _cardBrand;
  String? get cardBrand => _$this._cardBrand;
  set cardBrand(String? cardBrand) => _$this._cardBrand = cardBrand;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata => _$this._metadata;
  set metadata(Map<String, dynamic>? metadata) => _$this._metadata = metadata;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _maskedCardNumber;
  String? get maskedCardNumber => _$this._maskedCardNumber;
  set maskedCardNumber(String? maskedCardNumber) =>
      _$this._maskedCardNumber = maskedCardNumber;

  String? _expiryDate;
  String? get expiryDate => _$this._expiryDate;
  set expiryDate(String? expiryDate) => _$this._expiryDate = expiryDate;

  PaymentMethodBuilder() {
    PaymentMethod._defaults(this);
  }

  PaymentMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerId = $v.customerId;
      _gateway = $v.gateway;
      _token = $v.token;
      _type = $v.type;
      _lastFour = $v.lastFour;
      _expiryMonth = $v.expiryMonth;
      _expiryYear = $v.expiryYear;
      _cardHolderName = $v.cardHolderName;
      _cardBrand = $v.cardBrand;
      _isDefault = $v.isDefault;
      _isActive = $v.isActive;
      _metadata = $v.metadata;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _maskedCardNumber = $v.maskedCardNumber;
      _expiryDate = $v.expiryDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentMethod other) {
    _$v = other as _$PaymentMethod;
  }

  @override
  void update(void Function(PaymentMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentMethod build() => _build();

  _$PaymentMethod _build() {
    final _$result =
        _$v ??
        _$PaymentMethod._(
          id: id,
          customerId: customerId,
          gateway: gateway,
          token: token,
          type: type,
          lastFour: lastFour,
          expiryMonth: expiryMonth,
          expiryYear: expiryYear,
          cardHolderName: cardHolderName,
          cardBrand: cardBrand,
          isDefault: isDefault,
          isActive: isActive,
          metadata: metadata,
          createdAt: createdAt,
          updatedAt: updatedAt,
          maskedCardNumber: maskedCardNumber,
          expiryDate: expiryDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
