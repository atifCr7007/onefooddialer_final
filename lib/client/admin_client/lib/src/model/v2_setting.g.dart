// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2Setting extends V2Setting {
  @override
  final String? settingKey;
  @override
  final String? settingValue;
  @override
  final String? settingGroup;
  @override
  final String? settingType;
  @override
  final bool? isSystem;
  @override
  final bool? isPublic;
  @override
  final String? description;

  factory _$V2Setting([void Function(V2SettingBuilder)? updates]) =>
      (V2SettingBuilder()..update(updates))._build();

  _$V2Setting._({
    this.settingKey,
    this.settingValue,
    this.settingGroup,
    this.settingType,
    this.isSystem,
    this.isPublic,
    this.description,
  }) : super._();
  @override
  V2Setting rebuild(void Function(V2SettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2SettingBuilder toBuilder() => V2SettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2Setting &&
        settingKey == other.settingKey &&
        settingValue == other.settingValue &&
        settingGroup == other.settingGroup &&
        settingType == other.settingType &&
        isSystem == other.isSystem &&
        isPublic == other.isPublic &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, settingKey.hashCode);
    _$hash = $jc(_$hash, settingValue.hashCode);
    _$hash = $jc(_$hash, settingGroup.hashCode);
    _$hash = $jc(_$hash, settingType.hashCode);
    _$hash = $jc(_$hash, isSystem.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2Setting')
          ..add('settingKey', settingKey)
          ..add('settingValue', settingValue)
          ..add('settingGroup', settingGroup)
          ..add('settingType', settingType)
          ..add('isSystem', isSystem)
          ..add('isPublic', isPublic)
          ..add('description', description))
        .toString();
  }
}

class V2SettingBuilder implements Builder<V2Setting, V2SettingBuilder> {
  _$V2Setting? _$v;

  String? _settingKey;
  String? get settingKey => _$this._settingKey;
  set settingKey(String? settingKey) => _$this._settingKey = settingKey;

  String? _settingValue;
  String? get settingValue => _$this._settingValue;
  set settingValue(String? settingValue) => _$this._settingValue = settingValue;

  String? _settingGroup;
  String? get settingGroup => _$this._settingGroup;
  set settingGroup(String? settingGroup) => _$this._settingGroup = settingGroup;

  String? _settingType;
  String? get settingType => _$this._settingType;
  set settingType(String? settingType) => _$this._settingType = settingType;

  bool? _isSystem;
  bool? get isSystem => _$this._isSystem;
  set isSystem(bool? isSystem) => _$this._isSystem = isSystem;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  V2SettingBuilder() {
    V2Setting._defaults(this);
  }

  V2SettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _settingKey = $v.settingKey;
      _settingValue = $v.settingValue;
      _settingGroup = $v.settingGroup;
      _settingType = $v.settingType;
      _isSystem = $v.isSystem;
      _isPublic = $v.isPublic;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V2Setting other) {
    _$v = other as _$V2Setting;
  }

  @override
  void update(void Function(V2SettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2Setting build() => _build();

  _$V2Setting _build() {
    final _$result =
        _$v ??
        _$V2Setting._(
          settingKey: settingKey,
          settingValue: settingValue,
          settingGroup: settingGroup,
          settingType: settingType,
          isSystem: isSystem,
          isPublic: isPublic,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
