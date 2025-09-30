// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_revenue_year_month_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalesRevenueYearMonthGet200Response
    extends SalesRevenueYearMonthGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<RevenueShare>? data;

  factory _$SalesRevenueYearMonthGet200Response(
          [void Function(SalesRevenueYearMonthGet200ResponseBuilder)?
              updates]) =>
      (SalesRevenueYearMonthGet200ResponseBuilder()..update(updates))._build();

  _$SalesRevenueYearMonthGet200Response._({this.status, this.data}) : super._();
  @override
  SalesRevenueYearMonthGet200Response rebuild(
          void Function(SalesRevenueYearMonthGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SalesRevenueYearMonthGet200ResponseBuilder toBuilder() =>
      SalesRevenueYearMonthGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalesRevenueYearMonthGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SalesRevenueYearMonthGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class SalesRevenueYearMonthGet200ResponseBuilder
    implements
        Builder<SalesRevenueYearMonthGet200Response,
            SalesRevenueYearMonthGet200ResponseBuilder> {
  _$SalesRevenueYearMonthGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<RevenueShare>? _data;
  ListBuilder<RevenueShare> get data =>
      _$this._data ??= ListBuilder<RevenueShare>();
  set data(ListBuilder<RevenueShare>? data) => _$this._data = data;

  SalesRevenueYearMonthGet200ResponseBuilder() {
    SalesRevenueYearMonthGet200Response._defaults(this);
  }

  SalesRevenueYearMonthGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalesRevenueYearMonthGet200Response other) {
    _$v = other as _$SalesRevenueYearMonthGet200Response;
  }

  @override
  void update(
      void Function(SalesRevenueYearMonthGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SalesRevenueYearMonthGet200Response build() => _build();

  _$SalesRevenueYearMonthGet200Response _build() {
    _$SalesRevenueYearMonthGet200Response _$result;
    try {
      _$result = _$v ??
          _$SalesRevenueYearMonthGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'SalesRevenueYearMonthGet200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
