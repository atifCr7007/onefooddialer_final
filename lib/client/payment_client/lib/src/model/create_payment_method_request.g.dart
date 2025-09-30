// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_method_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreatePaymentMethodRequestTypeEnum
_$createPaymentMethodRequestTypeEnum_creditCard =
    const CreatePaymentMethodRequestTypeEnum._('creditCard');
const CreatePaymentMethodRequestTypeEnum
_$createPaymentMethodRequestTypeEnum_debitCard =
    const CreatePaymentMethodRequestTypeEnum._('debitCard');
const CreatePaymentMethodRequestTypeEnum
_$createPaymentMethodRequestTypeEnum_bankAccount =
    const CreatePaymentMethodRequestTypeEnum._('bankAccount');
const CreatePaymentMethodRequestTypeEnum
_$createPaymentMethodRequestTypeEnum_wallet =
    const CreatePaymentMethodRequestTypeEnum._('wallet');
const CreatePaymentMethodRequestTypeEnum
_$createPaymentMethodRequestTypeEnum_unknownDefaultOpenApi =
    const CreatePaymentMethodRequestTypeEnum._('unknownDefaultOpenApi');

CreatePaymentMethodRequestTypeEnum _$createPaymentMethodRequestTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'creditCard':
      return _$createPaymentMethodRequestTypeEnum_creditCard;
    case 'debitCard':
      return _$createPaymentMethodRequestTypeEnum_debitCard;
    case 'bankAccount':
      return _$createPaymentMethodRequestTypeEnum_bankAccount;
    case 'wallet':
      return _$createPaymentMethodRequestTypeEnum_wallet;
    case 'unknownDefaultOpenApi':
      return _$createPaymentMethodRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$createPaymentMethodRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CreatePaymentMethodRequestTypeEnum>
_$createPaymentMethodRequestTypeEnumValues =
    BuiltSet<CreatePaymentMethodRequestTypeEnum>(
      const <CreatePaymentMethodRequestTypeEnum>[
        _$createPaymentMethodRequestTypeEnum_creditCard,
        _$createPaymentMethodRequestTypeEnum_debitCard,
        _$createPaymentMethodRequestTypeEnum_bankAccount,
        _$createPaymentMethodRequestTypeEnum_wallet,
        _$createPaymentMethodRequestTypeEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<CreatePaymentMethodRequestTypeEnum>
_$createPaymentMethodRequestTypeEnumSerializer =
    _$CreatePaymentMethodRequestTypeEnumSerializer();

class _$CreatePaymentMethodRequestTypeEnumSerializer
    implements PrimitiveSerializer<CreatePaymentMethodRequestTypeEnum> {
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
  final Iterable<Type> types = const <Type>[CreatePaymentMethodRequestTypeEnum];
  @override
  final String wireName = 'CreatePaymentMethodRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CreatePaymentMethodRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CreatePaymentMethodRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CreatePaymentMethodRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CreatePaymentMethodRequest extends CreatePaymentMethodRequest {
  @override
  final int customerId;
  @override
  final String gateway;
  @override
  final String token;
  @override
  final CreatePaymentMethodRequestTypeEnum type;
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
  final Map<String, dynamic>? metadata;

  factory _$CreatePaymentMethodRequest([
    void Function(CreatePaymentMethodRequestBuilder)? updates,
  ]) => (CreatePaymentMethodRequestBuilder()..update(updates))._build();

  _$CreatePaymentMethodRequest._({
    required this.customerId,
    required this.gateway,
    required this.token,
    required this.type,
    this.lastFour,
    this.expiryMonth,
    this.expiryYear,
    this.cardHolderName,
    this.cardBrand,
    this.isDefault,
    this.metadata,
  }) : super._();
  @override
  CreatePaymentMethodRequest rebuild(
    void Function(CreatePaymentMethodRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreatePaymentMethodRequestBuilder toBuilder() =>
      CreatePaymentMethodRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePaymentMethodRequest &&
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
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePaymentMethodRequest')
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
          ..add('metadata', metadata))
        .toString();
  }
}

class CreatePaymentMethodRequestBuilder
    implements
        Builder<CreatePaymentMethodRequest, CreatePaymentMethodRequestBuilder> {
  _$CreatePaymentMethodRequest? _$v;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _gateway;
  String? get gateway => _$this._gateway;
  set gateway(String? gateway) => _$this._gateway = gateway;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  CreatePaymentMethodRequestTypeEnum? _type;
  CreatePaymentMethodRequestTypeEnum? get type => _$this._type;
  set type(CreatePaymentMethodRequestTypeEnum? type) => _$this._type = type;

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

  Map<String, dynamic>? _metadata;
  Map<String, dynamic>? get metadata => _$this._metadata;
  set metadata(Map<String, dynamic>? metadata) => _$this._metadata = metadata;

  CreatePaymentMethodRequestBuilder() {
    CreatePaymentMethodRequest._defaults(this);
  }

  CreatePaymentMethodRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePaymentMethodRequest other) {
    _$v = other as _$CreatePaymentMethodRequest;
  }

  @override
  void update(void Function(CreatePaymentMethodRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePaymentMethodRequest build() => _build();

  _$CreatePaymentMethodRequest _build() {
    final _$result =
        _$v ??
        _$CreatePaymentMethodRequest._(
          customerId: BuiltValueNullFieldError.checkNotNull(
            customerId,
            r'CreatePaymentMethodRequest',
            'customerId',
          ),
          gateway: BuiltValueNullFieldError.checkNotNull(
            gateway,
            r'CreatePaymentMethodRequest',
            'gateway',
          ),
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'CreatePaymentMethodRequest',
            'token',
          ),
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'CreatePaymentMethodRequest',
            'type',
          ),
          lastFour: lastFour,
          expiryMonth: expiryMonth,
          expiryYear: expiryYear,
          cardHolderName: cardHolderName,
          cardBrand: cardBrand,
          isDefault: isDefault,
          metadata: metadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
