// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login200ResponseData extends Login200ResponseData {
  @override
  final User? user;
  @override
  final String? token;
  @override
  final String? tokenType;

  factory _$Login200ResponseData([
    void Function(Login200ResponseDataBuilder)? updates,
  ]) => (Login200ResponseDataBuilder()..update(updates))._build();

  _$Login200ResponseData._({this.user, this.token, this.tokenType}) : super._();
  @override
  Login200ResponseData rebuild(
    void Function(Login200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  Login200ResponseDataBuilder toBuilder() =>
      Login200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login200ResponseData &&
        user == other.user &&
        token == other.token &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Login200ResponseData')
          ..add('user', user)
          ..add('token', token)
          ..add('tokenType', tokenType))
        .toString();
  }
}

class Login200ResponseDataBuilder
    implements Builder<Login200ResponseData, Login200ResponseDataBuilder> {
  _$Login200ResponseData? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  Login200ResponseDataBuilder() {
    Login200ResponseData._defaults(this);
  }

  Login200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _token = $v.token;
      _tokenType = $v.tokenType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login200ResponseData other) {
    _$v = other as _$Login200ResponseData;
  }

  @override
  void update(void Function(Login200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Login200ResponseData build() => _build();

  _$Login200ResponseData _build() {
    _$Login200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$Login200ResponseData._(
            user: _user?.build(),
            token: token,
            tokenType: tokenType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Login200ResponseData',
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
