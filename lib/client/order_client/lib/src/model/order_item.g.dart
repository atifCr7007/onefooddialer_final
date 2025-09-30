// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderItemStatusEnum _$orderItemStatusEnum_pending =
    const OrderItemStatusEnum._('pending');
const OrderItemStatusEnum _$orderItemStatusEnum_confirmed =
    const OrderItemStatusEnum._('confirmed');
const OrderItemStatusEnum _$orderItemStatusEnum_preparing =
    const OrderItemStatusEnum._('preparing');
const OrderItemStatusEnum _$orderItemStatusEnum_ready =
    const OrderItemStatusEnum._('ready');
const OrderItemStatusEnum _$orderItemStatusEnum_served =
    const OrderItemStatusEnum._('served');
const OrderItemStatusEnum _$orderItemStatusEnum_unknownDefaultOpenApi =
    const OrderItemStatusEnum._('unknownDefaultOpenApi');

OrderItemStatusEnum _$orderItemStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$orderItemStatusEnum_pending;
    case 'confirmed':
      return _$orderItemStatusEnum_confirmed;
    case 'preparing':
      return _$orderItemStatusEnum_preparing;
    case 'ready':
      return _$orderItemStatusEnum_ready;
    case 'served':
      return _$orderItemStatusEnum_served;
    case 'unknownDefaultOpenApi':
      return _$orderItemStatusEnum_unknownDefaultOpenApi;
    default:
      return _$orderItemStatusEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<OrderItemStatusEnum> _$orderItemStatusEnumValues =
    BuiltSet<OrderItemStatusEnum>(const <OrderItemStatusEnum>[
      _$orderItemStatusEnum_pending,
      _$orderItemStatusEnum_confirmed,
      _$orderItemStatusEnum_preparing,
      _$orderItemStatusEnum_ready,
      _$orderItemStatusEnum_served,
      _$orderItemStatusEnum_unknownDefaultOpenApi,
    ]);

Serializer<OrderItemStatusEnum> _$orderItemStatusEnumSerializer =
    _$OrderItemStatusEnumSerializer();

class _$OrderItemStatusEnumSerializer
    implements PrimitiveSerializer<OrderItemStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'preparing': 'preparing',
    'ready': 'ready',
    'served': 'served',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'confirmed': 'confirmed',
    'preparing': 'preparing',
    'ready': 'ready',
    'served': 'served',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderItemStatusEnum];
  @override
  final String wireName = 'OrderItemStatusEnum';

  @override
  Object serialize(
    Serializers serializers,
    OrderItemStatusEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderItemStatusEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderItemStatusEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$OrderItem extends OrderItem {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final String? menuItemId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? quantity;
  @override
  final double? unitPrice;
  @override
  final double? totalPrice;
  @override
  final BuiltList<ItemCustomization>? customizations;
  @override
  final String? specialInstructions;
  @override
  final OrderItemStatusEnum? status;
  @override
  final BuiltList<String>? allergens;
  @override
  final NutritionalInfo? nutritionalInfo;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$OrderItem([void Function(OrderItemBuilder)? updates]) =>
      (OrderItemBuilder()..update(updates))._build();

  _$OrderItem._({
    this.id,
    this.orderId,
    this.menuItemId,
    this.name,
    this.description,
    this.quantity,
    this.unitPrice,
    this.totalPrice,
    this.customizations,
    this.specialInstructions,
    this.status,
    this.allergens,
    this.nutritionalInfo,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  OrderItem rebuild(void Function(OrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderItemBuilder toBuilder() => OrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderItem &&
        id == other.id &&
        orderId == other.orderId &&
        menuItemId == other.menuItemId &&
        name == other.name &&
        description == other.description &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        totalPrice == other.totalPrice &&
        customizations == other.customizations &&
        specialInstructions == other.specialInstructions &&
        status == other.status &&
        allergens == other.allergens &&
        nutritionalInfo == other.nutritionalInfo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, menuItemId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, customizations.hashCode);
    _$hash = $jc(_$hash, specialInstructions.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, allergens.hashCode);
    _$hash = $jc(_$hash, nutritionalInfo.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderItem')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('menuItemId', menuItemId)
          ..add('name', name)
          ..add('description', description)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('totalPrice', totalPrice)
          ..add('customizations', customizations)
          ..add('specialInstructions', specialInstructions)
          ..add('status', status)
          ..add('allergens', allergens)
          ..add('nutritionalInfo', nutritionalInfo)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OrderItemBuilder implements Builder<OrderItem, OrderItemBuilder> {
  _$OrderItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _menuItemId;
  String? get menuItemId => _$this._menuItemId;
  set menuItemId(String? menuItemId) => _$this._menuItemId = menuItemId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  double? _totalPrice;
  double? get totalPrice => _$this._totalPrice;
  set totalPrice(double? totalPrice) => _$this._totalPrice = totalPrice;

  ListBuilder<ItemCustomization>? _customizations;
  ListBuilder<ItemCustomization> get customizations =>
      _$this._customizations ??= ListBuilder<ItemCustomization>();
  set customizations(ListBuilder<ItemCustomization>? customizations) =>
      _$this._customizations = customizations;

  String? _specialInstructions;
  String? get specialInstructions => _$this._specialInstructions;
  set specialInstructions(String? specialInstructions) =>
      _$this._specialInstructions = specialInstructions;

  OrderItemStatusEnum? _status;
  OrderItemStatusEnum? get status => _$this._status;
  set status(OrderItemStatusEnum? status) => _$this._status = status;

  ListBuilder<String>? _allergens;
  ListBuilder<String> get allergens =>
      _$this._allergens ??= ListBuilder<String>();
  set allergens(ListBuilder<String>? allergens) =>
      _$this._allergens = allergens;

  NutritionalInfoBuilder? _nutritionalInfo;
  NutritionalInfoBuilder get nutritionalInfo =>
      _$this._nutritionalInfo ??= NutritionalInfoBuilder();
  set nutritionalInfo(NutritionalInfoBuilder? nutritionalInfo) =>
      _$this._nutritionalInfo = nutritionalInfo;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  OrderItemBuilder() {
    OrderItem._defaults(this);
  }

  OrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _menuItemId = $v.menuItemId;
      _name = $v.name;
      _description = $v.description;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _totalPrice = $v.totalPrice;
      _customizations = $v.customizations?.toBuilder();
      _specialInstructions = $v.specialInstructions;
      _status = $v.status;
      _allergens = $v.allergens?.toBuilder();
      _nutritionalInfo = $v.nutritionalInfo?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderItem other) {
    _$v = other as _$OrderItem;
  }

  @override
  void update(void Function(OrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderItem build() => _build();

  _$OrderItem _build() {
    _$OrderItem _$result;
    try {
      _$result =
          _$v ??
          _$OrderItem._(
            id: id,
            orderId: orderId,
            menuItemId: menuItemId,
            name: name,
            description: description,
            quantity: quantity,
            unitPrice: unitPrice,
            totalPrice: totalPrice,
            customizations: _customizations?.build(),
            specialInstructions: specialInstructions,
            status: status,
            allergens: _allergens?.build(),
            nutritionalInfo: _nutritionalInfo?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customizations';
        _customizations?.build();

        _$failedField = 'allergens';
        _allergens?.build();
        _$failedField = 'nutritionalInfo';
        _nutritionalInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrderItem',
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
