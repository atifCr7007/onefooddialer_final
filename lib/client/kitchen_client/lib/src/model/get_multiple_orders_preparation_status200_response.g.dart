// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_multiple_orders_preparation_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMultipleOrdersPreparationStatus200Response
    extends GetMultipleOrdersPreparationStatus200Response {
  @override
  final bool? success;
  @override
  final BuiltMap<
    String,
    GetMultipleOrdersPreparationStatus200ResponseDataValue
  >?
  data;

  factory _$GetMultipleOrdersPreparationStatus200Response([
    void Function(GetMultipleOrdersPreparationStatus200ResponseBuilder)?
    updates,
  ]) =>
      (GetMultipleOrdersPreparationStatus200ResponseBuilder()..update(updates))
          ._build();

  _$GetMultipleOrdersPreparationStatus200Response._({this.success, this.data})
    : super._();
  @override
  GetMultipleOrdersPreparationStatus200Response rebuild(
    void Function(GetMultipleOrdersPreparationStatus200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetMultipleOrdersPreparationStatus200ResponseBuilder toBuilder() =>
      GetMultipleOrdersPreparationStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMultipleOrdersPreparationStatus200Response &&
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
            r'GetMultipleOrdersPreparationStatus200Response',
          )
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetMultipleOrdersPreparationStatus200ResponseBuilder
    implements
        Builder<
          GetMultipleOrdersPreparationStatus200Response,
          GetMultipleOrdersPreparationStatus200ResponseBuilder
        > {
  _$GetMultipleOrdersPreparationStatus200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  MapBuilder<String, GetMultipleOrdersPreparationStatus200ResponseDataValue>?
  _data;
  MapBuilder<String, GetMultipleOrdersPreparationStatus200ResponseDataValue>
  get data => _$this._data ??=
      MapBuilder<
        String,
        GetMultipleOrdersPreparationStatus200ResponseDataValue
      >();
  set data(
    MapBuilder<String, GetMultipleOrdersPreparationStatus200ResponseDataValue>?
    data,
  ) => _$this._data = data;

  GetMultipleOrdersPreparationStatus200ResponseBuilder() {
    GetMultipleOrdersPreparationStatus200Response._defaults(this);
  }

  GetMultipleOrdersPreparationStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMultipleOrdersPreparationStatus200Response other) {
    _$v = other as _$GetMultipleOrdersPreparationStatus200Response;
  }

  @override
  void update(
    void Function(GetMultipleOrdersPreparationStatus200ResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetMultipleOrdersPreparationStatus200Response build() => _build();

  _$GetMultipleOrdersPreparationStatus200Response _build() {
    _$GetMultipleOrdersPreparationStatus200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetMultipleOrdersPreparationStatus200Response._(
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
          r'GetMultipleOrdersPreparationStatus200Response',
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
