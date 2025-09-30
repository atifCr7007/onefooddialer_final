// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutritional_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NutritionalInfo extends NutritionalInfo {
  @override
  final int? calories;
  @override
  final double? protein;
  @override
  final double? carbohydrates;
  @override
  final double? fat;
  @override
  final double? fiber;
  @override
  final double? sugar;
  @override
  final double? sodium;

  factory _$NutritionalInfo([void Function(NutritionalInfoBuilder)? updates]) =>
      (NutritionalInfoBuilder()..update(updates))._build();

  _$NutritionalInfo._({
    this.calories,
    this.protein,
    this.carbohydrates,
    this.fat,
    this.fiber,
    this.sugar,
    this.sodium,
  }) : super._();
  @override
  NutritionalInfo rebuild(void Function(NutritionalInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NutritionalInfoBuilder toBuilder() => NutritionalInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NutritionalInfo &&
        calories == other.calories &&
        protein == other.protein &&
        carbohydrates == other.carbohydrates &&
        fat == other.fat &&
        fiber == other.fiber &&
        sugar == other.sugar &&
        sodium == other.sodium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calories.hashCode);
    _$hash = $jc(_$hash, protein.hashCode);
    _$hash = $jc(_$hash, carbohydrates.hashCode);
    _$hash = $jc(_$hash, fat.hashCode);
    _$hash = $jc(_$hash, fiber.hashCode);
    _$hash = $jc(_$hash, sugar.hashCode);
    _$hash = $jc(_$hash, sodium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NutritionalInfo')
          ..add('calories', calories)
          ..add('protein', protein)
          ..add('carbohydrates', carbohydrates)
          ..add('fat', fat)
          ..add('fiber', fiber)
          ..add('sugar', sugar)
          ..add('sodium', sodium))
        .toString();
  }
}

class NutritionalInfoBuilder
    implements Builder<NutritionalInfo, NutritionalInfoBuilder> {
  _$NutritionalInfo? _$v;

  int? _calories;
  int? get calories => _$this._calories;
  set calories(int? calories) => _$this._calories = calories;

  double? _protein;
  double? get protein => _$this._protein;
  set protein(double? protein) => _$this._protein = protein;

  double? _carbohydrates;
  double? get carbohydrates => _$this._carbohydrates;
  set carbohydrates(double? carbohydrates) =>
      _$this._carbohydrates = carbohydrates;

  double? _fat;
  double? get fat => _$this._fat;
  set fat(double? fat) => _$this._fat = fat;

  double? _fiber;
  double? get fiber => _$this._fiber;
  set fiber(double? fiber) => _$this._fiber = fiber;

  double? _sugar;
  double? get sugar => _$this._sugar;
  set sugar(double? sugar) => _$this._sugar = sugar;

  double? _sodium;
  double? get sodium => _$this._sodium;
  set sodium(double? sodium) => _$this._sodium = sodium;

  NutritionalInfoBuilder() {
    NutritionalInfo._defaults(this);
  }

  NutritionalInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calories = $v.calories;
      _protein = $v.protein;
      _carbohydrates = $v.carbohydrates;
      _fat = $v.fat;
      _fiber = $v.fiber;
      _sugar = $v.sugar;
      _sodium = $v.sodium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NutritionalInfo other) {
    _$v = other as _$NutritionalInfo;
  }

  @override
  void update(void Function(NutritionalInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NutritionalInfo build() => _build();

  _$NutritionalInfo _build() {
    final _$result =
        _$v ??
        _$NutritionalInfo._(
          calories: calories,
          protein: protein,
          carbohydrates: carbohydrates,
          fat: fat,
          fiber: fiber,
          sugar: sugar,
          sodium: sodium,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
