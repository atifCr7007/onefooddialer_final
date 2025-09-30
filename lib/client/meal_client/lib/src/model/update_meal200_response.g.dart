// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_meal200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMeal200Response extends UpdateMeal200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final Meal? data;

  factory _$UpdateMeal200Response(
          [void Function(UpdateMeal200ResponseBuilder)? updates]) =>
      (UpdateMeal200ResponseBuilder()..update(updates))._build();

  _$UpdateMeal200Response._({this.status, this.message, this.data}) : super._();
  @override
  UpdateMeal200Response rebuild(
          void Function(UpdateMeal200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMeal200ResponseBuilder toBuilder() =>
      UpdateMeal200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMeal200Response &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateMeal200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateMeal200ResponseBuilder
    implements Builder<UpdateMeal200Response, UpdateMeal200ResponseBuilder> {
  _$UpdateMeal200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MealBuilder? _data;
  MealBuilder get data => _$this._data ??= MealBuilder();
  set data(MealBuilder? data) => _$this._data = data;

  UpdateMeal200ResponseBuilder() {
    UpdateMeal200Response._defaults(this);
  }

  UpdateMeal200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMeal200Response other) {
    _$v = other as _$UpdateMeal200Response;
  }

  @override
  void update(void Function(UpdateMeal200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMeal200Response build() => _build();

  _$UpdateMeal200Response _build() {
    _$UpdateMeal200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateMeal200Response._(
            status: status,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateMeal200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
