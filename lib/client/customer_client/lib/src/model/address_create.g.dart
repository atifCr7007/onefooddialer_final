// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressCreate extends AddressCreate {
  @override
  final String addressType;
  @override
  final String? addressName;
  @override
  final String addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? landmark;
  @override
  final String city;
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
  final int? companyId;
  @override
  final int? unitId;

  factory _$AddressCreate([void Function(AddressCreateBuilder)? updates]) =>
      (AddressCreateBuilder()..update(updates))._build();

  _$AddressCreate._({
    required this.addressType,
    this.addressName,
    required this.addressLine1,
    this.addressLine2,
    this.landmark,
    required this.city,
    this.state,
    this.country,
    this.pincode,
    this.latitude,
    this.longitude,
    this.isDefault,
    this.companyId,
    this.unitId,
  }) : super._();
  @override
  AddressCreate rebuild(void Function(AddressCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressCreateBuilder toBuilder() => AddressCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressCreate &&
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
        companyId == other.companyId &&
        unitId == other.unitId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressCreate')
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
          ..add('companyId', companyId)
          ..add('unitId', unitId))
        .toString();
  }
}

class AddressCreateBuilder
    implements Builder<AddressCreate, AddressCreateBuilder> {
  _$AddressCreate? _$v;

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

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  AddressCreateBuilder() {
    AddressCreate._defaults(this);
  }

  AddressCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressCreate other) {
    _$v = other as _$AddressCreate;
  }

  @override
  void update(void Function(AddressCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressCreate build() => _build();

  _$AddressCreate _build() {
    final _$result =
        _$v ??
        _$AddressCreate._(
          addressType: BuiltValueNullFieldError.checkNotNull(
            addressType,
            r'AddressCreate',
            'addressType',
          ),
          addressName: addressName,
          addressLine1: BuiltValueNullFieldError.checkNotNull(
            addressLine1,
            r'AddressCreate',
            'addressLine1',
          ),
          addressLine2: addressLine2,
          landmark: landmark,
          city: BuiltValueNullFieldError.checkNotNull(
            city,
            r'AddressCreate',
            'city',
          ),
          state: state,
          country: country,
          pincode: pincode,
          latitude: latitude,
          longitude: longitude,
          isDefault: isDefault,
          companyId: companyId,
          unitId: unitId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
