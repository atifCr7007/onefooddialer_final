// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_timeslot_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTimeslotById200Response extends GetTimeslotById200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Timeslot? data;

  factory _$GetTimeslotById200Response([
    void Function(GetTimeslotById200ResponseBuilder)? updates,
  ]) => (GetTimeslotById200ResponseBuilder()..update(updates))._build();

  _$GetTimeslotById200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetTimeslotById200Response rebuild(
    void Function(GetTimeslotById200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetTimeslotById200ResponseBuilder toBuilder() =>
      GetTimeslotById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTimeslotById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetTimeslotById200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetTimeslotById200ResponseBuilder
    implements
        Builder<GetTimeslotById200Response, GetTimeslotById200ResponseBuilder> {
  _$GetTimeslotById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TimeslotBuilder? _data;
  TimeslotBuilder get data => _$this._data ??= TimeslotBuilder();
  set data(TimeslotBuilder? data) => _$this._data = data;

  GetTimeslotById200ResponseBuilder() {
    GetTimeslotById200Response._defaults(this);
  }

  GetTimeslotById200ResponseBuilder get _$this {
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
  void replace(GetTimeslotById200Response other) {
    _$v = other as _$GetTimeslotById200Response;
  }

  @override
  void update(void Function(GetTimeslotById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTimeslotById200Response build() => _build();

  _$GetTimeslotById200Response _build() {
    _$GetTimeslotById200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetTimeslotById200Response._(
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
          r'GetTimeslotById200Response',
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
