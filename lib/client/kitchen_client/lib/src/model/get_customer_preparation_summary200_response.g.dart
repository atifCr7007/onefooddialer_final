// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_preparation_summary200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCustomerPreparationSummary200Response
    extends GetCustomerPreparationSummary200Response {
  @override
  final bool? success;
  @override
  final GetCustomerPreparationSummary200ResponseData? data;

  factory _$GetCustomerPreparationSummary200Response([
    void Function(GetCustomerPreparationSummary200ResponseBuilder)? updates,
  ]) => (GetCustomerPreparationSummary200ResponseBuilder()..update(updates))
      ._build();

  _$GetCustomerPreparationSummary200Response._({this.success, this.data})
    : super._();
  @override
  GetCustomerPreparationSummary200Response rebuild(
    void Function(GetCustomerPreparationSummary200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCustomerPreparationSummary200ResponseBuilder toBuilder() =>
      GetCustomerPreparationSummary200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCustomerPreparationSummary200Response &&
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
    return (newBuiltValueToStringHelper(
            r'GetCustomerPreparationSummary200Response',
          )
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetCustomerPreparationSummary200ResponseBuilder
    implements
        Builder<
          GetCustomerPreparationSummary200Response,
          GetCustomerPreparationSummary200ResponseBuilder
        > {
  _$GetCustomerPreparationSummary200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetCustomerPreparationSummary200ResponseDataBuilder? _data;
  GetCustomerPreparationSummary200ResponseDataBuilder get data =>
      _$this._data ??= GetCustomerPreparationSummary200ResponseDataBuilder();
  set data(GetCustomerPreparationSummary200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetCustomerPreparationSummary200ResponseBuilder() {
    GetCustomerPreparationSummary200Response._defaults(this);
  }

  GetCustomerPreparationSummary200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCustomerPreparationSummary200Response other) {
    _$v = other as _$GetCustomerPreparationSummary200Response;
  }

  @override
  void update(
    void Function(GetCustomerPreparationSummary200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetCustomerPreparationSummary200Response build() => _build();

  _$GetCustomerPreparationSummary200Response _build() {
    _$GetCustomerPreparationSummary200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetCustomerPreparationSummary200Response._(
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
          r'GetCustomerPreparationSummary200Response',
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
