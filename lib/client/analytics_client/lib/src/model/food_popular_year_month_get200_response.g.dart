// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_popular_year_month_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FoodPopularYearMonthGet200Response
    extends FoodPopularYearMonthGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<MealPerformance>? data;

  factory _$FoodPopularYearMonthGet200Response(
          [void Function(FoodPopularYearMonthGet200ResponseBuilder)?
              updates]) =>
      (FoodPopularYearMonthGet200ResponseBuilder()..update(updates))._build();

  _$FoodPopularYearMonthGet200Response._({this.status, this.data}) : super._();
  @override
  FoodPopularYearMonthGet200Response rebuild(
          void Function(FoodPopularYearMonthGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodPopularYearMonthGet200ResponseBuilder toBuilder() =>
      FoodPopularYearMonthGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodPopularYearMonthGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoodPopularYearMonthGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class FoodPopularYearMonthGet200ResponseBuilder
    implements
        Builder<FoodPopularYearMonthGet200Response,
            FoodPopularYearMonthGet200ResponseBuilder> {
  _$FoodPopularYearMonthGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<MealPerformance>? _data;
  ListBuilder<MealPerformance> get data =>
      _$this._data ??= ListBuilder<MealPerformance>();
  set data(ListBuilder<MealPerformance>? data) => _$this._data = data;

  FoodPopularYearMonthGet200ResponseBuilder() {
    FoodPopularYearMonthGet200Response._defaults(this);
  }

  FoodPopularYearMonthGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodPopularYearMonthGet200Response other) {
    _$v = other as _$FoodPopularYearMonthGet200Response;
  }

  @override
  void update(
      void Function(FoodPopularYearMonthGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodPopularYearMonthGet200Response build() => _build();

  _$FoodPopularYearMonthGet200Response _build() {
    _$FoodPopularYearMonthGet200Response _$result;
    try {
      _$result = _$v ??
          _$FoodPopularYearMonthGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FoodPopularYearMonthGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
