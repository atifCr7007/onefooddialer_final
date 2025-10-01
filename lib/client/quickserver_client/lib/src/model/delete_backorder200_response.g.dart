// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_backorder200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteBackorder200Response extends DeleteBackorder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final JsonObject? data;

  factory _$DeleteBackorder200Response([
    void Function(DeleteBackorder200ResponseBuilder)? updates,
  ]) => (DeleteBackorder200ResponseBuilder()..update(updates))._build();

  _$DeleteBackorder200Response._({this.success, this.message, this.data})
    : super._();
  @override
  DeleteBackorder200Response rebuild(
    void Function(DeleteBackorder200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteBackorder200ResponseBuilder toBuilder() =>
      DeleteBackorder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteBackorder200Response &&
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
    return (newBuiltValueToStringHelper(r'DeleteBackorder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class DeleteBackorder200ResponseBuilder
    implements
        Builder<DeleteBackorder200Response, DeleteBackorder200ResponseBuilder> {
  _$DeleteBackorder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  DeleteBackorder200ResponseBuilder() {
    DeleteBackorder200Response._defaults(this);
  }

  DeleteBackorder200ResponseBuilder get _$this {
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
  void replace(DeleteBackorder200Response other) {
    _$v = other as _$DeleteBackorder200Response;
  }

  @override
  void update(void Function(DeleteBackorder200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteBackorder200Response build() => _build();

  _$DeleteBackorder200Response _build() {
    final _$result =
        _$v ??
        _$DeleteBackorder200Response._(
          success: success,
          message: message,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
