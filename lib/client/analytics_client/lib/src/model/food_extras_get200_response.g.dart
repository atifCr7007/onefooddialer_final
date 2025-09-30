// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_extras_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FoodExtrasGet200Response extends FoodExtrasGet200Response {
  @override
  final String? status;
  @override
  final BuiltList<CommonExtra>? data;

  factory _$FoodExtrasGet200Response(
          [void Function(FoodExtrasGet200ResponseBuilder)? updates]) =>
      (FoodExtrasGet200ResponseBuilder()..update(updates))._build();

  _$FoodExtrasGet200Response._({this.status, this.data}) : super._();
  @override
  FoodExtrasGet200Response rebuild(
          void Function(FoodExtrasGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodExtrasGet200ResponseBuilder toBuilder() =>
      FoodExtrasGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoodExtrasGet200Response &&
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
    return (newBuiltValueToStringHelper(r'FoodExtrasGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class FoodExtrasGet200ResponseBuilder
    implements
        Builder<FoodExtrasGet200Response, FoodExtrasGet200ResponseBuilder> {
  _$FoodExtrasGet200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<CommonExtra>? _data;
  ListBuilder<CommonExtra> get data =>
      _$this._data ??= ListBuilder<CommonExtra>();
  set data(ListBuilder<CommonExtra>? data) => _$this._data = data;

  FoodExtrasGet200ResponseBuilder() {
    FoodExtrasGet200Response._defaults(this);
  }

  FoodExtrasGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodExtrasGet200Response other) {
    _$v = other as _$FoodExtrasGet200Response;
  }

  @override
  void update(void Function(FoodExtrasGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoodExtrasGet200Response build() => _build();

  _$FoodExtrasGet200Response _build() {
    _$FoodExtrasGet200Response _$result;
    try {
      _$result = _$v ??
          _$FoodExtrasGet200Response._(
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
            r'FoodExtrasGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
