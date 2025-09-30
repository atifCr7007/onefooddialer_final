// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvoicesIdDelete200Response extends InvoicesIdDelete200Response {
  @override
  final bool success;
  @override
  final String message;

  factory _$InvoicesIdDelete200Response([
    void Function(InvoicesIdDelete200ResponseBuilder)? updates,
  ]) => (InvoicesIdDelete200ResponseBuilder()..update(updates))._build();

  _$InvoicesIdDelete200Response._({
    required this.success,
    required this.message,
  }) : super._();
  @override
  InvoicesIdDelete200Response rebuild(
    void Function(InvoicesIdDelete200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvoicesIdDelete200ResponseBuilder toBuilder() =>
      InvoicesIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesIdDelete200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoicesIdDelete200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class InvoicesIdDelete200ResponseBuilder
    implements
        Builder<
          InvoicesIdDelete200Response,
          InvoicesIdDelete200ResponseBuilder
        > {
  _$InvoicesIdDelete200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  InvoicesIdDelete200ResponseBuilder() {
    InvoicesIdDelete200Response._defaults(this);
  }

  InvoicesIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesIdDelete200Response other) {
    _$v = other as _$InvoicesIdDelete200Response;
  }

  @override
  void update(void Function(InvoicesIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesIdDelete200Response build() => _build();

  _$InvoicesIdDelete200Response _build() {
    final _$result =
        _$v ??
        _$InvoicesIdDelete200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
            success,
            r'InvoicesIdDelete200Response',
            'success',
          ),
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'InvoicesIdDelete200Response',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
