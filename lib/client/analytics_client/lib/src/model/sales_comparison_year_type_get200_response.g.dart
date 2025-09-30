// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_comparison_year_type_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SalesComparisonYearTypeGet200Response
    extends SalesComparisonYearTypeGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<SalesComparison>? data;

  factory _$SalesComparisonYearTypeGet200Response(
          [void Function(SalesComparisonYearTypeGet200ResponseBuilder)?
              updates]) =>
      (SalesComparisonYearTypeGet200ResponseBuilder()..update(updates))
          ._build();

  _$SalesComparisonYearTypeGet200Response._({this.status, this.data})
      : super._();
  @override
  SalesComparisonYearTypeGet200Response rebuild(
          void Function(SalesComparisonYearTypeGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SalesComparisonYearTypeGet200ResponseBuilder toBuilder() =>
      SalesComparisonYearTypeGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SalesComparisonYearTypeGet200Response &&
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
    return (newBuiltValueToStringHelper(
            r'SalesComparisonYearTypeGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class SalesComparisonYearTypeGet200ResponseBuilder
    implements
        Builder<SalesComparisonYearTypeGet200Response,
            SalesComparisonYearTypeGet200ResponseBuilder> {
  _$SalesComparisonYearTypeGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<SalesComparison>? _data;
  ListBuilder<SalesComparison> get data =>
      _$this._data ??= ListBuilder<SalesComparison>();
  set data(ListBuilder<SalesComparison>? data) => _$this._data = data;

  SalesComparisonYearTypeGet200ResponseBuilder() {
    SalesComparisonYearTypeGet200Response._defaults(this);
  }

  SalesComparisonYearTypeGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SalesComparisonYearTypeGet200Response other) {
    _$v = other as _$SalesComparisonYearTypeGet200Response;
  }

  @override
  void update(
      void Function(SalesComparisonYearTypeGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SalesComparisonYearTypeGet200Response build() => _build();

  _$SalesComparisonYearTypeGet200Response _build() {
    _$SalesComparisonYearTypeGet200Response _$result;
    try {
      _$result = _$v ??
          _$SalesComparisonYearTypeGet200Response._(
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
            r'SalesComparisonYearTypeGet200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
