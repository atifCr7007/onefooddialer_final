// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_master_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenMasterInput extends KitchenMasterInput {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String kitchenName;
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

  factory _$KitchenMasterInput([
    void Function(KitchenMasterInputBuilder)? updates,
  ]) => (KitchenMasterInputBuilder()..update(updates))._build();

  _$KitchenMasterInput._({
    this.companyId,
    this.unitId,
    required this.kitchenName,
    this.kitchenAlias,
    this.location,
    this.locationId,
    this.cityId,
    this.baseKitchen,
    this.kitchenAddress,
    this.createdBy,
    this.updatedBy,
    this.status,
  }) : super._();
  @override
  KitchenMasterInput rebuild(
    void Function(KitchenMasterInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  KitchenMasterInputBuilder toBuilder() =>
      KitchenMasterInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenMasterInput &&
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
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'KitchenMasterInput')
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
          ..add('status', status))
        .toString();
  }
}

class KitchenMasterInputBuilder
    implements Builder<KitchenMasterInput, KitchenMasterInputBuilder> {
  _$KitchenMasterInput? _$v;

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

  KitchenMasterInputBuilder() {
    KitchenMasterInput._defaults(this);
  }

  KitchenMasterInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenMasterInput other) {
    _$v = other as _$KitchenMasterInput;
  }

  @override
  void update(void Function(KitchenMasterInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenMasterInput build() => _build();

  _$KitchenMasterInput _build() {
    final _$result =
        _$v ??
        _$KitchenMasterInput._(
          companyId: companyId,
          unitId: unitId,
          kitchenName: BuiltValueNullFieldError.checkNotNull(
            kitchenName,
            r'KitchenMasterInput',
            'kitchenName',
          ),
          kitchenAlias: kitchenAlias,
          location: location,
          locationId: locationId,
          cityId: cityId,
          baseKitchen: baseKitchen,
          kitchenAddress: kitchenAddress,
          createdBy: createdBy,
          updatedBy: updatedBy,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
