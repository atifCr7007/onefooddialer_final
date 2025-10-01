// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_mapping_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocationMappingUpdate extends LocationMappingUpdate {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String? locationCode;
  @override
  final String? locationName;
  @override
  final String? cityCode;
  @override
  final String? cityName;
  @override
  final double? deliveryCharges;
  @override
  final String? deliveryTime;
  @override
  final String? kitchenCode;
  @override
  final String? kitchenName;
  @override
  final String? description;
  @override
  final int? status;

  factory _$LocationMappingUpdate(
          [void Function(LocationMappingUpdateBuilder)? updates]) =>
      (LocationMappingUpdateBuilder()..update(updates))._build();

  _$LocationMappingUpdate._(
      {this.companyId,
      this.unitId,
      this.locationCode,
      this.locationName,
      this.cityCode,
      this.cityName,
      this.deliveryCharges,
      this.deliveryTime,
      this.kitchenCode,
      this.kitchenName,
      this.description,
      this.status})
      : super._();
  @override
  LocationMappingUpdate rebuild(
          void Function(LocationMappingUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationMappingUpdateBuilder toBuilder() =>
      LocationMappingUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationMappingUpdate &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        locationCode == other.locationCode &&
        locationName == other.locationName &&
        cityCode == other.cityCode &&
        cityName == other.cityName &&
        deliveryCharges == other.deliveryCharges &&
        deliveryTime == other.deliveryTime &&
        kitchenCode == other.kitchenCode &&
        kitchenName == other.kitchenName &&
        description == other.description &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, locationCode.hashCode);
    _$hash = $jc(_$hash, locationName.hashCode);
    _$hash = $jc(_$hash, cityCode.hashCode);
    _$hash = $jc(_$hash, cityName.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, deliveryTime.hashCode);
    _$hash = $jc(_$hash, kitchenCode.hashCode);
    _$hash = $jc(_$hash, kitchenName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationMappingUpdate')
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('locationCode', locationCode)
          ..add('locationName', locationName)
          ..add('cityCode', cityCode)
          ..add('cityName', cityName)
          ..add('deliveryCharges', deliveryCharges)
          ..add('deliveryTime', deliveryTime)
          ..add('kitchenCode', kitchenCode)
          ..add('kitchenName', kitchenName)
          ..add('description', description)
          ..add('status', status))
        .toString();
  }
}

class LocationMappingUpdateBuilder
    implements Builder<LocationMappingUpdate, LocationMappingUpdateBuilder> {
  _$LocationMappingUpdate? _$v;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  String? _locationCode;
  String? get locationCode => _$this._locationCode;
  set locationCode(String? locationCode) => _$this._locationCode = locationCode;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  String? _cityCode;
  String? get cityCode => _$this._cityCode;
  set cityCode(String? cityCode) => _$this._cityCode = cityCode;

  String? _cityName;
  String? get cityName => _$this._cityName;
  set cityName(String? cityName) => _$this._cityName = cityName;

  double? _deliveryCharges;
  double? get deliveryCharges => _$this._deliveryCharges;
  set deliveryCharges(double? deliveryCharges) =>
      _$this._deliveryCharges = deliveryCharges;

  String? _deliveryTime;
  String? get deliveryTime => _$this._deliveryTime;
  set deliveryTime(String? deliveryTime) => _$this._deliveryTime = deliveryTime;

  String? _kitchenCode;
  String? get kitchenCode => _$this._kitchenCode;
  set kitchenCode(String? kitchenCode) => _$this._kitchenCode = kitchenCode;

  String? _kitchenName;
  String? get kitchenName => _$this._kitchenName;
  set kitchenName(String? kitchenName) => _$this._kitchenName = kitchenName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  LocationMappingUpdateBuilder() {
    LocationMappingUpdate._defaults(this);
  }

  LocationMappingUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _locationCode = $v.locationCode;
      _locationName = $v.locationName;
      _cityCode = $v.cityCode;
      _cityName = $v.cityName;
      _deliveryCharges = $v.deliveryCharges;
      _deliveryTime = $v.deliveryTime;
      _kitchenCode = $v.kitchenCode;
      _kitchenName = $v.kitchenName;
      _description = $v.description;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationMappingUpdate other) {
    _$v = other as _$LocationMappingUpdate;
  }

  @override
  void update(void Function(LocationMappingUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationMappingUpdate build() => _build();

  _$LocationMappingUpdate _build() {
    final _$result = _$v ??
        _$LocationMappingUpdate._(
          companyId: companyId,
          unitId: unitId,
          locationCode: locationCode,
          locationName: locationName,
          cityCode: cityCode,
          cityName: cityName,
          deliveryCharges: deliveryCharges,
          deliveryTime: deliveryTime,
          kitchenCode: kitchenCode,
          kitchenName: kitchenName,
          description: description,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
