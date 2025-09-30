// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_invoice_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateInvoiceRequestStatusEnum _$updateInvoiceRequestStatusEnum_draft =
    const UpdateInvoiceRequestStatusEnum._('draft');
const UpdateInvoiceRequestStatusEnum _$updateInvoiceRequestStatusEnum_sent =
    const UpdateInvoiceRequestStatusEnum._('sent');
const UpdateInvoiceRequestStatusEnum _$updateInvoiceRequestStatusEnum_paid =
    const UpdateInvoiceRequestStatusEnum._('paid');
const UpdateInvoiceRequestStatusEnum _$updateInvoiceRequestStatusEnum_overdue =
    const UpdateInvoiceRequestStatusEnum._('overdue');
const UpdateInvoiceRequestStatusEnum
_$updateInvoiceRequestStatusEnum_cancelled =
    const UpdateInvoiceRequestStatusEnum._('cancelled');
const UpdateInvoiceRequestStatusEnum
_$updateInvoiceRequestStatusEnum_unknownDefaultOpenApi =
    const UpdateInvoiceRequestStatusEnum._('unknownDefaultOpenApi');

UpdateInvoiceRequestStatusEnum _$updateInvoiceRequestStatusEnumValueOf(
  String name,
) {
  switch (name) {
    case 'draft':
      return _$updateInvoiceRequestStatusEnum_draft;
    case 'sent':
      return _$updateInvoiceRequestStatusEnum_sent;
    case 'paid':
      return _$updateInvoiceRequestStatusEnum_paid;
    case 'overdue':
      return _$updateInvoiceRequestStatusEnum_overdue;
    case 'cancelled':
      return _$updateInvoiceRequestStatusEnum_cancelled;
    case 'unknownDefaultOpenApi':
      return _$updateInvoiceRequestStatusEnum_unknownDefaultOpenApi;
    default:
      return _$updateInvoiceRequestStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<UpdateInvoiceRequestStatusEnum>
_$updateInvoiceRequestStatusEnumValues =
    BuiltSet<UpdateInvoiceRequestStatusEnum>(
      const <UpdateInvoiceRequestStatusEnum>[
        _$updateInvoiceRequestStatusEnum_draft,
        _$updateInvoiceRequestStatusEnum_sent,
        _$updateInvoiceRequestStatusEnum_paid,
        _$updateInvoiceRequestStatusEnum_overdue,
        _$updateInvoiceRequestStatusEnum_cancelled,
        _$updateInvoiceRequestStatusEnum_unknownDefaultOpenApi,
      ],
    );

Serializer<UpdateInvoiceRequestStatusEnum>
_$updateInvoiceRequestStatusEnumSerializer =
    _$UpdateInvoiceRequestStatusEnumSerializer();

class _$UpdateInvoiceRequestStatusEnumSerializer
    implements PrimitiveSerializer<UpdateInvoiceRequestStatusEnum> {
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
  final Iterable<Type> types = const <Type>[UpdateInvoiceRequestStatusEnum];
  @override
  final String wireName = 'UpdateInvoiceRequestStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    UpdateInvoiceRequestStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  UpdateInvoiceRequestStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => UpdateInvoiceRequestStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$UpdateInvoiceRequest extends UpdateInvoiceRequest {
  @override
  final UpdateInvoiceRequestStatusEnum? status;
  @override
  final String? customerName;
  @override
  final String? customerEmail;
  @override
  final String? customerPhone;
  @override
  final Address? billingAddress;
  @override
  final Address? shippingAddress;
  @override
  final Date? dueDate;
  @override
  final String? notes;
  @override
  final BuiltMap<String, JsonObject?>? metadata;

  factory _$UpdateInvoiceRequest([
    void Function(UpdateInvoiceRequestBuilder)? updates,
  ]) => (UpdateInvoiceRequestBuilder()..update(updates))._build();

  _$UpdateInvoiceRequest._({
    this.status,
    this.customerName,
    this.customerEmail,
    this.customerPhone,
    this.billingAddress,
    this.shippingAddress,
    this.dueDate,
    this.notes,
    this.metadata,
  }) : super._();
  @override
  UpdateInvoiceRequest rebuild(
    void Function(UpdateInvoiceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateInvoiceRequestBuilder toBuilder() =>
      UpdateInvoiceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateInvoiceRequest &&
        status == other.status &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        billingAddress == other.billingAddress &&
        shippingAddress == other.shippingAddress &&
        dueDate == other.dueDate &&
        notes == other.notes &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, customerPhone.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, shippingAddress.hashCode);
    _$hash = $jc(_$hash, dueDate.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateInvoiceRequest')
          ..add('status', status)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail)
          ..add('customerPhone', customerPhone)
          ..add('billingAddress', billingAddress)
          ..add('shippingAddress', shippingAddress)
          ..add('dueDate', dueDate)
          ..add('notes', notes)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdateInvoiceRequestBuilder
    implements Builder<UpdateInvoiceRequest, UpdateInvoiceRequestBuilder> {
  _$UpdateInvoiceRequest? _$v;

  UpdateInvoiceRequestStatusEnum? _status;
  UpdateInvoiceRequestStatusEnum? get status => _$this._status;
  set status(UpdateInvoiceRequestStatusEnum? status) => _$this._status = status;

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

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  UpdateInvoiceRequestBuilder() {
    UpdateInvoiceRequest._defaults(this);
  }

  UpdateInvoiceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _customerPhone = $v.customerPhone;
      _billingAddress = $v.billingAddress?.toBuilder();
      _shippingAddress = $v.shippingAddress?.toBuilder();
      _dueDate = $v.dueDate;
      _notes = $v.notes;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateInvoiceRequest other) {
    _$v = other as _$UpdateInvoiceRequest;
  }

  @override
  void update(void Function(UpdateInvoiceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateInvoiceRequest build() => _build();

  _$UpdateInvoiceRequest _build() {
    _$UpdateInvoiceRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateInvoiceRequest._(
            status: status,
            customerName: customerName,
            customerEmail: customerEmail,
            customerPhone: customerPhone,
            billingAddress: _billingAddress?.build(),
            shippingAddress: _shippingAddress?.build(),
            dueDate: dueDate,
            notes: notes,
            metadata: _metadata?.build(),
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateInvoiceRequest',
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
