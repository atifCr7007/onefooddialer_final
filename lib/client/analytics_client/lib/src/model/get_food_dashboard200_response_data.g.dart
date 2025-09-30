// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_dashboard200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFoodDashboard200ResponseData
    extends GetFoodDashboard200ResponseData {
  @override
  final BuiltList<int>? years;
  @override
  final BuiltMap<String, String>? months;
  @override
  final BuiltList<String>? menus;
  @override
  final BuiltList<CommonExtra>? commonExtras;

  factory _$GetFoodDashboard200ResponseData([
    void Function(GetFoodDashboard200ResponseDataBuilder)? updates,
  ]) => (GetFoodDashboard200ResponseDataBuilder()..update(updates))._build();

  _$GetFoodDashboard200ResponseData._({
    this.years,
    this.months,
    this.menus,
    this.commonExtras,
  }) : super._();
  @override
  GetFoodDashboard200ResponseData rebuild(
    void Function(GetFoodDashboard200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetFoodDashboard200ResponseDataBuilder toBuilder() =>
      GetFoodDashboard200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFoodDashboard200ResponseData &&
        years == other.years &&
        months == other.months &&
        menus == other.menus &&
        commonExtras == other.commonExtras;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, years.hashCode);
    _$hash = $jc(_$hash, months.hashCode);
    _$hash = $jc(_$hash, menus.hashCode);
    _$hash = $jc(_$hash, commonExtras.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFoodDashboard200ResponseData')
          ..add('years', years)
          ..add('months', months)
          ..add('menus', menus)
          ..add('commonExtras', commonExtras))
        .toString();
  }
}

class GetFoodDashboard200ResponseDataBuilder
    implements
        Builder<
          GetFoodDashboard200ResponseData,
          GetFoodDashboard200ResponseDataBuilder
        > {
  _$GetFoodDashboard200ResponseData? _$v;

  ListBuilder<int>? _years;
  ListBuilder<int> get years => _$this._years ??= ListBuilder<int>();
  set years(ListBuilder<int>? years) => _$this._years = years;

  MapBuilder<String, String>? _months;
  MapBuilder<String, String> get months =>
      _$this._months ??= MapBuilder<String, String>();
  set months(MapBuilder<String, String>? months) => _$this._months = months;

  ListBuilder<String>? _menus;
  ListBuilder<String> get menus => _$this._menus ??= ListBuilder<String>();
  set menus(ListBuilder<String>? menus) => _$this._menus = menus;

  ListBuilder<CommonExtra>? _commonExtras;
  ListBuilder<CommonExtra> get commonExtras =>
      _$this._commonExtras ??= ListBuilder<CommonExtra>();
  set commonExtras(ListBuilder<CommonExtra>? commonExtras) =>
      _$this._commonExtras = commonExtras;

  GetFoodDashboard200ResponseDataBuilder() {
    GetFoodDashboard200ResponseData._defaults(this);
  }

  GetFoodDashboard200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _years = $v.years?.toBuilder();
      _months = $v.months?.toBuilder();
      _menus = $v.menus?.toBuilder();
      _commonExtras = $v.commonExtras?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFoodDashboard200ResponseData other) {
    _$v = other as _$GetFoodDashboard200ResponseData;
  }

  @override
  void update(void Function(GetFoodDashboard200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFoodDashboard200ResponseData build() => _build();

  _$GetFoodDashboard200ResponseData _build() {
    _$GetFoodDashboard200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$GetFoodDashboard200ResponseData._(
            years: _years?.build(),
            months: _months?.build(),
            menus: _menus?.build(),
            commonExtras: _commonExtras?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'years';
        _years?.build();
        _$failedField = 'months';
        _months?.build();
        _$failedField = 'menus';
        _menus?.build();
        _$failedField = 'commonExtras';
        _commonExtras?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetFoodDashboard200ResponseData',
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
