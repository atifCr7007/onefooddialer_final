// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUser200ResponseData extends GetUser200ResponseData {
  @override
  final User? user;

  factory _$GetUser200ResponseData([
    void Function(GetUser200ResponseDataBuilder)? updates,
  ]) => (GetUser200ResponseDataBuilder()..update(updates))._build();

  _$GetUser200ResponseData._({this.user}) : super._();
  @override
  GetUser200ResponseData rebuild(
    void Function(GetUser200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetUser200ResponseDataBuilder toBuilder() =>
      GetUser200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUser200ResponseData && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetUser200ResponseData',
    )..add('user', user)).toString();
  }
}

class GetUser200ResponseDataBuilder
    implements Builder<GetUser200ResponseData, GetUser200ResponseDataBuilder> {
  _$GetUser200ResponseData? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  GetUser200ResponseDataBuilder() {
    GetUser200ResponseData._defaults(this);
  }

  GetUser200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUser200ResponseData other) {
    _$v = other as _$GetUser200ResponseData;
  }

  @override
  void update(void Function(GetUser200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUser200ResponseData build() => _build();

  _$GetUser200ResponseData _build() {
    _$GetUser200ResponseData _$result;
    try {
      _$result = _$v ?? _$GetUser200ResponseData._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetUser200ResponseData',
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
