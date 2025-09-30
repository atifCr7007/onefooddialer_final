// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_customization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemCustomization extends ItemCustomization {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? category;
  @override
  final double? price;
  @override
  final int? quantity;

  factory _$ItemCustomization([
    void Function(ItemCustomizationBuilder)? updates,
  ]) => (ItemCustomizationBuilder()..update(updates))._build();

  _$ItemCustomization._({
    this.id,
    this.name,
    this.category,
    this.price,
    this.quantity,
  }) : super._();
  @override
  ItemCustomization rebuild(void Function(ItemCustomizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemCustomizationBuilder toBuilder() =>
      ItemCustomizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemCustomization &&
        id == other.id &&
        name == other.name &&
        category == other.category &&
        price == other.price &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemCustomization')
          ..add('id', id)
          ..add('name', name)
          ..add('category', category)
          ..add('price', price)
          ..add('quantity', quantity))
        .toString();
  }
}

class ItemCustomizationBuilder
    implements Builder<ItemCustomization, ItemCustomizationBuilder> {
  _$ItemCustomization? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ItemCustomizationBuilder() {
    ItemCustomization._defaults(this);
  }

  ItemCustomizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _category = $v.category;
      _price = $v.price;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemCustomization other) {
    _$v = other as _$ItemCustomization;
  }

  @override
  void update(void Function(ItemCustomizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemCustomization build() => _build();

  _$ItemCustomization _build() {
    final _$result =
        _$v ??
        _$ItemCustomization._(
          id: id,
          name: name,
          category: category,
          price: price,
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
