// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_payment_method_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdatePaymentMethodRequestTypeEnum
_$updatePaymentMethodRequestTypeEnum_creditCard =
    const UpdatePaymentMethodRequestTypeEnum._('creditCard');
const UpdatePaymentMethodRequestTypeEnum
_$updatePaymentMethodRequestTypeEnum_debitCard =
    const UpdatePaymentMethodRequestTypeEnum._('debitCard');
const UpdatePaymentMethodRequestTypeEnum
_$updatePaymentMethodRequestTypeEnum_bankAccount =
    const UpdatePaymentMethodRequestTypeEnum._('bankAccount');
const UpdatePaymentMethodRequestTypeEnum
_$updatePaymentMethodRequestTypeEnum_wallet =
    const UpdatePaymentMethodRequestTypeEnum._('wallet');
const UpdatePaymentMethodRequestTypeEnum
_$updatePaymentMethodRequestTypeEnum_unknownDefaultOpenApi =
    const UpdatePaymentMethodRequestTypeEnum._('unknownDefaultOpenApi');

UpdatePaymentMethodRequestTypeEnum _$updatePaymentMethodRequestTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'creditCard':
      return _$updatePaymentMethodRequestTypeEnum_creditCard;
    case 'debitCard':
      return _$updatePaymentMethodRequestTypeEnum_debitCard;
    case 'bankAccount':
      return _$updatePaymentMethodRequestTypeEnum_bankAccount;
    case 'wallet':
      return _$updatePaymentMethodRequestTypeEnum_wallet;
    case 'unknownDefaultOpenApi':
      return _$updatePaymentMethodRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$updatePaymentMethodRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UpdatePaymentMethodRequestTypeEnum>
_$updatePaymentMethodRequestTypeEnumValues =
    BuiltSet<UpdatePaymentMethodRequestTypeEnum>(
      const <UpdatePaymentMethodRequestTypeEnum>[
        _$updatePaymentMethodRequestTypeEnum_creditCard,
        _$updatePaymentMethodRequestTypeEnum_debitCard,
        _$updatePaymentMethodRequestTypeEnum_bankAccount,
        _$updatePaymentMethodRequestTypeEnum_wallet,
        _$updatePaymentMethodRequestTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<UpdatePaymentMethodRequestTypeEnum>
_$updatePaymentMethodRequestTypeEnumSerializer =
    _$UpdatePaymentMethodRequestTypeEnumSerializer();

class _$UpdatePaymentMethodRequestTypeEnumSerializer
    implements PrimitiveSerializer<UpdatePaymentMethodRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'creditCard': 'credit_card',
    'debitCard': 'debit_card',
    'bankAccount': 'bank_account',
    'wallet': 'wallet',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'credit_card': 'creditCard',
    'debit_card': 'debitCard',
    'bank_account': 'bankAccount',
    'wallet': 'wallet',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdatePaymentMethodRequestTypeEnum];
  @override
  final String wireName = 'UpdatePaymentMethodRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    UpdatePaymentMethodRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UpdatePaymentMethodRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UpdatePaymentMethodRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UpdatePaymentMethodRequest extends UpdatePaymentMethodRequest {
  @override
  final String? token;
  @override
  final UpdatePaymentMethodRequestTypeEnum? type;
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

  factory _$UpdatePaymentMethodRequest([
    void Function(UpdatePaymentMethodRequestBuilder)? updates,
  ]) => (UpdatePaymentMethodRequestBuilder()..update(updates))._build();

  _$UpdatePaymentMethodRequest._({
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
  }) : super._();
  @override
  UpdatePaymentMethodRequest rebuild(
    void Function(UpdatePaymentMethodRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdatePaymentMethodRequestBuilder toBuilder() =>
      UpdatePaymentMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePaymentMethodRequest &&
        token == other.token &&
        type == other.type &&
        lastFour == other.lastFour &&
        expiryMonth == other.expiryMonth &&
        expiryYear == other.expiryYear &&
        cardHolderName == other.cardHolderName &&
        cardBrand == other.cardBrand &&
        isDefault == other.isDefault &&
        isActive == other.isActive &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePaymentMethodRequest')
          ..add('token', token)
          ..add('type', type)
          ..add('lastFour', lastFour)
          ..add('expiryMonth', expiryMonth)
          ..add('expiryYear', expiryYear)
          ..add('cardHolderName', cardHolderName)
          ..add('cardBrand', cardBrand)
          ..add('isDefault', isDefault)
          ..add('isActive', isActive)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdatePaymentMethodRequestBuilder
    implements
        Builder<UpdatePaymentMethodRequest, UpdatePaymentMethodRequestBuilder> {
  _$UpdatePaymentMethodRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  UpdatePaymentMethodRequestTypeEnum? _type;
  UpdatePaymentMethodRequestTypeEnum? get type => _$this._type;
  set type(UpdatePaymentMethodRequestTypeEnum? type) => _$this._type = type;

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

  UpdatePaymentMethodRequestBuilder() {
    UpdatePaymentMethodRequest._defaults(this);
  }

  UpdatePaymentMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePaymentMethodRequest other) {
    _$v = other as _$UpdatePaymentMethodRequest;
  }

  @override
  void update(void Function(UpdatePaymentMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePaymentMethodRequest build() => _build();

  _$UpdatePaymentMethodRequest _build() {
    final _$result =
        _$v ??
        _$UpdatePaymentMethodRequest._(
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
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
