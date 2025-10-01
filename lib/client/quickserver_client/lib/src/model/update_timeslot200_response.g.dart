// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_timeslot200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTimeslot200Response extends UpdateTimeslot200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Timeslot? data;

  factory _$UpdateTimeslot200Response(
          [void Function(UpdateTimeslot200ResponseBuilder)? updates]) =>
      (UpdateTimeslot200ResponseBuilder()..update(updates))._build();

  _$UpdateTimeslot200Response._({this.success, this.message, this.data})
      : super._();
  @override
  UpdateTimeslot200Response rebuild(
          void Function(UpdateTimeslot200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTimeslot200ResponseBuilder toBuilder() =>
      UpdateTimeslot200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTimeslot200Response &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTimeslot200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateTimeslot200ResponseBuilder
    implements
        Builder<UpdateTimeslot200Response, UpdateTimeslot200ResponseBuilder> {
  _$UpdateTimeslot200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TimeslotBuilder? _data;
  TimeslotBuilder get data => _$this._data ??= TimeslotBuilder();
  set data(TimeslotBuilder? data) => _$this._data = data;

  UpdateTimeslot200ResponseBuilder() {
    UpdateTimeslot200Response._defaults(this);
  }

  UpdateTimeslot200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTimeslot200Response other) {
    _$v = other as _$UpdateTimeslot200Response;
  }

  @override
  void update(void Function(UpdateTimeslot200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTimeslot200Response build() => _build();

  _$UpdateTimeslot200Response _build() {
    _$UpdateTimeslot200Response _$result;
    try {
      _$result = _$v ??
          _$UpdateTimeslot200Response._(
            success: success,
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
            r'UpdateTimeslot200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
