// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Address extends Address {
  @override
  final int? pkCustomerAddressCode;
  @override
  final int? customerCode;
  @override
  final String? addressType;
  @override
  final String? addressName;
  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? landmark;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? pincode;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final bool? isDefault;
  @override
  final bool? status;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (AddressBuilder()..update(updates))._build();

  _$Address._({
    this.pkCustomerAddressCode,
    this.customerCode,
    this.addressType,
    this.addressName,
    this.addressLine1,
    this.addressLine2,
    this.landmark,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.latitude,
    this.longitude,
    this.isDefault,
    this.status,
    this.companyId,
    this.unitId,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Address rebuild(void Function(AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressBuilder toBuilder() => AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
        pkCustomerAddressCode == other.pkCustomerAddressCode &&
        customerCode == other.customerCode &&
        addressType == other.addressType &&
        addressName == other.addressName &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        landmark == other.landmark &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        pincode == other.pincode &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        isDefault == other.isDefault &&
        status == other.status &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pkCustomerAddressCode.hashCode);
    _$hash = $jc(_$hash, customerCode.hashCode);
    _$hash = $jc(_$hash, addressType.hashCode);
    _$hash = $jc(_$hash, addressName.hashCode);
    _$hash = $jc(_$hash, addressLine1.hashCode);
    _$hash = $jc(_$hash, addressLine2.hashCode);
    _$hash = $jc(_$hash, landmark.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, pincode.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Address')
          ..add('pkCustomerAddressCode', pkCustomerAddressCode)
          ..add('customerCode', customerCode)
          ..add('addressType', addressType)
          ..add('addressName', addressName)
          ..add('addressLine1', addressLine1)
          ..add('addressLine2', addressLine2)
          ..add('landmark', landmark)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('pincode', pincode)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('isDefault', isDefault)
          ..add('status', status)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  int? _pkCustomerAddressCode;
  int? get pkCustomerAddressCode => _$this._pkCustomerAddressCode;
  set pkCustomerAddressCode(int? pkCustomerAddressCode) =>
      _$this._pkCustomerAddressCode = pkCustomerAddressCode;

  int? _customerCode;
  int? get customerCode => _$this._customerCode;
  set customerCode(int? customerCode) => _$this._customerCode = customerCode;

  String? _addressType;
  String? get addressType => _$this._addressType;
  set addressType(String? addressType) => _$this._addressType = addressType;

  String? _addressName;
  String? get addressName => _$this._addressName;
  set addressName(String? addressName) => _$this._addressName = addressName;

  String? _addressLine1;
  String? get addressLine1 => _$this._addressLine1;
  set addressLine1(String? addressLine1) => _$this._addressLine1 = addressLine1;

  String? _addressLine2;
  String? get addressLine2 => _$this._addressLine2;
  set addressLine2(String? addressLine2) => _$this._addressLine2 = addressLine2;

  String? _landmark;
  String? get landmark => _$this._landmark;
  set landmark(String? landmark) => _$this._landmark = landmark;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _pincode;
  String? get pincode => _$this._pincode;
  set pincode(String? pincode) => _$this._pincode = pincode;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AddressBuilder() {
    Address._defaults(this);
  }

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pkCustomerAddressCode = $v.pkCustomerAddressCode;
      _customerCode = $v.customerCode;
      _addressType = $v.addressType;
      _addressName = $v.addressName;
      _addressLine1 = $v.addressLine1;
      _addressLine2 = $v.addressLine2;
      _landmark = $v.landmark;
      _city = $v.city;
      _state = $v.state;
      _country = $v.country;
      _pincode = $v.pincode;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _isDefault = $v.isDefault;
      _status = $v.status;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Address other) {
    _$v = other as _$Address;
  }

  @override
  void update(void Function(AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Address build() => _build();

  _$Address _build() {
    final _$result =
        _$v ??
        _$Address._(
          pkCustomerAddressCode: pkCustomerAddressCode,
          customerCode: customerCode,
          addressType: addressType,
          addressName: addressName,
          addressLine1: addressLine1,
          addressLine2: addressLine2,
          landmark: landmark,
          city: city,
          state: state,
          country: country,
          pincode: pincode,
          latitude: latitude,
          longitude: longitude,
          isDefault: isDefault,
          status: status,
          companyId: companyId,
          unitId: unitId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
