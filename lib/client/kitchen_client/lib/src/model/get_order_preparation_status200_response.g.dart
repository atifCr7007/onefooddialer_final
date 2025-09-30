// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_preparation_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderPreparationStatus200Response
    extends GetOrderPreparationStatus200Response {
  @override
  final bool? success;
  @override
  final GetOrderPreparationStatus200ResponseData? data;

  factory _$GetOrderPreparationStatus200Response([
    void Function(GetOrderPreparationStatus200ResponseBuilder)? updates,
  ]) =>
      (GetOrderPreparationStatus200ResponseBuilder()..update(updates))._build();

  _$GetOrderPreparationStatus200Response._({this.success, this.data})
    : super._();
  @override
  GetOrderPreparationStatus200Response rebuild(
    void Function(GetOrderPreparationStatus200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetOrderPreparationStatus200ResponseBuilder toBuilder() =>
      GetOrderPreparationStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderPreparationStatus200Response &&
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
    return (newBuiltValueToStringHelper(r'GetOrderPreparationStatus200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetOrderPreparationStatus200ResponseBuilder
    implements
        Builder<
          GetOrderPreparationStatus200Response,
          GetOrderPreparationStatus200ResponseBuilder
        > {
  _$GetOrderPreparationStatus200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetOrderPreparationStatus200ResponseDataBuilder? _data;
  GetOrderPreparationStatus200ResponseDataBuilder get data =>
      _$this._data ??= GetOrderPreparationStatus200ResponseDataBuilder();
  set data(GetOrderPreparationStatus200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetOrderPreparationStatus200ResponseBuilder() {
    GetOrderPreparationStatus200Response._defaults(this);
  }

  GetOrderPreparationStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrderPreparationStatus200Response other) {
    _$v = other as _$GetOrderPreparationStatus200Response;
  }

  @override
  void update(
    void Function(GetOrderPreparationStatus200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderPreparationStatus200Response build() => _build();

  _$GetOrderPreparationStatus200Response _build() {
    _$GetOrderPreparationStatus200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetOrderPreparationStatus200Response._(
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
          r'GetOrderPreparationStatus200Response',
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
