// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WebhookResponse extends WebhookResponse {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$WebhookResponse([void Function(WebhookResponseBuilder)? updates]) =>
      (WebhookResponseBuilder()..update(updates))._build();

  _$WebhookResponse._({this.success, this.message}) : super._();
  @override
  WebhookResponse rebuild(void Function(WebhookResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WebhookResponseBuilder toBuilder() => WebhookResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WebhookResponse &&
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
    return (newBuiltValueToStringHelper(r'WebhookResponse')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class WebhookResponseBuilder
    implements Builder<WebhookResponse, WebhookResponseBuilder> {
  _$WebhookResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  WebhookResponseBuilder() {
    WebhookResponse._defaults(this);
  }

  WebhookResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WebhookResponse other) {
    _$v = other as _$WebhookResponse;
  }

  @override
  void update(void Function(WebhookResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WebhookResponse build() => _build();

  _$WebhookResponse _build() {
    final _$result =
        _$v ?? _$WebhookResponse._(success: success, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
