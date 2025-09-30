// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_timeslots200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTimeslots200Response extends GetTimeslots200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<Timeslot>? data;

  factory _$GetTimeslots200Response([
    void Function(GetTimeslots200ResponseBuilder)? updates,
  ]) => (GetTimeslots200ResponseBuilder()..update(updates))._build();

  _$GetTimeslots200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetTimeslots200Response rebuild(
    void Function(GetTimeslots200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetTimeslots200ResponseBuilder toBuilder() =>
      GetTimeslots200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTimeslots200Response &&
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
    return (newBuiltValueToStringHelper(r'GetTimeslots200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetTimeslots200ResponseBuilder
    implements
        Builder<GetTimeslots200Response, GetTimeslots200ResponseBuilder> {
  _$GetTimeslots200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Timeslot>? _data;
  ListBuilder<Timeslot> get data => _$this._data ??= ListBuilder<Timeslot>();
  set data(ListBuilder<Timeslot>? data) => _$this._data = data;

  GetTimeslots200ResponseBuilder() {
    GetTimeslots200Response._defaults(this);
  }

  GetTimeslots200ResponseBuilder get _$this {
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
  void replace(GetTimeslots200Response other) {
    _$v = other as _$GetTimeslots200Response;
  }

  @override
  void update(void Function(GetTimeslots200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTimeslots200Response build() => _build();

  _$GetTimeslots200Response _build() {
    _$GetTimeslots200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetTimeslots200Response._(
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
          r'GetTimeslots200Response',
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
