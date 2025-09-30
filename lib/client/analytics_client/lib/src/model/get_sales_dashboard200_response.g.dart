// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sales_dashboard200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSalesDashboard200Response extends GetSalesDashboard200Response {
  @override
  final String? status;
  @override
  final GetSalesDashboard200ResponseData? data;

  factory _$GetSalesDashboard200Response([
    void Function(GetSalesDashboard200ResponseBuilder)? updates,
  ]) => (GetSalesDashboard200ResponseBuilder()..update(updates))._build();

  _$GetSalesDashboard200Response._({this.status, this.data}) : super._();
  @override
  GetSalesDashboard200Response rebuild(
    void Function(GetSalesDashboard200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetSalesDashboard200ResponseBuilder toBuilder() =>
      GetSalesDashboard200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSalesDashboard200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSalesDashboard200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetSalesDashboard200ResponseBuilder
    implements
        Builder<
          GetSalesDashboard200Response,
          GetSalesDashboard200ResponseBuilder
        > {
  _$GetSalesDashboard200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GetSalesDashboard200ResponseDataBuilder? _data;
  GetSalesDashboard200ResponseDataBuilder get data =>
      _$this._data ??= GetSalesDashboard200ResponseDataBuilder();
  set data(GetSalesDashboard200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetSalesDashboard200ResponseBuilder() {
    GetSalesDashboard200Response._defaults(this);
  }

  GetSalesDashboard200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSalesDashboard200Response other) {
    _$v = other as _$GetSalesDashboard200Response;
  }

  @override
  void update(void Function(GetSalesDashboard200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSalesDashboard200Response build() => _build();

  _$GetSalesDashboard200Response _build() {
    _$GetSalesDashboard200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetSalesDashboard200Response._(
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
          r'GetSalesDashboard200Response',
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
