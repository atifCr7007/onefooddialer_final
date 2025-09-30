// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sales_years200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSalesYears200Response extends GetSalesYears200Response {
  @override
  final String? status;
  @override
  final BuiltList<int>? data;

  factory _$GetSalesYears200Response([
    void Function(GetSalesYears200ResponseBuilder)? updates,
  ]) => (GetSalesYears200ResponseBuilder()..update(updates))._build();

  _$GetSalesYears200Response._({this.status, this.data}) : super._();
  @override
  GetSalesYears200Response rebuild(
    void Function(GetSalesYears200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetSalesYears200ResponseBuilder toBuilder() =>
      GetSalesYears200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSalesYears200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSalesYears200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetSalesYears200ResponseBuilder
    implements
        Builder<GetSalesYears200Response, GetSalesYears200ResponseBuilder> {
  _$GetSalesYears200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<int>? _data;
  ListBuilder<int> get data => _$this._data ??= ListBuilder<int>();
  set data(ListBuilder<int>? data) => _$this._data = data;

  GetSalesYears200ResponseBuilder() {
    GetSalesYears200Response._defaults(this);
  }

  GetSalesYears200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSalesYears200Response other) {
    _$v = other as _$GetSalesYears200Response;
  }

  @override
  void update(void Function(GetSalesYears200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSalesYears200Response build() => _build();

  _$GetSalesYears200Response _build() {
    _$GetSalesYears200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetSalesYears200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetSalesYears200Response',
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
