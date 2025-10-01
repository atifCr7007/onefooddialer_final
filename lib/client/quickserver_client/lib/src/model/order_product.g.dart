// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderProduct extends OrderProduct {
  @override
  final int? code;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? type;

  factory _$OrderProduct([void Function(OrderProductBuilder)? updates]) =>
      (OrderProductBuilder()..update(updates))._build();

  _$OrderProduct._({this.code, this.name, this.description, this.type})
      : super._();
  @override
  OrderProduct rebuild(void Function(OrderProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderProductBuilder toBuilder() => OrderProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderProduct &&
        code == other.code &&
        name == other.name &&
        description == other.description &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderProduct')
          ..add('code', code)
          ..add('name', name)
          ..add('description', description)
          ..add('type', type))
        .toString();
  }
}

class OrderProductBuilder
    implements Builder<OrderProduct, OrderProductBuilder> {
  _$OrderProduct? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  OrderProductBuilder() {
    OrderProduct._defaults(this);
  }

  OrderProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _description = $v.description;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderProduct other) {
    _$v = other as _$OrderProduct;
  }

  @override
  void update(void Function(OrderProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderProduct build() => _build();

  _$OrderProduct _build() {
    final _$result = _$v ??
        _$OrderProduct._(
          code: code,
          name: name,
          description: description,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
