// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_token200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateToken200ResponseData extends ValidateToken200ResponseData {
  @override
  final bool? valid;

  factory _$ValidateToken200ResponseData([
    void Function(ValidateToken200ResponseDataBuilder)? updates,
  ]) => (ValidateToken200ResponseDataBuilder()..update(updates))._build();

  _$ValidateToken200ResponseData._({this.valid}) : super._();
  @override
  ValidateToken200ResponseData rebuild(
    void Function(ValidateToken200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ValidateToken200ResponseDataBuilder toBuilder() =>
      ValidateToken200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateToken200ResponseData && valid == other.valid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ValidateToken200ResponseData',
    )..add('valid', valid)).toString();
  }
}

class ValidateToken200ResponseDataBuilder
    implements
        Builder<
          ValidateToken200ResponseData,
          ValidateToken200ResponseDataBuilder
        > {
  _$ValidateToken200ResponseData? _$v;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  ValidateToken200ResponseDataBuilder() {
    ValidateToken200ResponseData._defaults(this);
  }

  ValidateToken200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valid = $v.valid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateToken200ResponseData other) {
    _$v = other as _$ValidateToken200ResponseData;
  }

  @override
  void update(void Function(ValidateToken200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateToken200ResponseData build() => _build();

  _$ValidateToken200ResponseData _build() {
    final _$result = _$v ?? _$ValidateToken200ResponseData._(valid: valid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
