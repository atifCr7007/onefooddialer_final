// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenProduct extends KitchenProduct {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? kitchenCode;
  @override
  final double? quantity;
  @override
  final String? unit;
  @override
  final int? screen;

  factory _$KitchenProduct([void Function(KitchenProductBuilder)? updates]) =>
      (KitchenProductBuilder()..update(updates))._build();

  _$KitchenProduct._({
    this.id,
    this.name,
    this.kitchenCode,
    this.quantity,
    this.unit,
    this.screen,
  }) : super._();
  @override
  KitchenProduct rebuild(void Function(KitchenProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenProductBuilder toBuilder() => KitchenProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenProduct &&
        id == other.id &&
        name == other.name &&
        kitchenCode == other.kitchenCode &&
        quantity == other.quantity &&
        unit == other.unit &&
        screen == other.screen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, kitchenCode.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, screen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenProduct')
          ..add('id', id)
          ..add('name', name)
          ..add('kitchenCode', kitchenCode)
          ..add('quantity', quantity)
          ..add('unit', unit)
          ..add('screen', screen))
        .toString();
  }
}

class KitchenProductBuilder
    implements Builder<KitchenProduct, KitchenProductBuilder> {
  _$KitchenProduct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _kitchenCode;
  String? get kitchenCode => _$this._kitchenCode;
  set kitchenCode(String? kitchenCode) => _$this._kitchenCode = kitchenCode;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  int? _screen;
  int? get screen => _$this._screen;
  set screen(int? screen) => _$this._screen = screen;

  KitchenProductBuilder() {
    KitchenProduct._defaults(this);
  }

  KitchenProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _kitchenCode = $v.kitchenCode;
      _quantity = $v.quantity;
      _unit = $v.unit;
      _screen = $v.screen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenProduct other) {
    _$v = other as _$KitchenProduct;
  }

  @override
  void update(void Function(KitchenProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenProduct build() => _build();

  _$KitchenProduct _build() {
    final _$result =
        _$v ??
        _$KitchenProduct._(
          id: id,
          name: name,
          kitchenCode: kitchenCode,
          quantity: quantity,
          unit: unit,
          screen: screen,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
