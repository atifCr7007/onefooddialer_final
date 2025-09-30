// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPassword200ResponseData extends ForgotPassword200ResponseData {
  @override
  final String? token;

  factory _$ForgotPassword200ResponseData([
    void Function(ForgotPassword200ResponseDataBuilder)? updates,
  ]) => (ForgotPassword200ResponseDataBuilder()..update(updates))._build();

  _$ForgotPassword200ResponseData._({this.token}) : super._();
  @override
  ForgotPassword200ResponseData rebuild(
    void Function(ForgotPassword200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForgotPassword200ResponseDataBuilder toBuilder() =>
      ForgotPassword200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPassword200ResponseData && token == other.token;
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
      r'ForgotPassword200ResponseData',
    )..add('token', token)).toString();
  }
}

class ForgotPassword200ResponseDataBuilder
    implements
        Builder<
          ForgotPassword200ResponseData,
          ForgotPassword200ResponseDataBuilder
        > {
  _$ForgotPassword200ResponseData? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ForgotPassword200ResponseDataBuilder() {
    ForgotPassword200ResponseData._defaults(this);
  }

  ForgotPassword200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPassword200ResponseData other) {
    _$v = other as _$ForgotPassword200ResponseData;
  }

  @override
  void update(void Function(ForgotPassword200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPassword200ResponseData build() => _build();

  _$ForgotPassword200ResponseData _build() {
    final _$result = _$v ?? _$ForgotPassword200ResponseData._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
