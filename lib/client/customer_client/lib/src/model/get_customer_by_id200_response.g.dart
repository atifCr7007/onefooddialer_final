// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerById200Response extends GetCustomerById200Response {
  @override
  final bool? success;
  @override
  final Customer? data;

  factory _$GetCustomerById200Response(
          [void Function(GetCustomerById200ResponseBuilder)? updates]) =>
      (GetCustomerById200ResponseBuilder()..update(updates))._build();

  _$GetCustomerById200Response._({this.success, this.data}) : super._();
  @override
  GetCustomerById200Response rebuild(
          void Function(GetCustomerById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCustomerById200ResponseBuilder toBuilder() =>
      GetCustomerById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetCustomerById200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetCustomerById200ResponseBuilder
    implements
        Builder<GetCustomerById200Response, GetCustomerById200ResponseBuilder> {
  _$GetCustomerById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CustomerBuilder? _data;
  CustomerBuilder get data => _$this._data ??= CustomerBuilder();
  set data(CustomerBuilder? data) => _$this._data = data;

  GetCustomerById200ResponseBuilder() {
    GetCustomerById200Response._defaults(this);
  }

  GetCustomerById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerById200Response other) {
    _$v = other as _$GetCustomerById200Response;
  }

  @override
  void update(void Function(GetCustomerById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerById200Response build() => _build();

  _$GetCustomerById200Response _build() {
    _$GetCustomerById200Response _$result;
    try {
      _$result = _$v ??
          _$GetCustomerById200Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetCustomerById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
