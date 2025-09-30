// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_by_id200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecipeById200ResponseData extends GetRecipeById200ResponseData {
  @override
  final String? name;
  @override
  final String? recipe;

  factory _$GetRecipeById200ResponseData([
    void Function(GetRecipeById200ResponseDataBuilder)? updates,
  ]) => (GetRecipeById200ResponseDataBuilder()..update(updates))._build();

  _$GetRecipeById200ResponseData._({this.name, this.recipe}) : super._();
  @override
  GetRecipeById200ResponseData rebuild(
    void Function(GetRecipeById200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetRecipeById200ResponseDataBuilder toBuilder() =>
      GetRecipeById200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecipeById200ResponseData &&
        name == other.name &&
        recipe == other.recipe;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, recipe.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetRecipeById200ResponseData')
          ..add('name', name)
          ..add('recipe', recipe))
        .toString();
  }
}

class GetRecipeById200ResponseDataBuilder
    implements
        Builder<
          GetRecipeById200ResponseData,
          GetRecipeById200ResponseDataBuilder
        > {
  _$GetRecipeById200ResponseData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _recipe;
  String? get recipe => _$this._recipe;
  set recipe(String? recipe) => _$this._recipe = recipe;

  GetRecipeById200ResponseDataBuilder() {
    GetRecipeById200ResponseData._defaults(this);
  }

  GetRecipeById200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _recipe = $v.recipe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecipeById200ResponseData other) {
    _$v = other as _$GetRecipeById200ResponseData;
  }

  @override
  void update(void Function(GetRecipeById200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRecipeById200ResponseData build() => _build();

  _$GetRecipeById200ResponseData _build() {
    final _$result =
        _$v ?? _$GetRecipeById200ResponseData._(name: name, recipe: recipe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
