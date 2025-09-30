// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_master.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenMaster extends KitchenMaster {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String? kitchenName;
  @override
  final String? kitchenAlias;
  @override
  final String? location;
  @override
  final int? locationId;
  @override
  final int? cityId;
  @override
  final bool? baseKitchen;
  @override
  final String? kitchenAddress;
  @override
  final int? createdBy;
  @override
  final int? updatedBy;
  @override
  final bool? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$KitchenMaster([void Function(KitchenMasterBuilder)? updates]) =>
      (KitchenMasterBuilder()..update(updates))._build();

  _$KitchenMaster._({
    this.id,
    this.companyId,
    this.unitId,
    this.kitchenName,
    this.kitchenAlias,
    this.location,
    this.locationId,
    this.cityId,
    this.baseKitchen,
    this.kitchenAddress,
    this.createdBy,
    this.updatedBy,
    this.status,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  KitchenMaster rebuild(void Function(KitchenMasterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenMasterBuilder toBuilder() => KitchenMasterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenMaster &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        kitchenName == other.kitchenName &&
        kitchenAlias == other.kitchenAlias &&
        location == other.location &&
        locationId == other.locationId &&
        cityId == other.cityId &&
        baseKitchen == other.baseKitchen &&
        kitchenAddress == other.kitchenAddress &&
        createdBy == other.createdBy &&
        updatedBy == other.updatedBy &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, kitchenName.hashCode);
    _$hash = $jc(_$hash, kitchenAlias.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, locationId.hashCode);
    _$hash = $jc(_$hash, cityId.hashCode);
    _$hash = $jc(_$hash, baseKitchen.hashCode);
    _$hash = $jc(_$hash, kitchenAddress.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, updatedBy.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenMaster')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('kitchenName', kitchenName)
          ..add('kitchenAlias', kitchenAlias)
          ..add('location', location)
          ..add('locationId', locationId)
          ..add('cityId', cityId)
          ..add('baseKitchen', baseKitchen)
          ..add('kitchenAddress', kitchenAddress)
          ..add('createdBy', createdBy)
          ..add('updatedBy', updatedBy)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KitchenMasterBuilder
    implements Builder<KitchenMaster, KitchenMasterBuilder> {
  _$KitchenMaster? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  String? _kitchenName;
  String? get kitchenName => _$this._kitchenName;
  set kitchenName(String? kitchenName) => _$this._kitchenName = kitchenName;

  String? _kitchenAlias;
  String? get kitchenAlias => _$this._kitchenAlias;
  set kitchenAlias(String? kitchenAlias) => _$this._kitchenAlias = kitchenAlias;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _locationId;
  int? get locationId => _$this._locationId;
  set locationId(int? locationId) => _$this._locationId = locationId;

  int? _cityId;
  int? get cityId => _$this._cityId;
  set cityId(int? cityId) => _$this._cityId = cityId;

  bool? _baseKitchen;
  bool? get baseKitchen => _$this._baseKitchen;
  set baseKitchen(bool? baseKitchen) => _$this._baseKitchen = baseKitchen;

  String? _kitchenAddress;
  String? get kitchenAddress => _$this._kitchenAddress;
  set kitchenAddress(String? kitchenAddress) =>
      _$this._kitchenAddress = kitchenAddress;

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  int? _updatedBy;
  int? get updatedBy => _$this._updatedBy;
  set updatedBy(int? updatedBy) => _$this._updatedBy = updatedBy;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KitchenMasterBuilder() {
    KitchenMaster._defaults(this);
  }

  KitchenMasterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _kitchenName = $v.kitchenName;
      _kitchenAlias = $v.kitchenAlias;
      _location = $v.location;
      _locationId = $v.locationId;
      _cityId = $v.cityId;
      _baseKitchen = $v.baseKitchen;
      _kitchenAddress = $v.kitchenAddress;
      _createdBy = $v.createdBy;
      _updatedBy = $v.updatedBy;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenMaster other) {
    _$v = other as _$KitchenMaster;
  }

  @override
  void update(void Function(KitchenMasterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenMaster build() => _build();

  _$KitchenMaster _build() {
    final _$result =
        _$v ??
        _$KitchenMaster._(
          id: id,
          companyId: companyId,
          unitId: unitId,
          kitchenName: kitchenName,
          kitchenAlias: kitchenAlias,
          location: location,
          locationId: locationId,
          cityId: cityId,
          baseKitchen: baseKitchen,
          kitchenAddress: kitchenAddress,
          createdBy: createdBy,
          updatedBy: updatedBy,
          status: status,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
