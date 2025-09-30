// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInvoiceItemRequest extends CreateInvoiceItemRequest {
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

  factory _$CreateInvoiceItemRequest([
    void Function(CreateInvoiceItemRequestBuilder)? updates,
  ]) => (CreateInvoiceItemRequestBuilder()..update(updates))._build();

  _$CreateInvoiceItemRequest._({
    this.productId,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.taxRate,
    this.discountAmount,
  }) : super._();
  @override
  CreateInvoiceItemRequest rebuild(
    void Function(CreateInvoiceItemRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInvoiceItemRequestBuilder toBuilder() =>
      CreateInvoiceItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInvoiceItemRequest &&
        productId == other.productId &&
        description == other.description &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        taxRate == other.taxRate &&
        discountAmount == other.discountAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, taxRate.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInvoiceItemRequest')
          ..add('productId', productId)
          ..add('description', description)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('taxRate', taxRate)
          ..add('discountAmount', discountAmount))
        .toString();
  }
}

class CreateInvoiceItemRequestBuilder
    implements
        Builder<CreateInvoiceItemRequest, CreateInvoiceItemRequestBuilder> {
  _$CreateInvoiceItemRequest? _$v;

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

  CreateInvoiceItemRequestBuilder() {
    CreateInvoiceItemRequest._defaults(this);
  }

  CreateInvoiceItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _description = $v.description;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _taxRate = $v.taxRate;
      _discountAmount = $v.discountAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInvoiceItemRequest other) {
    _$v = other as _$CreateInvoiceItemRequest;
  }

  @override
  void update(void Function(CreateInvoiceItemRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInvoiceItemRequest build() => _build();

  _$CreateInvoiceItemRequest _build() {
    final _$result =
        _$v ??
        _$CreateInvoiceItemRequest._(
          productId: productId,
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'CreateInvoiceItemRequest',
            'description',
          ),
          quantity: BuiltValueNullFieldError.checkNotNull(
            quantity,
            r'CreateInvoiceItemRequest',
            'quantity',
          ),
          unitPrice: BuiltValueNullFieldError.checkNotNull(
            unitPrice,
            r'CreateInvoiceItemRequest',
            'unitPrice',
          ),
          taxRate: taxRate,
          discountAmount: discountAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
