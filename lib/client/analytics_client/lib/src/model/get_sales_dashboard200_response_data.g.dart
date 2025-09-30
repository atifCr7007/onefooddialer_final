// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sales_dashboard200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSalesDashboard200ResponseData
    extends GetSalesDashboard200ResponseData {
  @override
  final BuiltList<int>? years;
  @override
  final BuiltMap<String, String>? months;
  @override
  final BuiltList<PaymentMode>? paymentModes;

  factory _$GetSalesDashboard200ResponseData(
          [void Function(GetSalesDashboard200ResponseDataBuilder)? updates]) =>
      (GetSalesDashboard200ResponseDataBuilder()..update(updates))._build();

  _$GetSalesDashboard200ResponseData._(
      {this.years, this.months, this.paymentModes})
      : super._();
  @override
  GetSalesDashboard200ResponseData rebuild(
          void Function(GetSalesDashboard200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSalesDashboard200ResponseDataBuilder toBuilder() =>
      GetSalesDashboard200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSalesDashboard200ResponseData &&
        years == other.years &&
        months == other.months &&
        paymentModes == other.paymentModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, years.hashCode);
    _$hash = $jc(_$hash, months.hashCode);
    _$hash = $jc(_$hash, paymentModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSalesDashboard200ResponseData')
          ..add('years', years)
          ..add('months', months)
          ..add('paymentModes', paymentModes))
        .toString();
  }
}

class GetSalesDashboard200ResponseDataBuilder
    implements
        Builder<GetSalesDashboard200ResponseData,
            GetSalesDashboard200ResponseDataBuilder> {
  _$GetSalesDashboard200ResponseData? _$v;

  ListBuilder<int>? _years;
  ListBuilder<int> get years => _$this._years ??= ListBuilder<int>();
  set years(ListBuilder<int>? years) => _$this._years = years;

  MapBuilder<String, String>? _months;
  MapBuilder<String, String> get months =>
      _$this._months ??= MapBuilder<String, String>();
  set months(MapBuilder<String, String>? months) => _$this._months = months;

  ListBuilder<PaymentMode>? _paymentModes;
  ListBuilder<PaymentMode> get paymentModes =>
      _$this._paymentModes ??= ListBuilder<PaymentMode>();
  set paymentModes(ListBuilder<PaymentMode>? paymentModes) =>
      _$this._paymentModes = paymentModes;

  GetSalesDashboard200ResponseDataBuilder() {
    GetSalesDashboard200ResponseData._defaults(this);
  }

  GetSalesDashboard200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _years = $v.years?.toBuilder();
      _months = $v.months?.toBuilder();
      _paymentModes = $v.paymentModes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSalesDashboard200ResponseData other) {
    _$v = other as _$GetSalesDashboard200ResponseData;
  }

  @override
  void update(void Function(GetSalesDashboard200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSalesDashboard200ResponseData build() => _build();

  _$GetSalesDashboard200ResponseData _build() {
    _$GetSalesDashboard200ResponseData _$result;
    try {
      _$result = _$v ??
          _$GetSalesDashboard200ResponseData._(
            years: _years?.build(),
            months: _months?.build(),
            paymentModes: _paymentModes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'years';
        _years?.build();
        _$failedField = 'months';
        _months?.build();
        _$failedField = 'paymentModes';
        _paymentModes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetSalesDashboard200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
