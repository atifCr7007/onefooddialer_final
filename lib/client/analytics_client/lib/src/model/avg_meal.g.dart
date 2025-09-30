// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avg_meal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvgMeal extends AvgMeal {
  @override
  final String? mealName;
  @override
  final double? qty;

  factory _$AvgMeal([void Function(AvgMealBuilder)? updates]) =>
      (AvgMealBuilder()..update(updates))._build();

  _$AvgMeal._({this.mealName, this.qty}) : super._();
  @override
  AvgMeal rebuild(void Function(AvgMealBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvgMealBuilder toBuilder() => AvgMealBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvgMeal && mealName == other.mealName && qty == other.qty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mealName.hashCode);
    _$hash = $jc(_$hash, qty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvgMeal')
          ..add('mealName', mealName)
          ..add('qty', qty))
        .toString();
  }
}

class AvgMealBuilder implements Builder<AvgMeal, AvgMealBuilder> {
  _$AvgMeal? _$v;

  String? _mealName;
  String? get mealName => _$this._mealName;
  set mealName(String? mealName) => _$this._mealName = mealName;

  double? _qty;
  double? get qty => _$this._qty;
  set qty(double? qty) => _$this._qty = qty;

  AvgMealBuilder() {
    AvgMeal._defaults(this);
  }

  AvgMealBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealName = $v.mealName;
      _qty = $v.qty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvgMeal other) {
    _$v = other as _$AvgMeal;
  }

  @override
  void update(void Function(AvgMealBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvgMeal build() => _build();

  _$AvgMeal _build() {
    final _$result = _$v ??
        _$AvgMeal._(
          mealName: mealName,
          qty: qty,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
