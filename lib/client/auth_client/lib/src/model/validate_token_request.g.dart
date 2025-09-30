// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateTokenRequest extends ValidateTokenRequest {
  @override
  final String? token;

  factory _$ValidateTokenRequest([
    void Function(ValidateTokenRequestBuilder)? updates,
  ]) => (ValidateTokenRequestBuilder()..update(updates))._build();

  _$ValidateTokenRequest._({this.token}) : super._();
  @override
  ValidateTokenRequest rebuild(
    void Function(ValidateTokenRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ValidateTokenRequestBuilder toBuilder() =>
      ValidateTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateTokenRequest && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ValidateTokenRequest',
    )..add('token', token)).toString();
  }
}

class ValidateTokenRequestBuilder
    implements Builder<ValidateTokenRequest, ValidateTokenRequestBuilder> {
  _$ValidateTokenRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ValidateTokenRequestBuilder() {
    ValidateTokenRequest._defaults(this);
  }

  ValidateTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateTokenRequest other) {
    _$v = other as _$ValidateTokenRequest;
  }

  @override
  void update(void Function(ValidateTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateTokenRequest build() => _build();

  _$ValidateTokenRequest _build() {
    final _$result = _$v ?? _$ValidateTokenRequest._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
