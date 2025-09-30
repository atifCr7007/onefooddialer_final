// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateInvoiceRequestTypeEnum _$createInvoiceRequestTypeEnum_order =
    const CreateInvoiceRequestTypeEnum._('order');
const CreateInvoiceRequestTypeEnum _$createInvoiceRequestTypeEnum_subscription =
    const CreateInvoiceRequestTypeEnum._('subscription');
const CreateInvoiceRequestTypeEnum _$createInvoiceRequestTypeEnum_refund =
    const CreateInvoiceRequestTypeEnum._('refund');
const CreateInvoiceRequestTypeEnum _$createInvoiceRequestTypeEnum_adjustment =
    const CreateInvoiceRequestTypeEnum._('adjustment');
const CreateInvoiceRequestTypeEnum
_$createInvoiceRequestTypeEnum_unknownDefaultOpenApi =
    const CreateInvoiceRequestTypeEnum._('unknownDefaultOpenApi');

CreateInvoiceRequestTypeEnum _$createInvoiceRequestTypeEnumValueOf(
  String name,
) {
  switch (name) {
    case 'order':
      return _$createInvoiceRequestTypeEnum_order;
    case 'subscription':
      return _$createInvoiceRequestTypeEnum_subscription;
    case 'refund':
      return _$createInvoiceRequestTypeEnum_refund;
    case 'adjustment':
      return _$createInvoiceRequestTypeEnum_adjustment;
    case 'unknownDefaultOpenApi':
      return _$createInvoiceRequestTypeEnum_unknownDefaultOpenApi;
    default:
      return _$createInvoiceRequestTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<CreateInvoiceRequestTypeEnum>
_$createInvoiceRequestTypeEnumValues =
    BuiltSet<CreateInvoiceRequestTypeEnum>(const <CreateInvoiceRequestTypeEnum>[
      _$createInvoiceRequestTypeEnum_order,
      _$createInvoiceRequestTypeEnum_subscription,
      _$createInvoiceRequestTypeEnum_refund,
      _$createInvoiceRequestTypeEnum_adjustment,
      _$createInvoiceRequestTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<CreateInvoiceRequestTypeEnum>
_$createInvoiceRequestTypeEnumSerializer =
    _$CreateInvoiceRequestTypeEnumSerializer();

class _$CreateInvoiceRequestTypeEnumSerializer
    implements PrimitiveSerializer<CreateInvoiceRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'order': 'order',
    'subscription': 'subscription',
    'refund': 'refund',
    'adjustment': 'adjustment',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'order': 'order',
    'subscription': 'subscription',
    'refund': 'refund',
    'adjustment': 'adjustment',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateInvoiceRequestTypeEnum];
  @override
  final String wireName = 'CreateInvoiceRequestTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    CreateInvoiceRequestTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CreateInvoiceRequestTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CreateInvoiceRequestTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$CreateInvoiceRequest extends CreateInvoiceRequest {
  @override
  final int customerId;
  @override
  final int? orderId;
  @override
  final int? subscriptionId;
  @override
  final String customerName;
  @override
  final String customerEmail;
  @override
  final String? customerPhone;
  @override
  final Address billingAddress;
  @override
  final Address? shippingAddress;
  @override
  final Date dueDate;
  @override
  final String currency;
  @override
  final CreateInvoiceRequestTypeEnum type;
  @override
  final String? notes;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final BuiltList<CreateInvoiceItemRequest> items;

  factory _$CreateInvoiceRequest([
    void Function(CreateInvoiceRequestBuilder)? updates,
  ]) => (CreateInvoiceRequestBuilder()..update(updates))._build();

  _$CreateInvoiceRequest._({
    required this.customerId,
    this.orderId,
    this.subscriptionId,
    required this.customerName,
    required this.customerEmail,
    this.customerPhone,
    required this.billingAddress,
    this.shippingAddress,
    required this.dueDate,
    required this.currency,
    required this.type,
    this.notes,
    this.metadata,
    this.companyId,
    this.unitId,
    required this.items,
  }) : super._();
  @override
  CreateInvoiceRequest rebuild(
    void Function(CreateInvoiceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInvoiceRequestBuilder toBuilder() =>
      CreateInvoiceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInvoiceRequest &&
        customerId == other.customerId &&
        orderId == other.orderId &&
        subscriptionId == other.subscriptionId &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        billingAddress == other.billingAddress &&
        shippingAddress == other.shippingAddress &&
        dueDate == other.dueDate &&
        currency == other.currency &&
        type == other.type &&
        notes == other.notes &&
        metadata == other.metadata &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, shippingAddress.hashCode);
    _$hash = $jc(_$hash, dueDate.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInvoiceRequest')
          ..add('customerId', customerId)
          ..add('orderId', orderId)
          ..add('subscriptionId', subscriptionId)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('billingAddress', billingAddress)
          ..add('shippingAddress', shippingAddress)
          ..add('dueDate', dueDate)
          ..add('currency', currency)
          ..add('type', type)
          ..add('notes', notes)
          ..add('metadata', metadata)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('items', items))
        .toString();
  }
}

class CreateInvoiceRequestBuilder
    implements Builder<CreateInvoiceRequest, CreateInvoiceRequestBuilder> {
  _$CreateInvoiceRequest? _$v;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  AddressBuilder? _billingAddress;
  AddressBuilder get billingAddress =>
      _$this._billingAddress ??= AddressBuilder();
  set billingAddress(AddressBuilder? billingAddress) =>
      _$this._billingAddress = billingAddress;

  AddressBuilder? _shippingAddress;
  AddressBuilder get shippingAddress =>
      _$this._shippingAddress ??= AddressBuilder();
  set shippingAddress(AddressBuilder? shippingAddress) =>
      _$this._shippingAddress = shippingAddress;

  Date? _dueDate;
  Date? get dueDate => _$this._dueDate;
  set dueDate(Date? dueDate) => _$this._dueDate = dueDate;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  CreateInvoiceRequestTypeEnum? _type;
  CreateInvoiceRequestTypeEnum? get type => _$this._type;
  set type(CreateInvoiceRequestTypeEnum? type) => _$this._type = type;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  ListBuilder<CreateInvoiceItemRequest>? _items;
  ListBuilder<CreateInvoiceItemRequest> get items =>
      _$this._items ??= ListBuilder<CreateInvoiceItemRequest>();
  set items(ListBuilder<CreateInvoiceItemRequest>? items) =>
      _$this._items = items;

  CreateInvoiceRequestBuilder() {
    CreateInvoiceRequest._defaults(this);
  }

  CreateInvoiceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _orderId = $v.orderId;
      _subscriptionId = $v.subscriptionId;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _customerPhone = $v.customerPhone;
      _billingAddress = $v.billingAddress.toBuilder();
      _shippingAddress = $v.shippingAddress?.toBuilder();
      _dueDate = $v.dueDate;
      _currency = $v.currency;
      _type = $v.type;
      _notes = $v.notes;
      _metadata = $v.metadata?.toBuilder();
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInvoiceRequest other) {
    _$v = other as _$CreateInvoiceRequest;
  }

  @override
  void update(void Function(CreateInvoiceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInvoiceRequest build() => _build();

  _$CreateInvoiceRequest _build() {
    _$CreateInvoiceRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateInvoiceRequest._(
            customerId: BuiltValueNullFieldError.checkNotNull(
              customerId,
              r'CreateInvoiceRequest',
              'customerId',
            ),
            orderId: orderId,
            subscriptionId: subscriptionId,
            customerName: BuiltValueNullFieldError.checkNotNull(
              customerName,
              r'CreateInvoiceRequest',
              'customerName',
            ),
            customerEmail: BuiltValueNullFieldError.checkNotNull(
              customerEmail,
              r'CreateInvoiceRequest',
              'customerEmail',
            ),
            customerPhone: customerPhone,
            billingAddress: billingAddress.build(),
            shippingAddress: _shippingAddress?.build(),
            dueDate: BuiltValueNullFieldError.checkNotNull(
              dueDate,
              r'CreateInvoiceRequest',
              'dueDate',
            ),
            currency: BuiltValueNullFieldError.checkNotNull(
              currency,
              r'CreateInvoiceRequest',
              'currency',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CreateInvoiceRequest',
              'type',
            ),
            notes: notes,
            metadata: _metadata?.build(),
            companyId: companyId,
            unitId: unitId,
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'billingAddress';
        billingAddress.build();
        _$failedField = 'shippingAddress';
        _shippingAddress?.build();

        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateInvoiceRequest',
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
