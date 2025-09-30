// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvoiceStatusEnum _$invoiceStatusEnum_draft = const InvoiceStatusEnum._(
  'draft',
);
const InvoiceStatusEnum _$invoiceStatusEnum_sent = const InvoiceStatusEnum._(
  'sent',
);
const InvoiceStatusEnum _$invoiceStatusEnum_paid = const InvoiceStatusEnum._(
  'paid',
);
const InvoiceStatusEnum _$invoiceStatusEnum_overdue = const InvoiceStatusEnum._(
  'overdue',
);
const InvoiceStatusEnum _$invoiceStatusEnum_cancelled =
    const InvoiceStatusEnum._('cancelled');
const InvoiceStatusEnum _$invoiceStatusEnum_unknownDefaultOpenApi =
    const InvoiceStatusEnum._('unknownDefaultOpenApi');

InvoiceStatusEnum _$invoiceStatusEnumValueOf(String name) {
  switch (name) {
    case 'draft':
      return _$invoiceStatusEnum_draft;
    case 'sent':
      return _$invoiceStatusEnum_sent;
    case 'paid':
      return _$invoiceStatusEnum_paid;
    case 'overdue':
      return _$invoiceStatusEnum_overdue;
    case 'cancelled':
      return _$invoiceStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$invoiceStatusEnum_unknownDefaultOpenApi;
    default:
      return _$invoiceStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InvoiceStatusEnum> _$invoiceStatusEnumValues =
    BuiltSet<InvoiceStatusEnum>(const <InvoiceStatusEnum>[
      _$invoiceStatusEnum_draft,
      _$invoiceStatusEnum_sent,
      _$invoiceStatusEnum_paid,
      _$invoiceStatusEnum_overdue,
      _$invoiceStatusEnum_cancelled,
      _$invoiceStatusEnum_unknownDefaultOpenApi,
    ]);

const InvoiceTypeEnum _$invoiceTypeEnum_order = const InvoiceTypeEnum._(
  'order',
);
const InvoiceTypeEnum _$invoiceTypeEnum_subscription = const InvoiceTypeEnum._(
  'subscription',
);
const InvoiceTypeEnum _$invoiceTypeEnum_refund = const InvoiceTypeEnum._(
  'refund',
);
const InvoiceTypeEnum _$invoiceTypeEnum_adjustment = const InvoiceTypeEnum._(
  'adjustment',
);
const InvoiceTypeEnum _$invoiceTypeEnum_unknownDefaultOpenApi =
    const InvoiceTypeEnum._('unknownDefaultOpenApi');

InvoiceTypeEnum _$invoiceTypeEnumValueOf(String name) {
  switch (name) {
    case 'order':
      return _$invoiceTypeEnum_order;
    case 'subscription':
      return _$invoiceTypeEnum_subscription;
    case 'refund':
      return _$invoiceTypeEnum_refund;
    case 'adjustment':
      return _$invoiceTypeEnum_adjustment;
    case 'unknownDefaultOpenApi':
      return _$invoiceTypeEnum_unknownDefaultOpenApi;
    default:
      return _$invoiceTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<InvoiceTypeEnum> _$invoiceTypeEnumValues =
    BuiltSet<InvoiceTypeEnum>(const <InvoiceTypeEnum>[
      _$invoiceTypeEnum_order,
      _$invoiceTypeEnum_subscription,
      _$invoiceTypeEnum_refund,
      _$invoiceTypeEnum_adjustment,
      _$invoiceTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<InvoiceStatusEnum> _$invoiceStatusEnumSerializer =
    _$InvoiceStatusEnumSerializer();
Serializer<InvoiceTypeEnum> _$invoiceTypeEnumSerializer =
    _$InvoiceTypeEnumSerializer();

class _$InvoiceStatusEnumSerializer
    implements PrimitiveSerializer<InvoiceStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'draft': 'draft',
    'sent': 'sent',
    'paid': 'paid',
    'overdue': 'overdue',
    'cancelled': 'cancelled',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'draft': 'draft',
    'sent': 'sent',
    'paid': 'paid',
    'overdue': 'overdue',
    'cancelled': 'cancelled',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[InvoiceStatusEnum];
  @override
  final String wireName = 'InvoiceStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvoiceStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvoiceStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvoiceStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$InvoiceTypeEnumSerializer
    implements PrimitiveSerializer<InvoiceTypeEnum> {
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
  final Iterable<Type> types = const <Type>[InvoiceTypeEnum];
  @override
  final String wireName = 'InvoiceTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    InvoiceTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  InvoiceTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => InvoiceTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$Invoice extends Invoice {
  @override
  final int id;
  @override
  final String invoiceNumber;
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
  final Address? billingAddress;
  @override
  final Address? shippingAddress;
  @override
  final double subtotal;
  @override
  final double taxAmount;
  @override
  final double discountAmount;
  @override
  final double totalAmount;
  @override
  final String currency;
  @override
  final InvoiceStatusEnum status;
  @override
  final InvoiceTypeEnum type;
  @override
  final Date dueDate;
  @override
  final DateTime? paidAt;
  @override
  final String? paymentMethod;
  @override
  final String? paymentReference;
  @override
  final String? notes;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final int companyId;
  @override
  final int? unitId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<InvoiceItem>? items;

  factory _$Invoice([void Function(InvoiceBuilder)? updates]) =>
      (InvoiceBuilder()..update(updates))._build();

  _$Invoice._({
    required this.id,
    required this.invoiceNumber,
    required this.customerId,
    this.orderId,
    this.subscriptionId,
    required this.customerName,
    required this.customerEmail,
    this.customerPhone,
    this.billingAddress,
    this.shippingAddress,
    required this.subtotal,
    required this.taxAmount,
    required this.discountAmount,
    required this.totalAmount,
    required this.currency,
    required this.status,
    required this.type,
    required this.dueDate,
    this.paidAt,
    this.paymentMethod,
    this.paymentReference,
    this.notes,
    this.metadata,
    required this.companyId,
    this.unitId,
    this.createdAt,
    this.updatedAt,
    this.items,
  }) : super._();
  @override
  Invoice rebuild(void Function(InvoiceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoiceBuilder toBuilder() => InvoiceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Invoice &&
        id == other.id &&
        invoiceNumber == other.invoiceNumber &&
        customerId == other.customerId &&
        orderId == other.orderId &&
        subscriptionId == other.subscriptionId &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        billingAddress == other.billingAddress &&
        shippingAddress == other.shippingAddress &&
        subtotal == other.subtotal &&
        taxAmount == other.taxAmount &&
        discountAmount == other.discountAmount &&
        totalAmount == other.totalAmount &&
        currency == other.currency &&
        status == other.status &&
        type == other.type &&
        dueDate == other.dueDate &&
        paidAt == other.paidAt &&
        paymentMethod == other.paymentMethod &&
        paymentReference == other.paymentReference &&
        notes == other.notes &&
        metadata == other.metadata &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, invoiceNumber.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, shippingAddress.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, taxAmount.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, dueDate.hashCode);
    _$hash = $jc(_$hash, paidAt.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paymentReference.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Invoice')
          ..add('id', id)
          ..add('invoiceNumber', invoiceNumber)
          ..add('customerId', customerId)
          ..add('orderId', orderId)
          ..add('subscriptionId', subscriptionId)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('billingAddress', billingAddress)
          ..add('shippingAddress', shippingAddress)
          ..add('subtotal', subtotal)
          ..add('taxAmount', taxAmount)
          ..add('discountAmount', discountAmount)
          ..add('totalAmount', totalAmount)
          ..add('currency', currency)
          ..add('status', status)
          ..add('type', type)
          ..add('dueDate', dueDate)
          ..add('paidAt', paidAt)
          ..add('paymentMethod', paymentMethod)
          ..add('paymentReference', paymentReference)
          ..add('notes', notes)
          ..add('metadata', metadata)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('items', items))
        .toString();
  }
}

class InvoiceBuilder implements Builder<Invoice, InvoiceBuilder> {
  _$Invoice? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _invoiceNumber;
  String? get invoiceNumber => _$this._invoiceNumber;
  set invoiceNumber(String? invoiceNumber) =>
      _$this._invoiceNumber = invoiceNumber;

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

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  double? _taxAmount;
  double? get taxAmount => _$this._taxAmount;
  set taxAmount(double? taxAmount) => _$this._taxAmount = taxAmount;

  double? _discountAmount;
  double? get discountAmount => _$this._discountAmount;
  set discountAmount(double? discountAmount) =>
      _$this._discountAmount = discountAmount;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  InvoiceStatusEnum? _status;
  InvoiceStatusEnum? get status => _$this._status;
  set status(InvoiceStatusEnum? status) => _$this._status = status;

  InvoiceTypeEnum? _type;
  InvoiceTypeEnum? get type => _$this._type;
  set type(InvoiceTypeEnum? type) => _$this._type = type;

  Date? _dueDate;
  Date? get dueDate => _$this._dueDate;
  set dueDate(Date? dueDate) => _$this._dueDate = dueDate;

  DateTime? _paidAt;
  DateTime? get paidAt => _$this._paidAt;
  set paidAt(DateTime? paidAt) => _$this._paidAt = paidAt;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _paymentReference;
  String? get paymentReference => _$this._paymentReference;
  set paymentReference(String? paymentReference) =>
      _$this._paymentReference = paymentReference;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<InvoiceItem>? _items;
  ListBuilder<InvoiceItem> get items =>
      _$this._items ??= ListBuilder<InvoiceItem>();
  set items(ListBuilder<InvoiceItem>? items) => _$this._items = items;

  InvoiceBuilder() {
    Invoice._defaults(this);
  }

  InvoiceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _invoiceNumber = $v.invoiceNumber;
      _customerId = $v.customerId;
      _orderId = $v.orderId;
      _subscriptionId = $v.subscriptionId;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _customerPhone = $v.customerPhone;
      _billingAddress = $v.billingAddress?.toBuilder();
      _shippingAddress = $v.shippingAddress?.toBuilder();
      _subtotal = $v.subtotal;
      _taxAmount = $v.taxAmount;
      _discountAmount = $v.discountAmount;
      _totalAmount = $v.totalAmount;
      _currency = $v.currency;
      _status = $v.status;
      _type = $v.type;
      _dueDate = $v.dueDate;
      _paidAt = $v.paidAt;
      _paymentMethod = $v.paymentMethod;
      _paymentReference = $v.paymentReference;
      _notes = $v.notes;
      _metadata = $v.metadata?.toBuilder();
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Invoice other) {
    _$v = other as _$Invoice;
  }

  @override
  void update(void Function(InvoiceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Invoice build() => _build();

  _$Invoice _build() {
    _$Invoice _$result;
    try {
      _$result =
          _$v ??
          _$Invoice._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Invoice', 'id'),
            invoiceNumber: BuiltValueNullFieldError.checkNotNull(
              invoiceNumber,
              r'Invoice',
              'invoiceNumber',
            ),
            customerId: BuiltValueNullFieldError.checkNotNull(
              customerId,
              r'Invoice',
              'customerId',
            ),
            orderId: orderId,
            subscriptionId: subscriptionId,
            customerName: BuiltValueNullFieldError.checkNotNull(
              customerName,
              r'Invoice',
              'customerName',
            ),
            customerEmail: BuiltValueNullFieldError.checkNotNull(
              customerEmail,
              r'Invoice',
              'customerEmail',
            ),
            customerPhone: customerPhone,
            billingAddress: _billingAddress?.build(),
            shippingAddress: _shippingAddress?.build(),
            subtotal: BuiltValueNullFieldError.checkNotNull(
              subtotal,
              r'Invoice',
              'subtotal',
            ),
            taxAmount: BuiltValueNullFieldError.checkNotNull(
              taxAmount,
              r'Invoice',
              'taxAmount',
            ),
            discountAmount: BuiltValueNullFieldError.checkNotNull(
              discountAmount,
              r'Invoice',
              'discountAmount',
            ),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
              totalAmount,
              r'Invoice',
              'totalAmount',
            ),
            currency: BuiltValueNullFieldError.checkNotNull(
              currency,
              r'Invoice',
              'currency',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'Invoice',
              'status',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Invoice',
              'type',
            ),
            dueDate: BuiltValueNullFieldError.checkNotNull(
              dueDate,
              r'Invoice',
              'dueDate',
            ),
            paidAt: paidAt,
            paymentMethod: paymentMethod,
            paymentReference: paymentReference,
            notes: notes,
            metadata: _metadata?.build(),
            companyId: BuiltValueNullFieldError.checkNotNull(
              companyId,
              r'Invoice',
              'companyId',
            ),
            unitId: unitId,
            createdAt: createdAt,
            updatedAt: updatedAt,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'billingAddress';
        _billingAddress?.build();
        _$failedField = 'shippingAddress';
        _shippingAddress?.build();

        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Invoice',
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
