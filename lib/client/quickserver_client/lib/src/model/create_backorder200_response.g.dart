// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_backorder200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBackorder200Response extends CreateBackorder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Backorder? data;

  factory _$CreateBackorder200Response(
          [void Function(CreateBackorder200ResponseBuilder)? updates]) =>
      (CreateBackorder200ResponseBuilder()..update(updates))._build();

  _$CreateBackorder200Response._({this.success, this.message, this.data})
      : super._();
  @override
  CreateBackorder200Response rebuild(
          void Function(CreateBackorder200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBackorder200ResponseBuilder toBuilder() =>
      CreateBackorder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBackorder200Response &&
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
    return (newBuiltValueToStringHelper(r'CreateBackorder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateBackorder200ResponseBuilder
    implements
        Builder<CreateBackorder200Response, CreateBackorder200ResponseBuilder> {
  _$CreateBackorder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BackorderBuilder? _data;
  BackorderBuilder get data => _$this._data ??= BackorderBuilder();
  set data(BackorderBuilder? data) => _$this._data = data;

  CreateBackorder200ResponseBuilder() {
    CreateBackorder200Response._defaults(this);
  }

  CreateBackorder200ResponseBuilder get _$this {
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
  void replace(CreateBackorder200Response other) {
    _$v = other as _$CreateBackorder200Response;
  }

  @override
  void update(void Function(CreateBackorder200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBackorder200Response build() => _build();

  _$CreateBackorder200Response _build() {
    _$CreateBackorder200Response _$result;
    try {
      _$result = _$v ??
          _$CreateBackorder200Response._(
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
            r'CreateBackorder200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
