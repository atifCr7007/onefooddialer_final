// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_location_mapping200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLocationMapping200Response
    extends UpdateLocationMapping200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final LocationMapping? data;

  factory _$UpdateLocationMapping200Response([
    void Function(UpdateLocationMapping200ResponseBuilder)? updates,
  ]) => (UpdateLocationMapping200ResponseBuilder()..update(updates))._build();

  _$UpdateLocationMapping200Response._({this.success, this.message, this.data})
    : super._();
  @override
  UpdateLocationMapping200Response rebuild(
    void Function(UpdateLocationMapping200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateLocationMapping200ResponseBuilder toBuilder() =>
      UpdateLocationMapping200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLocationMapping200Response &&
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
    return (newBuiltValueToStringHelper(r'UpdateLocationMapping200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateLocationMapping200ResponseBuilder
    implements
        Builder<
          UpdateLocationMapping200Response,
          UpdateLocationMapping200ResponseBuilder
        > {
  _$UpdateLocationMapping200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LocationMappingBuilder? _data;
  LocationMappingBuilder get data => _$this._data ??= LocationMappingBuilder();
  set data(LocationMappingBuilder? data) => _$this._data = data;

  UpdateLocationMapping200ResponseBuilder() {
    UpdateLocationMapping200Response._defaults(this);
  }

  UpdateLocationMapping200ResponseBuilder get _$this {
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
  void replace(UpdateLocationMapping200Response other) {
    _$v = other as _$UpdateLocationMapping200Response;
  }

  @override
  void update(void Function(UpdateLocationMapping200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLocationMapping200Response build() => _build();

  _$UpdateLocationMapping200Response _build() {
    _$UpdateLocationMapping200Response _$result;
    try {
      _$result =
          _$v ??
          _$UpdateLocationMapping200Response._(
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
          r'UpdateLocationMapping200Response',
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
