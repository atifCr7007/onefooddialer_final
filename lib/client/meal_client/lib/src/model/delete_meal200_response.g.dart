// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_meal200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMeal200Response extends DeleteMeal200Response {
  @override
  final String? status;
  @override
  final String? message;

  factory _$DeleteMeal200Response([
    void Function(DeleteMeal200ResponseBuilder)? updates,
  ]) => (DeleteMeal200ResponseBuilder()..update(updates))._build();

  _$DeleteMeal200Response._({this.status, this.message}) : super._();
  @override
  DeleteMeal200Response rebuild(
    void Function(DeleteMeal200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteMeal200ResponseBuilder toBuilder() =>
      DeleteMeal200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMeal200Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteMeal200Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class DeleteMeal200ResponseBuilder
    implements Builder<DeleteMeal200Response, DeleteMeal200ResponseBuilder> {
  _$DeleteMeal200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteMeal200ResponseBuilder() {
    DeleteMeal200Response._defaults(this);
  }

  DeleteMeal200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMeal200Response other) {
    _$v = other as _$DeleteMeal200Response;
  }

  @override
  void update(void Function(DeleteMeal200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMeal200Response build() => _build();

  _$DeleteMeal200Response _build() {
    final _$result =
        _$v ?? _$DeleteMeal200Response._(status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
