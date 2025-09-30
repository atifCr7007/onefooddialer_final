// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customers200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomers200Response extends GetCustomers200Response {
  @override
  final bool? success;
  @override
  final GetCustomers200ResponseData? data;

  factory _$GetCustomers200Response([
    void Function(GetCustomers200ResponseBuilder)? updates,
  ]) => (GetCustomers200ResponseBuilder()..update(updates))._build();

  _$GetCustomers200Response._({this.success, this.data}) : super._();
  @override
  GetCustomers200Response rebuild(
    void Function(GetCustomers200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomers200ResponseBuilder toBuilder() =>
      GetCustomers200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomers200Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCustomers200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetCustomers200ResponseBuilder
    implements
        Builder<GetCustomers200Response, GetCustomers200ResponseBuilder> {
  _$GetCustomers200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetCustomers200ResponseDataBuilder? _data;
  GetCustomers200ResponseDataBuilder get data =>
      _$this._data ??= GetCustomers200ResponseDataBuilder();
  set data(GetCustomers200ResponseDataBuilder? data) => _$this._data = data;

  GetCustomers200ResponseBuilder() {
    GetCustomers200Response._defaults(this);
  }

  GetCustomers200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomers200Response other) {
    _$v = other as _$GetCustomers200Response;
  }

  @override
  void update(void Function(GetCustomers200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomers200Response build() => _build();

  _$GetCustomers200Response _build() {
    _$GetCustomers200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomers200Response._(success: success, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetCustomers200Response',
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
