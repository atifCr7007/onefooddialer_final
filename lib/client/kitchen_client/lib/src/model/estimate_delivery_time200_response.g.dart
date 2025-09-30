// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate_delivery_time200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstimateDeliveryTime200Response
    extends EstimateDeliveryTime200Response {
  @override
  final bool? success;
  @override
  final EstimateDeliveryTime200ResponseData? data;

  factory _$EstimateDeliveryTime200Response([
    void Function(EstimateDeliveryTime200ResponseBuilder)? updates,
  ]) => (EstimateDeliveryTime200ResponseBuilder()..update(updates))._build();

  _$EstimateDeliveryTime200Response._({this.success, this.data}) : super._();
  @override
  EstimateDeliveryTime200Response rebuild(
    void Function(EstimateDeliveryTime200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EstimateDeliveryTime200ResponseBuilder toBuilder() =>
      EstimateDeliveryTime200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimateDeliveryTime200Response &&
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
    return (newBuiltValueToStringHelper(r'EstimateDeliveryTime200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class EstimateDeliveryTime200ResponseBuilder
    implements
        Builder<
          EstimateDeliveryTime200Response,
          EstimateDeliveryTime200ResponseBuilder
        > {
  _$EstimateDeliveryTime200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  EstimateDeliveryTime200ResponseDataBuilder? _data;
  EstimateDeliveryTime200ResponseDataBuilder get data =>
      _$this._data ??= EstimateDeliveryTime200ResponseDataBuilder();
  set data(EstimateDeliveryTime200ResponseDataBuilder? data) =>
      _$this._data = data;

  EstimateDeliveryTime200ResponseBuilder() {
    EstimateDeliveryTime200Response._defaults(this);
  }

  EstimateDeliveryTime200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimateDeliveryTime200Response other) {
    _$v = other as _$EstimateDeliveryTime200Response;
  }

  @override
  void update(void Function(EstimateDeliveryTime200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstimateDeliveryTime200Response build() => _build();

  _$EstimateDeliveryTime200Response _build() {
    _$EstimateDeliveryTime200Response _$result;
    try {
      _$result =
          _$v ??
          _$EstimateDeliveryTime200Response._(
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
          r'EstimateDeliveryTime200Response',
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
