// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_config_by_key200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConfigByKey200ResponseData
    extends UpdateConfigByKey200ResponseData {
  @override
  final String? key;
  @override
  final String? value;

  factory _$UpdateConfigByKey200ResponseData([
    void Function(UpdateConfigByKey200ResponseDataBuilder)? updates,
  ]) => (UpdateConfigByKey200ResponseDataBuilder()..update(updates))._build();

  _$UpdateConfigByKey200ResponseData._({this.key, this.value}) : super._();
  @override
  UpdateConfigByKey200ResponseData rebuild(
    void Function(UpdateConfigByKey200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateConfigByKey200ResponseDataBuilder toBuilder() =>
      UpdateConfigByKey200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigByKey200ResponseData &&
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
    return (newBuiltValueToStringHelper(r'UpdateConfigByKey200ResponseData')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class UpdateConfigByKey200ResponseDataBuilder
    implements
        Builder<
          UpdateConfigByKey200ResponseData,
          UpdateConfigByKey200ResponseDataBuilder
        > {
  _$UpdateConfigByKey200ResponseData? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  UpdateConfigByKey200ResponseDataBuilder() {
    UpdateConfigByKey200ResponseData._defaults(this);
  }

  UpdateConfigByKey200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConfigByKey200ResponseData other) {
    _$v = other as _$UpdateConfigByKey200ResponseData;
  }

  @override
  void update(void Function(UpdateConfigByKey200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigByKey200ResponseData build() => _build();

  _$UpdateConfigByKey200ResponseData _build() {
    final _$result =
        _$v ?? _$UpdateConfigByKey200ResponseData._(key: key, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
