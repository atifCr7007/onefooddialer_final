// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_preparation_resource_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenPreparationResourceProduct
    extends KitchenPreparationResourceProduct {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? kitchenCode;

  factory _$KitchenPreparationResourceProduct([
    void Function(KitchenPreparationResourceProductBuilder)? updates,
  ]) => (KitchenPreparationResourceProductBuilder()..update(updates))._build();

  _$KitchenPreparationResourceProduct._({this.id, this.name, this.kitchenCode})
    : super._();
  @override
  KitchenPreparationResourceProduct rebuild(
    void Function(KitchenPreparationResourceProductBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KitchenPreparationResourceProductBuilder toBuilder() =>
      KitchenPreparationResourceProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenPreparationResourceProduct &&
        id == other.id &&
        name == other.name &&
        kitchenCode == other.kitchenCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, kitchenCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenPreparationResourceProduct')
          ..add('id', id)
          ..add('name', name)
          ..add('kitchenCode', kitchenCode))
        .toString();
  }
}

class KitchenPreparationResourceProductBuilder
    implements
        Builder<
          KitchenPreparationResourceProduct,
          KitchenPreparationResourceProductBuilder
        > {
  _$KitchenPreparationResourceProduct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _kitchenCode;
  String? get kitchenCode => _$this._kitchenCode;
  set kitchenCode(String? kitchenCode) => _$this._kitchenCode = kitchenCode;

  KitchenPreparationResourceProductBuilder() {
    KitchenPreparationResourceProduct._defaults(this);
  }

  KitchenPreparationResourceProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _kitchenCode = $v.kitchenCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenPreparationResourceProduct other) {
    _$v = other as _$KitchenPreparationResourceProduct;
  }

  @override
  void update(
    void Function(KitchenPreparationResourceProductBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  KitchenPreparationResourceProduct build() => _build();

  _$KitchenPreparationResourceProduct _build() {
    final _$result =
        _$v ??
        _$KitchenPreparationResourceProduct._(
          id: id,
          name: name,
          kitchenCode: kitchenCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
