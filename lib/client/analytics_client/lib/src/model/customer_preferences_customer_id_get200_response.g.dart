// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_preferences_customer_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerPreferencesCustomerIdGet200Response
    extends CustomerPreferencesCustomerIdGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<CustomerPreference>? data;

  factory _$CustomerPreferencesCustomerIdGet200Response([
    void Function(CustomerPreferencesCustomerIdGet200ResponseBuilder)? updates,
  ]) => (CustomerPreferencesCustomerIdGet200ResponseBuilder()..update(updates))
      ._build();

  _$CustomerPreferencesCustomerIdGet200Response._({this.status, this.data})
    : super._();
  @override
  CustomerPreferencesCustomerIdGet200Response rebuild(
    void Function(CustomerPreferencesCustomerIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerPreferencesCustomerIdGet200ResponseBuilder toBuilder() =>
      CustomerPreferencesCustomerIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerPreferencesCustomerIdGet200Response &&
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
            r'CustomerPreferencesCustomerIdGet200Response',
          )
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class CustomerPreferencesCustomerIdGet200ResponseBuilder
    implements
        Builder<
          CustomerPreferencesCustomerIdGet200Response,
          CustomerPreferencesCustomerIdGet200ResponseBuilder
        > {
  _$CustomerPreferencesCustomerIdGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<CustomerPreference>? _data;
  ListBuilder<CustomerPreference> get data =>
      _$this._data ??= ListBuilder<CustomerPreference>();
  set data(ListBuilder<CustomerPreference>? data) => _$this._data = data;

  CustomerPreferencesCustomerIdGet200ResponseBuilder() {
    CustomerPreferencesCustomerIdGet200Response._defaults(this);
  }

  CustomerPreferencesCustomerIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerPreferencesCustomerIdGet200Response other) {
    _$v = other as _$CustomerPreferencesCustomerIdGet200Response;
  }

  @override
  void update(
    void Function(CustomerPreferencesCustomerIdGet200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CustomerPreferencesCustomerIdGet200Response build() => _build();

  _$CustomerPreferencesCustomerIdGet200Response _build() {
    _$CustomerPreferencesCustomerIdGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$CustomerPreferencesCustomerIdGet200Response._(
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
          r'CustomerPreferencesCustomerIdGet200Response',
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
