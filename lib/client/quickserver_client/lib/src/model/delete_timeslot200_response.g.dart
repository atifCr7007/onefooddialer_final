// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_timeslot200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTimeslot200Response extends DeleteTimeslot200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final JsonObject? data;

  factory _$DeleteTimeslot200Response([
    void Function(DeleteTimeslot200ResponseBuilder)? updates,
  ]) => (DeleteTimeslot200ResponseBuilder()..update(updates))._build();

  _$DeleteTimeslot200Response._({this.success, this.message, this.data})
    : super._();
  @override
  DeleteTimeslot200Response rebuild(
    void Function(DeleteTimeslot200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteTimeslot200ResponseBuilder toBuilder() =>
      DeleteTimeslot200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTimeslot200Response &&
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
    return (newBuiltValueToStringHelper(r'DeleteTimeslot200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class DeleteTimeslot200ResponseBuilder
    implements
        Builder<DeleteTimeslot200Response, DeleteTimeslot200ResponseBuilder> {
  _$DeleteTimeslot200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  DeleteTimeslot200ResponseBuilder() {
    DeleteTimeslot200Response._defaults(this);
  }

  DeleteTimeslot200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTimeslot200Response other) {
    _$v = other as _$DeleteTimeslot200Response;
  }

  @override
  void update(void Function(DeleteTimeslot200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTimeslot200Response build() => _build();

  _$DeleteTimeslot200Response _build() {
    final _$result =
        _$v ??
        _$DeleteTimeslot200Response._(
          success: success,
          message: message,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
