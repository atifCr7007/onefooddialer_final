// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_preparation_status_for_delivery200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderPreparationStatusForDelivery200Response
    extends GetOrderPreparationStatusForDelivery200Response {
  @override
  final bool? success;
  @override
  final GetOrderPreparationStatusForDelivery200ResponseData? data;

  factory _$GetOrderPreparationStatusForDelivery200Response(
          [void Function(
                  GetOrderPreparationStatusForDelivery200ResponseBuilder)?
              updates]) =>
      (GetOrderPreparationStatusForDelivery200ResponseBuilder()
            ..update(updates))
          ._build();

  _$GetOrderPreparationStatusForDelivery200Response._({this.success, this.data})
      : super._();
  @override
  GetOrderPreparationStatusForDelivery200Response rebuild(
          void Function(GetOrderPreparationStatusForDelivery200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrderPreparationStatusForDelivery200ResponseBuilder toBuilder() =>
      GetOrderPreparationStatusForDelivery200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderPreparationStatusForDelivery200Response &&
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
            r'GetOrderPreparationStatusForDelivery200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetOrderPreparationStatusForDelivery200ResponseBuilder
    implements
        Builder<GetOrderPreparationStatusForDelivery200Response,
            GetOrderPreparationStatusForDelivery200ResponseBuilder> {
  _$GetOrderPreparationStatusForDelivery200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetOrderPreparationStatusForDelivery200ResponseDataBuilder? _data;
  GetOrderPreparationStatusForDelivery200ResponseDataBuilder get data =>
      _$this._data ??=
          GetOrderPreparationStatusForDelivery200ResponseDataBuilder();
  set data(GetOrderPreparationStatusForDelivery200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetOrderPreparationStatusForDelivery200ResponseBuilder() {
    GetOrderPreparationStatusForDelivery200Response._defaults(this);
  }

  GetOrderPreparationStatusForDelivery200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrderPreparationStatusForDelivery200Response other) {
    _$v = other as _$GetOrderPreparationStatusForDelivery200Response;
  }

  @override
  void update(
      void Function(GetOrderPreparationStatusForDelivery200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderPreparationStatusForDelivery200Response build() => _build();

  _$GetOrderPreparationStatusForDelivery200Response _build() {
    _$GetOrderPreparationStatusForDelivery200Response _$result;
    try {
      _$result = _$v ??
          _$GetOrderPreparationStatusForDelivery200Response._(
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
            r'GetOrderPreparationStatusForDelivery200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
