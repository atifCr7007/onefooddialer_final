// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_backorder200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateBackorder200Response extends UpdateBackorder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Backorder? data;

  factory _$UpdateBackorder200Response([
    void Function(UpdateBackorder200ResponseBuilder)? updates,
  ]) => (UpdateBackorder200ResponseBuilder()..update(updates))._build();

  _$UpdateBackorder200Response._({this.success, this.message, this.data})
    : super._();
  @override
  UpdateBackorder200Response rebuild(
    void Function(UpdateBackorder200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateBackorder200ResponseBuilder toBuilder() =>
      UpdateBackorder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBackorder200Response &&
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
    return (newBuiltValueToStringHelper(r'UpdateBackorder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UpdateBackorder200ResponseBuilder
    implements
        Builder<UpdateBackorder200Response, UpdateBackorder200ResponseBuilder> {
  _$UpdateBackorder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BackorderBuilder? _data;
  BackorderBuilder get data => _$this._data ??= BackorderBuilder();
  set data(BackorderBuilder? data) => _$this._data = data;

  UpdateBackorder200ResponseBuilder() {
    UpdateBackorder200Response._defaults(this);
  }

  UpdateBackorder200ResponseBuilder get _$this {
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
  void replace(UpdateBackorder200Response other) {
    _$v = other as _$UpdateBackorder200Response;
  }

  @override
  void update(void Function(UpdateBackorder200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBackorder200Response build() => _build();

  _$UpdateBackorder200Response _build() {
    _$UpdateBackorder200Response _$result;
    try {
      _$result =
          _$v ??
          _$UpdateBackorder200Response._(
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
          r'UpdateBackorder200Response',
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
