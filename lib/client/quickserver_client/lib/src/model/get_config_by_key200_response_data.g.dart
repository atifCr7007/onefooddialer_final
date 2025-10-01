// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_config_by_key200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConfigByKey200ResponseData extends GetConfigByKey200ResponseData {
  @override
  final String? key;
  @override
  final String? value;

  factory _$GetConfigByKey200ResponseData(
          [void Function(GetConfigByKey200ResponseDataBuilder)? updates]) =>
      (GetConfigByKey200ResponseDataBuilder()..update(updates))._build();

  _$GetConfigByKey200ResponseData._({this.key, this.value}) : super._();
  @override
  GetConfigByKey200ResponseData rebuild(
          void Function(GetConfigByKey200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConfigByKey200ResponseDataBuilder toBuilder() =>
      GetConfigByKey200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConfigByKey200ResponseData &&
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
    return (newBuiltValueToStringHelper(r'GetConfigByKey200ResponseData')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class GetConfigByKey200ResponseDataBuilder
    implements
        Builder<GetConfigByKey200ResponseData,
            GetConfigByKey200ResponseDataBuilder> {
  _$GetConfigByKey200ResponseData? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  GetConfigByKey200ResponseDataBuilder() {
    GetConfigByKey200ResponseData._defaults(this);
  }

  GetConfigByKey200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConfigByKey200ResponseData other) {
    _$v = other as _$GetConfigByKey200ResponseData;
  }

  @override
  void update(void Function(GetConfigByKey200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConfigByKey200ResponseData build() => _build();

  _$GetConfigByKey200ResponseData _build() {
    final _$result = _$v ??
        _$GetConfigByKey200ResponseData._(
          key: key,
          value: value,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
