// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPassword200Response extends ForgotPassword200Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final ForgotPassword200ResponseData? data;

  factory _$ForgotPassword200Response(
          [void Function(ForgotPassword200ResponseBuilder)? updates]) =>
      (ForgotPassword200ResponseBuilder()..update(updates))._build();

  _$ForgotPassword200Response._({this.status, this.message, this.data})
      : super._();
  @override
  ForgotPassword200Response rebuild(
          void Function(ForgotPassword200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPassword200ResponseBuilder toBuilder() =>
      ForgotPassword200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPassword200Response &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForgotPassword200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ForgotPassword200ResponseBuilder
    implements
        Builder<ForgotPassword200Response, ForgotPassword200ResponseBuilder> {
  _$ForgotPassword200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ForgotPassword200ResponseDataBuilder? _data;
  ForgotPassword200ResponseDataBuilder get data =>
      _$this._data ??= ForgotPassword200ResponseDataBuilder();
  set data(ForgotPassword200ResponseDataBuilder? data) => _$this._data = data;

  ForgotPassword200ResponseBuilder() {
    ForgotPassword200Response._defaults(this);
  }

  ForgotPassword200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPassword200Response other) {
    _$v = other as _$ForgotPassword200Response;
  }

  @override
  void update(void Function(ForgotPassword200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPassword200Response build() => _build();

  _$ForgotPassword200Response _build() {
    _$ForgotPassword200Response _$result;
    try {
      _$result = _$v ??
          _$ForgotPassword200Response._(
            status: status,
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
            r'ForgotPassword200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
