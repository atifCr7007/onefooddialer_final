// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_dashboard200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerDashboard200Response
    extends GetCustomerDashboard200Response {
  @override
  final String? status;
  @override
  final GetCustomerDashboard200ResponseData? data;

  factory _$GetCustomerDashboard200Response([
    void Function(GetCustomerDashboard200ResponseBuilder)? updates,
  ]) => (GetCustomerDashboard200ResponseBuilder()..update(updates))._build();

  _$GetCustomerDashboard200Response._({this.status, this.data}) : super._();
  @override
  GetCustomerDashboard200Response rebuild(
    void Function(GetCustomerDashboard200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomerDashboard200ResponseBuilder toBuilder() =>
      GetCustomerDashboard200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerDashboard200Response &&
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
    return (newBuiltValueToStringHelper(r'GetCustomerDashboard200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetCustomerDashboard200ResponseBuilder
    implements
        Builder<
          GetCustomerDashboard200Response,
          GetCustomerDashboard200ResponseBuilder
        > {
  _$GetCustomerDashboard200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GetCustomerDashboard200ResponseDataBuilder? _data;
  GetCustomerDashboard200ResponseDataBuilder get data =>
      _$this._data ??= GetCustomerDashboard200ResponseDataBuilder();
  set data(GetCustomerDashboard200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetCustomerDashboard200ResponseBuilder() {
    GetCustomerDashboard200Response._defaults(this);
  }

  GetCustomerDashboard200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerDashboard200Response other) {
    _$v = other as _$GetCustomerDashboard200Response;
  }

  @override
  void update(void Function(GetCustomerDashboard200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerDashboard200Response build() => _build();

  _$GetCustomerDashboard200Response _build() {
    _$GetCustomerDashboard200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomerDashboard200Response._(
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
          r'GetCustomerDashboard200Response',
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
