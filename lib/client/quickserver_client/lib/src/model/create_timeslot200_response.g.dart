// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_timeslot200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTimeslot200Response extends CreateTimeslot200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Timeslot? data;

  factory _$CreateTimeslot200Response(
          [void Function(CreateTimeslot200ResponseBuilder)? updates]) =>
      (CreateTimeslot200ResponseBuilder()..update(updates))._build();

  _$CreateTimeslot200Response._({this.success, this.message, this.data})
      : super._();
  @override
  CreateTimeslot200Response rebuild(
          void Function(CreateTimeslot200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTimeslot200ResponseBuilder toBuilder() =>
      CreateTimeslot200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTimeslot200Response &&
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
    return (newBuiltValueToStringHelper(r'CreateTimeslot200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateTimeslot200ResponseBuilder
    implements
        Builder<CreateTimeslot200Response, CreateTimeslot200ResponseBuilder> {
  _$CreateTimeslot200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TimeslotBuilder? _data;
  TimeslotBuilder get data => _$this._data ??= TimeslotBuilder();
  set data(TimeslotBuilder? data) => _$this._data = data;

  CreateTimeslot200ResponseBuilder() {
    CreateTimeslot200Response._defaults(this);
  }

  CreateTimeslot200ResponseBuilder get _$this {
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
  void replace(CreateTimeslot200Response other) {
    _$v = other as _$CreateTimeslot200Response;
  }

  @override
  void update(void Function(CreateTimeslot200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTimeslot200Response build() => _build();

  _$CreateTimeslot200Response _build() {
    _$CreateTimeslot200Response _$result;
    try {
      _$result = _$v ??
          _$CreateTimeslot200Response._(
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
            r'CreateTimeslot200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
