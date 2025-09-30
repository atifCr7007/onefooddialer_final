// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerUpdate extends CustomerUpdate {
  @override
  final String customerName;
  @override
  final String phone;
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
  final String? password;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final bool? isGuest;
  @override
  final bool? status;

  factory _$CustomerUpdate([void Function(CustomerUpdateBuilder)? updates]) =>
      (CustomerUpdateBuilder()..update(updates))._build();

  _$CustomerUpdate._({
    required this.customerName,
    required this.phone,
    this.emailAddress,
    this.customerAddress,
    this.locationCode,
    this.locationName,
    this.foodPreference,
    this.city,
    this.cityName,
    this.companyName,
    this.password,
    this.companyId,
    this.unitId,
    this.isGuest,
    this.status,
  }) : super._();
  @override
  CustomerUpdate rebuild(void Function(CustomerUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerUpdateBuilder toBuilder() => CustomerUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerUpdate &&
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
        password == other.password &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        isGuest == other.isGuest &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, isGuest.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerUpdate')
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
          ..add('password', password)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('isGuest', isGuest)
          ..add('status', status))
        .toString();
  }
}

class CustomerUpdateBuilder
    implements Builder<CustomerUpdate, CustomerUpdateBuilder> {
  _$CustomerUpdate? _$v;

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

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  bool? _isGuest;
  bool? get isGuest => _$this._isGuest;
  set isGuest(bool? isGuest) => _$this._isGuest = isGuest;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  CustomerUpdateBuilder() {
    CustomerUpdate._defaults(this);
  }

  CustomerUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
      _password = $v.password;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _isGuest = $v.isGuest;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerUpdate other) {
    _$v = other as _$CustomerUpdate;
  }

  @override
  void update(void Function(CustomerUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerUpdate build() => _build();

  _$CustomerUpdate _build() {
    final _$result =
        _$v ??
        _$CustomerUpdate._(
          customerName: BuiltValueNullFieldError.checkNotNull(
            customerName,
            r'CustomerUpdate',
            'customerName',
          ),
          phone: BuiltValueNullFieldError.checkNotNull(
            phone,
            r'CustomerUpdate',
            'phone',
          ),
          emailAddress: emailAddress,
          customerAddress: customerAddress,
          locationCode: locationCode,
          locationName: locationName,
          foodPreference: foodPreference,
          city: city,
          cityName: cityName,
          companyName: companyName,
          password: password,
          companyId: companyId,
          unitId: unitId,
          isGuest: isGuest,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
