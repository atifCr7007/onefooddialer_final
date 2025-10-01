// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backorder_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackorderProduct extends BackorderProduct {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;

  factory _$BackorderProduct(
          [void Function(BackorderProductBuilder)? updates]) =>
      (BackorderProductBuilder()..update(updates))._build();

  _$BackorderProduct._({this.id, this.name, this.type}) : super._();
  @override
  BackorderProduct rebuild(void Function(BackorderProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackorderProductBuilder toBuilder() =>
      BackorderProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackorderProduct &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackorderProduct')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class BackorderProductBuilder
    implements Builder<BackorderProduct, BackorderProductBuilder> {
  _$BackorderProduct? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  BackorderProductBuilder() {
    BackorderProduct._defaults(this);
  }

  BackorderProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BackorderProduct other) {
    _$v = other as _$BackorderProduct;
  }

  @override
  void update(void Function(BackorderProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackorderProduct build() => _build();

  _$BackorderProduct _build() {
    final _$result = _$v ??
        _$BackorderProduct._(
          id: id,
          name: name,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
