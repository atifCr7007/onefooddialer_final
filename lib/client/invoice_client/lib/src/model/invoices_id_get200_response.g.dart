// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesIdGet200Response extends InvoicesIdGet200Response {
  @override
  final bool success;
  @override
  final String message;
  @override
  final Invoice data;

  factory _$InvoicesIdGet200Response([
    void Function(InvoicesIdGet200ResponseBuilder)? updates,
  ]) => (InvoicesIdGet200ResponseBuilder()..update(updates))._build();

  _$InvoicesIdGet200Response._({
    required this.success,
    required this.message,
    required this.data,
  }) : super._();
  @override
  InvoicesIdGet200Response rebuild(
    void Function(InvoicesIdGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesIdGet200ResponseBuilder toBuilder() =>
      InvoicesIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'InvoicesIdGet200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class InvoicesIdGet200ResponseBuilder
    implements
        Builder<InvoicesIdGet200Response, InvoicesIdGet200ResponseBuilder> {
  _$InvoicesIdGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvoiceBuilder? _data;
  InvoiceBuilder get data => _$this._data ??= InvoiceBuilder();
  set data(InvoiceBuilder? data) => _$this._data = data;

  InvoicesIdGet200ResponseBuilder() {
    InvoicesIdGet200Response._defaults(this);
  }

  InvoicesIdGet200ResponseBuilder get _$this {
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
  void replace(InvoicesIdGet200Response other) {
    _$v = other as _$InvoicesIdGet200Response;
  }

  @override
  void update(void Function(InvoicesIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesIdGet200Response build() => _build();

  _$InvoicesIdGet200Response _build() {
    _$InvoicesIdGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$InvoicesIdGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'InvoicesIdGet200Response',
              'success',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'InvoicesIdGet200Response',
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
          r'InvoicesIdGet200Response',
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
