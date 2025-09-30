// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_backorder_from_order200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBackorderFromOrder200Response
    extends CreateBackorderFromOrder200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Backorder? data;

  factory _$CreateBackorderFromOrder200Response([
    void Function(CreateBackorderFromOrder200ResponseBuilder)? updates,
  ]) =>
      (CreateBackorderFromOrder200ResponseBuilder()..update(updates))._build();

  _$CreateBackorderFromOrder200Response._({
    this.success,
    this.message,
    this.data,
  }) : super._();
  @override
  CreateBackorderFromOrder200Response rebuild(
    void Function(CreateBackorderFromOrder200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateBackorderFromOrder200ResponseBuilder toBuilder() =>
      CreateBackorderFromOrder200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBackorderFromOrder200Response &&
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
    return (newBuiltValueToStringHelper(r'CreateBackorderFromOrder200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CreateBackorderFromOrder200ResponseBuilder
    implements
        Builder<
          CreateBackorderFromOrder200Response,
          CreateBackorderFromOrder200ResponseBuilder
        > {
  _$CreateBackorderFromOrder200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BackorderBuilder? _data;
  BackorderBuilder get data => _$this._data ??= BackorderBuilder();
  set data(BackorderBuilder? data) => _$this._data = data;

  CreateBackorderFromOrder200ResponseBuilder() {
    CreateBackorderFromOrder200Response._defaults(this);
  }

  CreateBackorderFromOrder200ResponseBuilder get _$this {
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
  void replace(CreateBackorderFromOrder200Response other) {
    _$v = other as _$CreateBackorderFromOrder200Response;
  }

  @override
  void update(
    void Function(CreateBackorderFromOrder200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CreateBackorderFromOrder200Response build() => _build();

  _$CreateBackorderFromOrder200Response _build() {
    _$CreateBackorderFromOrder200Response _$result;
    try {
      _$result =
          _$v ??
          _$CreateBackorderFromOrder200Response._(
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
          r'CreateBackorderFromOrder200Response',
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
