// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_avg_meal_year_month_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalesAvgMealYearMonthGet200Response
    extends SalesAvgMealYearMonthGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<AvgMeal>? data;

  factory _$SalesAvgMealYearMonthGet200Response([
    void Function(SalesAvgMealYearMonthGet200ResponseBuilder)? updates,
  ]) =>
      (SalesAvgMealYearMonthGet200ResponseBuilder()..update(updates))._build();

  _$SalesAvgMealYearMonthGet200Response._({this.status, this.data}) : super._();
  @override
  SalesAvgMealYearMonthGet200Response rebuild(
    void Function(SalesAvgMealYearMonthGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SalesAvgMealYearMonthGet200ResponseBuilder toBuilder() =>
      SalesAvgMealYearMonthGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalesAvgMealYearMonthGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SalesAvgMealYearMonthGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class SalesAvgMealYearMonthGet200ResponseBuilder
    implements
        Builder<
          SalesAvgMealYearMonthGet200Response,
          SalesAvgMealYearMonthGet200ResponseBuilder
        > {
  _$SalesAvgMealYearMonthGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<AvgMeal>? _data;
  ListBuilder<AvgMeal> get data => _$this._data ??= ListBuilder<AvgMeal>();
  set data(ListBuilder<AvgMeal>? data) => _$this._data = data;

  SalesAvgMealYearMonthGet200ResponseBuilder() {
    SalesAvgMealYearMonthGet200Response._defaults(this);
  }

  SalesAvgMealYearMonthGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalesAvgMealYearMonthGet200Response other) {
    _$v = other as _$SalesAvgMealYearMonthGet200Response;
  }

  @override
  void update(
    void Function(SalesAvgMealYearMonthGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  SalesAvgMealYearMonthGet200Response build() => _build();

  _$SalesAvgMealYearMonthGet200Response _build() {
    _$SalesAvgMealYearMonthGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$SalesAvgMealYearMonthGet200Response._(
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
          r'SalesAvgMealYearMonthGet200Response',
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
