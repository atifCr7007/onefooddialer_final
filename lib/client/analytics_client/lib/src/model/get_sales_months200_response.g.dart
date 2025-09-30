// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sales_months200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSalesMonths200Response extends GetSalesMonths200Response {
  @override
  final String? status;
  @override
  final BuiltMap<String, String>? data;

  factory _$GetSalesMonths200Response(
          [void Function(GetSalesMonths200ResponseBuilder)? updates]) =>
      (GetSalesMonths200ResponseBuilder()..update(updates))._build();

  _$GetSalesMonths200Response._({this.status, this.data}) : super._();
  @override
  GetSalesMonths200Response rebuild(
          void Function(GetSalesMonths200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSalesMonths200ResponseBuilder toBuilder() =>
      GetSalesMonths200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSalesMonths200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSalesMonths200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetSalesMonths200ResponseBuilder
    implements
        Builder<GetSalesMonths200Response, GetSalesMonths200ResponseBuilder> {
  _$GetSalesMonths200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, String>? _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= MapBuilder<String, String>();
  set data(MapBuilder<String, String>? data) => _$this._data = data;

  GetSalesMonths200ResponseBuilder() {
    GetSalesMonths200Response._defaults(this);
  }

  GetSalesMonths200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSalesMonths200Response other) {
    _$v = other as _$GetSalesMonths200Response;
  }

  @override
  void update(void Function(GetSalesMonths200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSalesMonths200Response build() => _build();

  _$GetSalesMonths200Response _build() {
    _$GetSalesMonths200Response _$result;
    try {
      _$result = _$v ??
          _$GetSalesMonths200Response._(
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
            r'GetSalesMonths200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
