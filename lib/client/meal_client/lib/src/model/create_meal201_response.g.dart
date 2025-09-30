// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_meal201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateMeal201Response extends CreateMeal201Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final Meal? data;

  factory _$CreateMeal201Response([
    void Function(CreateMeal201ResponseBuilder)? updates,
  ]) => (CreateMeal201ResponseBuilder()..update(updates))._build();

  _$CreateMeal201Response._({this.status, this.message, this.data}) : super._();
  @override
  CreateMeal201Response rebuild(
    void Function(CreateMeal201ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateMeal201ResponseBuilder toBuilder() =>
      CreateMeal201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMeal201Response &&
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
    return (newBuiltValueToStringHelper(r'CreateMeal201Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateMeal201ResponseBuilder
    implements Builder<CreateMeal201Response, CreateMeal201ResponseBuilder> {
  _$CreateMeal201Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MealBuilder? _data;
  MealBuilder get data => _$this._data ??= MealBuilder();
  set data(MealBuilder? data) => _$this._data = data;

  CreateMeal201ResponseBuilder() {
    CreateMeal201Response._defaults(this);
  }

  CreateMeal201ResponseBuilder get _$this {
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
  void replace(CreateMeal201Response other) {
    _$v = other as _$CreateMeal201Response;
  }

  @override
  void update(void Function(CreateMeal201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateMeal201Response build() => _build();

  _$CreateMeal201Response _build() {
    _$CreateMeal201Response _$result;
    try {
      _$result =
          _$v ??
          _$CreateMeal201Response._(
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
          r'CreateMeal201Response',
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
