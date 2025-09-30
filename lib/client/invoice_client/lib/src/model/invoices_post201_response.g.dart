// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesPost201Response extends InvoicesPost201Response {
  @override
  final bool success;
  @override
  final String message;
  @override
  final Invoice data;

  factory _$InvoicesPost201Response([
    void Function(InvoicesPost201ResponseBuilder)? updates,
  ]) => (InvoicesPost201ResponseBuilder()..update(updates))._build();

  _$InvoicesPost201Response._({
    required this.success,
    required this.message,
    required this.data,
  }) : super._();
  @override
  InvoicesPost201Response rebuild(
    void Function(InvoicesPost201ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesPost201ResponseBuilder toBuilder() =>
      InvoicesPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesPost201Response &&
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
    return (newBuiltValueToStringHelper(r'InvoicesPost201Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class InvoicesPost201ResponseBuilder
    implements
        Builder<InvoicesPost201Response, InvoicesPost201ResponseBuilder> {
  _$InvoicesPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvoiceBuilder? _data;
  InvoiceBuilder get data => _$this._data ??= InvoiceBuilder();
  set data(InvoiceBuilder? data) => _$this._data = data;

  InvoicesPost201ResponseBuilder() {
    InvoicesPost201Response._defaults(this);
  }

  InvoicesPost201ResponseBuilder get _$this {
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
  void replace(InvoicesPost201Response other) {
    _$v = other as _$InvoicesPost201Response;
  }

  @override
  void update(void Function(InvoicesPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesPost201Response build() => _build();

  _$InvoicesPost201Response _build() {
    _$InvoicesPost201Response _$result;
    try {
      _$result =
          _$v ??
          _$InvoicesPost201Response._(
            success: BuiltValueNullFieldError.checkNotNull(
              success,
              r'InvoicesPost201Response',
              'success',
            ),
            message: BuiltValueNullFieldError.checkNotNull(
              message,
              r'InvoicesPost201Response',
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
          r'InvoicesPost201Response',
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
