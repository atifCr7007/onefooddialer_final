// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesGet200Response extends InvoicesGet200Response {
  @override
  final bool success;
  @override
  final String message;
  @override
  final InvoicesGet200ResponseData data;

  factory _$InvoicesGet200Response([
    void Function(InvoicesGet200ResponseBuilder)? updates,
  ]) => (InvoicesGet200ResponseBuilder()..update(updates))._build();

  _$InvoicesGet200Response._({
    required this.success,
    required this.message,
    required this.data,
  }) : super._();
  @override
  InvoicesGet200Response rebuild(
    void Function(InvoicesGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesGet200ResponseBuilder toBuilder() =>
      InvoicesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesGet200Response &&
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
    return (newBuiltValueToStringHelper(r'InvoicesGet200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class InvoicesGet200ResponseBuilder
    implements Builder<InvoicesGet200Response, InvoicesGet200ResponseBuilder> {
  _$InvoicesGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvoicesGet200ResponseDataBuilder? _data;
  InvoicesGet200ResponseDataBuilder get data =>
      _$this._data ??= InvoicesGet200ResponseDataBuilder();
  set data(InvoicesGet200ResponseDataBuilder? data) => _$this._data = data;

  InvoicesGet200ResponseBuilder() {
    InvoicesGet200Response._defaults(this);
  }

  InvoicesGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesGet200Response other) {
    _$v = other as _$InvoicesGet200Response;
  }

  @override
  void update(void Function(InvoicesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesGet200Response build() => _build();

  _$InvoicesGet200Response _build() {
    _$InvoicesGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$InvoicesGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'InvoicesGet200Response',
              'success',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'InvoicesGet200Response',
              'message',
            ),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'InvoicesGet200Response',
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
