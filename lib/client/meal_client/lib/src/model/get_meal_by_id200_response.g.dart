// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_meal_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMealById200Response extends GetMealById200Response {
  @override
  final String? status;
  @override
  final Meal? data;

  factory _$GetMealById200Response(
          [void Function(GetMealById200ResponseBuilder)? updates]) =>
      (GetMealById200ResponseBuilder()..update(updates))._build();

  _$GetMealById200Response._({this.status, this.data}) : super._();
  @override
  GetMealById200Response rebuild(
          void Function(GetMealById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMealById200ResponseBuilder toBuilder() =>
      GetMealById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMealById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetMealById200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetMealById200ResponseBuilder
    implements Builder<GetMealById200Response, GetMealById200ResponseBuilder> {
  _$GetMealById200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MealBuilder? _data;
  MealBuilder get data => _$this._data ??= MealBuilder();
  set data(MealBuilder? data) => _$this._data = data;

  GetMealById200ResponseBuilder() {
    GetMealById200Response._defaults(this);
  }

  GetMealById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMealById200Response other) {
    _$v = other as _$GetMealById200Response;
  }

  @override
  void update(void Function(GetMealById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMealById200Response build() => _build();

  _$GetMealById200Response _build() {
    _$GetMealById200Response _$result;
    try {
      _$result = _$v ??
          _$GetMealById200Response._(
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
            r'GetMealById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
