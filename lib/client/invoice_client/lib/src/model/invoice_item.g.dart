// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoiceItem extends InvoiceItem {
  @override
  final int id;
  @override
  final int invoiceId;
  @override
  final int? productId;
  @override
  final String description;
  @override
  final double quantity;
  @override
  final double unitPrice;
  @override
  final double? taxRate;
  @override
  final double? discountAmount;
  @override
  final double totalPrice;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$InvoiceItem([void Function(InvoiceItemBuilder)? updates]) =>
      (InvoiceItemBuilder()..update(updates))._build();

  _$InvoiceItem._({
    required this.id,
    required this.invoiceId,
    this.productId,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.taxRate,
    this.discountAmount,
    required this.totalPrice,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  InvoiceItem rebuild(void Function(InvoiceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoiceItemBuilder toBuilder() => InvoiceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoiceItem &&
        id == other.id &&
        invoiceId == other.invoiceId &&
        productId == other.productId &&
        description == other.description &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        taxRate == other.taxRate &&
        discountAmount == other.discountAmount &&
        totalPrice == other.totalPrice &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, invoiceId.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, taxRate.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoiceItem')
          ..add('id', id)
          ..add('invoiceId', invoiceId)
          ..add('productId', productId)
          ..add('description', description)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('taxRate', taxRate)
          ..add('discountAmount', discountAmount)
          ..add('totalPrice', totalPrice)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class InvoiceItemBuilder implements Builder<InvoiceItem, InvoiceItemBuilder> {
  _$InvoiceItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _invoiceId;
  int? get invoiceId => _$this._invoiceId;
  set invoiceId(int? invoiceId) => _$this._invoiceId = invoiceId;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  double? _taxRate;
  double? get taxRate => _$this._taxRate;
  set taxRate(double? taxRate) => _$this._taxRate = taxRate;

  double? _discountAmount;
  double? get discountAmount => _$this._discountAmount;
  set discountAmount(double? discountAmount) =>
      _$this._discountAmount = discountAmount;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  InvoiceItemBuilder() {
    InvoiceItem._defaults(this);
  }

  InvoiceItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _invoiceId = $v.invoiceId;
      _productId = $v.productId;
      _description = $v.description;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _taxRate = $v.taxRate;
      _discountAmount = $v.discountAmount;
      _totalPrice = $v.totalPrice;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoiceItem other) {
    _$v = other as _$InvoiceItem;
  }

  @override
  void update(void Function(InvoiceItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoiceItem build() => _build();

  _$InvoiceItem _build() {
    final _$result =
        _$v ??
        _$InvoiceItem._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'InvoiceItem', 'id'),
          invoiceId: BuiltValueNullFieldError.checkNotNull(
            invoiceId,
            r'InvoiceItem',
            'invoiceId',
          ),
          productId: productId,
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'InvoiceItem',
            'description',
          ),
          quantity: BuiltValueNullFieldError.checkNotNull(
            quantity,
            r'InvoiceItem',
            'quantity',
          ),
          unitPrice: BuiltValueNullFieldError.checkNotNull(
            unitPrice,
            r'InvoiceItem',
            'unitPrice',
          ),
          taxRate: taxRate,
          discountAmount: discountAmount,
          totalPrice: BuiltValueNullFieldError.checkNotNull(
            totalPrice,
            r'InvoiceItem',
            'totalPrice',
          ),
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
