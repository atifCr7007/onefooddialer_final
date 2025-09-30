// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_kitchen_master.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenKitchenMaster extends KitchenKitchenMaster {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? alias;
  @override
  final String? location;

  factory _$KitchenKitchenMaster([
    void Function(KitchenKitchenMasterBuilder)? updates,
  ]) => (KitchenKitchenMasterBuilder()..update(updates))._build();

  _$KitchenKitchenMaster._({this.id, this.name, this.alias, this.location})
    : super._();
  @override
  KitchenKitchenMaster rebuild(
    void Function(KitchenKitchenMasterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KitchenKitchenMasterBuilder toBuilder() =>
      KitchenKitchenMasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenKitchenMaster &&
        id == other.id &&
        name == other.name &&
        alias == other.alias &&
        location == other.location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenKitchenMaster')
          ..add('id', id)
          ..add('name', name)
          ..add('alias', alias)
          ..add('location', location))
        .toString();
  }
}

class KitchenKitchenMasterBuilder
    implements Builder<KitchenKitchenMaster, KitchenKitchenMasterBuilder> {
  _$KitchenKitchenMaster? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  KitchenKitchenMasterBuilder() {
    KitchenKitchenMaster._defaults(this);
  }

  KitchenKitchenMasterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _alias = $v.alias;
      _location = $v.location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenKitchenMaster other) {
    _$v = other as _$KitchenKitchenMaster;
  }

  @override
  void update(void Function(KitchenKitchenMasterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenKitchenMaster build() => _build();

  _$KitchenKitchenMaster _build() {
    final _$result =
        _$v ??
        _$KitchenKitchenMaster._(
          id: id,
          name: name,
          alias: alias,
          location: location,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
