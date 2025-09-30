// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_admin_config_key_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2AdminConfigKeyPut200ResponseData
    extends V2AdminConfigKeyPut200ResponseData {
  @override
  final String? key;
  @override
  final String? value;

  factory _$V2AdminConfigKeyPut200ResponseData([
    void Function(V2AdminConfigKeyPut200ResponseDataBuilder)? updates,
  ]) => (V2AdminConfigKeyPut200ResponseDataBuilder()..update(updates))._build();

  _$V2AdminConfigKeyPut200ResponseData._({this.key, this.value}) : super._();
  @override
  V2AdminConfigKeyPut200ResponseData rebuild(
    void Function(V2AdminConfigKeyPut200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  V2AdminConfigKeyPut200ResponseDataBuilder toBuilder() =>
      V2AdminConfigKeyPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2AdminConfigKeyPut200ResponseData &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2AdminConfigKeyPut200ResponseData')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class V2AdminConfigKeyPut200ResponseDataBuilder
    implements
        Builder<
          V2AdminConfigKeyPut200ResponseData,
          V2AdminConfigKeyPut200ResponseDataBuilder
        > {
  _$V2AdminConfigKeyPut200ResponseData? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  V2AdminConfigKeyPut200ResponseDataBuilder() {
    V2AdminConfigKeyPut200ResponseData._defaults(this);
  }

  V2AdminConfigKeyPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2AdminConfigKeyPut200ResponseData other) {
    _$v = other as _$V2AdminConfigKeyPut200ResponseData;
  }

  @override
  void update(
    void Function(V2AdminConfigKeyPut200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  V2AdminConfigKeyPut200ResponseData build() => _build();

  _$V2AdminConfigKeyPut200ResponseData _build() {
    final _$result =
        _$v ?? _$V2AdminConfigKeyPut200ResponseData._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
