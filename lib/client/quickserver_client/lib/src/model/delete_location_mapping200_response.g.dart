// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_location_mapping200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocationMapping200Response
    extends DeleteLocationMapping200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final JsonObject? data;

  factory _$DeleteLocationMapping200Response(
          [void Function(DeleteLocationMapping200ResponseBuilder)? updates]) =>
      (DeleteLocationMapping200ResponseBuilder()..update(updates))._build();

  _$DeleteLocationMapping200Response._({this.success, this.message, this.data})
      : super._();
  @override
  DeleteLocationMapping200Response rebuild(
          void Function(DeleteLocationMapping200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocationMapping200ResponseBuilder toBuilder() =>
      DeleteLocationMapping200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocationMapping200Response &&
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
    return (newBuiltValueToStringHelper(r'DeleteLocationMapping200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class DeleteLocationMapping200ResponseBuilder
    implements
        Builder<DeleteLocationMapping200Response,
            DeleteLocationMapping200ResponseBuilder> {
  _$DeleteLocationMapping200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  DeleteLocationMapping200ResponseBuilder() {
    DeleteLocationMapping200Response._defaults(this);
  }

  DeleteLocationMapping200ResponseBuilder get _$this {
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
  void replace(DeleteLocationMapping200Response other) {
    _$v = other as _$DeleteLocationMapping200Response;
  }

  @override
  void update(void Function(DeleteLocationMapping200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocationMapping200Response build() => _build();

  _$DeleteLocationMapping200Response _build() {
    final _$result = _$v ??
        _$DeleteLocationMapping200Response._(
          success: success,
          message: message,
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
