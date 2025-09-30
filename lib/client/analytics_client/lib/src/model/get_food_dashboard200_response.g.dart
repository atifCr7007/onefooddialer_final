// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_food_dashboard200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFoodDashboard200Response extends GetFoodDashboard200Response {
  @override
  final String? status;
  @override
  final GetFoodDashboard200ResponseData? data;

  factory _$GetFoodDashboard200Response(
          [void Function(GetFoodDashboard200ResponseBuilder)? updates]) =>
      (GetFoodDashboard200ResponseBuilder()..update(updates))._build();

  _$GetFoodDashboard200Response._({this.status, this.data}) : super._();
  @override
  GetFoodDashboard200Response rebuild(
          void Function(GetFoodDashboard200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFoodDashboard200ResponseBuilder toBuilder() =>
      GetFoodDashboard200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFoodDashboard200Response &&
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
    return (newBuiltValueToStringHelper(r'GetFoodDashboard200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetFoodDashboard200ResponseBuilder
    implements
        Builder<GetFoodDashboard200Response,
            GetFoodDashboard200ResponseBuilder> {
  _$GetFoodDashboard200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GetFoodDashboard200ResponseDataBuilder? _data;
  GetFoodDashboard200ResponseDataBuilder get data =>
      _$this._data ??= GetFoodDashboard200ResponseDataBuilder();
  set data(GetFoodDashboard200ResponseDataBuilder? data) => _$this._data = data;

  GetFoodDashboard200ResponseBuilder() {
    GetFoodDashboard200Response._defaults(this);
  }

  GetFoodDashboard200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFoodDashboard200Response other) {
    _$v = other as _$GetFoodDashboard200Response;
  }

  @override
  void update(void Function(GetFoodDashboard200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFoodDashboard200Response build() => _build();

  _$GetFoodDashboard200Response _build() {
    _$GetFoodDashboard200Response _$result;
    try {
      _$result = _$v ??
          _$GetFoodDashboard200Response._(
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
            r'GetFoodDashboard200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
