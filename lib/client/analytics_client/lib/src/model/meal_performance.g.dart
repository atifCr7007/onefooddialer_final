// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_performance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MealPerformance extends MealPerformance {
  @override
  final String? productName;
  @override
  final int? qty;

  factory _$MealPerformance([void Function(MealPerformanceBuilder)? updates]) =>
      (MealPerformanceBuilder()..update(updates))._build();

  _$MealPerformance._({this.productName, this.qty}) : super._();
  @override
  MealPerformance rebuild(void Function(MealPerformanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MealPerformanceBuilder toBuilder() => MealPerformanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MealPerformance &&
        productName == other.productName &&
        qty == other.qty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, qty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MealPerformance')
          ..add('productName', productName)
          ..add('qty', qty))
        .toString();
  }
}

class MealPerformanceBuilder
    implements Builder<MealPerformance, MealPerformanceBuilder> {
  _$MealPerformance? _$v;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  int? _qty;
  int? get qty => _$this._qty;
  set qty(int? qty) => _$this._qty = qty;

  MealPerformanceBuilder() {
    MealPerformance._defaults(this);
  }

  MealPerformanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productName = $v.productName;
      _qty = $v.qty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MealPerformance other) {
    _$v = other as _$MealPerformance;
  }

  @override
  void update(void Function(MealPerformanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MealPerformance build() => _build();

  _$MealPerformance _build() {
    final _$result = _$v ??
        _$MealPerformance._(
          productName: productName,
          qty: qty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
