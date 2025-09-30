// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Customer extends Customer {
  @override
  final int? pkCustomerCode;
  @override
  final String? customerName;
  @override
  final String? phone;
  @override
  final String? emailAddress;
  @override
  final String? customerAddress;
  @override
  final String? locationCode;
  @override
  final String? locationName;
  @override
  final String? foodPreference;
  @override
  final String? city;
  @override
  final String? cityName;
  @override
  final String? companyName;
  @override
  final bool? status;
  @override
  final bool? phoneVerified;
  @override
  final bool? emailVerified;
  @override
  final DateTime? registeredOn;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Customer([void Function(CustomerBuilder)? updates]) =>
      (CustomerBuilder()..update(updates))._build();

  _$Customer._({
    this.pkCustomerCode,
    this.customerName,
    this.phone,
    this.emailAddress,
    this.customerAddress,
    this.locationCode,
    this.locationName,
    this.foodPreference,
    this.city,
    this.cityName,
    this.companyName,
    this.status,
    this.phoneVerified,
    this.emailVerified,
    this.registeredOn,
    this.companyId,
    this.unitId,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        pkCustomerCode == other.pkCustomerCode &&
        customerName == other.customerName &&
        phone == other.phone &&
        emailAddress == other.emailAddress &&
        customerAddress == other.customerAddress &&
        locationCode == other.locationCode &&
        locationName == other.locationName &&
        foodPreference == other.foodPreference &&
        city == other.city &&
        cityName == other.cityName &&
        companyName == other.companyName &&
        status == other.status &&
        phoneVerified == other.phoneVerified &&
        emailVerified == other.emailVerified &&
        registeredOn == other.registeredOn &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pkCustomerCode.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, customerAddress.hashCode);
    _$hash = $jc(_$hash, locationCode.hashCode);
    _$hash = $jc(_$hash, locationName.hashCode);
    _$hash = $jc(_$hash, foodPreference.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, cityName.hashCode);
    _$hash = $jc(_$hash, companyName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, phoneVerified.hashCode);
    _$hash = $jc(_$hash, emailVerified.hashCode);
    _$hash = $jc(_$hash, registeredOn.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Customer')
          ..add('pkCustomerCode', pkCustomerCode)
          ..add('customerName', customerName)
          ..add('phone', phone)
          ..add('emailAddress', emailAddress)
          ..add('customerAddress', customerAddress)
          ..add('locationCode', locationCode)
          ..add('locationName', locationName)
          ..add('foodPreference', foodPreference)
          ..add('city', city)
          ..add('cityName', cityName)
          ..add('companyName', companyName)
          ..add('status', status)
          ..add('phoneVerified', phoneVerified)
          ..add('emailVerified', emailVerified)
          ..add('registeredOn', registeredOn)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer? _$v;

  int? _pkCustomerCode;
  int? get pkCustomerCode => _$this._pkCustomerCode;
  set pkCustomerCode(int? pkCustomerCode) =>
      _$this._pkCustomerCode = pkCustomerCode;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _customerAddress;
  String? get customerAddress => _$this._customerAddress;
  set customerAddress(String? customerAddress) =>
      _$this._customerAddress = customerAddress;

  String? _locationCode;
  String? get locationCode => _$this._locationCode;
  set locationCode(String? locationCode) => _$this._locationCode = locationCode;

  String? _locationName;
  String? get locationName => _$this._locationName;
  set locationName(String? locationName) => _$this._locationName = locationName;

  String? _foodPreference;
  String? get foodPreference => _$this._foodPreference;
  set foodPreference(String? foodPreference) =>
      _$this._foodPreference = foodPreference;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _cityName;
  String? get cityName => _$this._cityName;
  set cityName(String? cityName) => _$this._cityName = cityName;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _phoneVerified;
  bool? get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool? phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  bool? _emailVerified;
  bool? get emailVerified => _$this._emailVerified;
  set emailVerified(bool? emailVerified) =>
      _$this._emailVerified = emailVerified;

  DateTime? _registeredOn;
  DateTime? get registeredOn => _$this._registeredOn;
  set registeredOn(DateTime? registeredOn) =>
      _$this._registeredOn = registeredOn;

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

  CustomerBuilder() {
    Customer._defaults(this);
  }

  CustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pkCustomerCode = $v.pkCustomerCode;
      _customerName = $v.customerName;
      _phone = $v.phone;
      _emailAddress = $v.emailAddress;
      _customerAddress = $v.customerAddress;
      _locationCode = $v.locationCode;
      _locationName = $v.locationName;
      _foodPreference = $v.foodPreference;
      _city = $v.city;
      _cityName = $v.cityName;
      _companyName = $v.companyName;
      _status = $v.status;
      _phoneVerified = $v.phoneVerified;
      _emailVerified = $v.emailVerified;
      _registeredOn = $v.registeredOn;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Customer other) {
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Customer build() => _build();

  _$Customer _build() {
    final _$result =
        _$v ??
        _$Customer._(
          pkCustomerCode: pkCustomerCode,
          customerName: customerName,
          phone: phone,
          emailAddress: emailAddress,
          customerAddress: customerAddress,
          locationCode: locationCode,
          locationName: locationName,
          foodPreference: foodPreference,
          city: city,
          cityName: cityName,
          companyName: companyName,
          status: status,
          phoneVerified: phoneVerified,
          emailVerified: emailVerified,
          registeredOn: registeredOn,
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
