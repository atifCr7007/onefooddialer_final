// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryAddressTypeEnum _$deliveryAddressTypeEnum_home =
    const DeliveryAddressTypeEnum._('home');
const DeliveryAddressTypeEnum _$deliveryAddressTypeEnum_work =
    const DeliveryAddressTypeEnum._('work');
const DeliveryAddressTypeEnum _$deliveryAddressTypeEnum_other =
    const DeliveryAddressTypeEnum._('other');
const DeliveryAddressTypeEnum _$deliveryAddressTypeEnum_unknownDefaultOpenApi =
    const DeliveryAddressTypeEnum._('unknownDefaultOpenApi');

DeliveryAddressTypeEnum _$deliveryAddressTypeEnumValueOf(String name) {
  switch (name) {
    case 'home':
      return _$deliveryAddressTypeEnum_home;
    case 'work':
      return _$deliveryAddressTypeEnum_work;
    case 'other':
      return _$deliveryAddressTypeEnum_other;
    case 'unknownDefaultOpenApi':
      return _$deliveryAddressTypeEnum_unknownDefaultOpenApi;
    default:
      return _$deliveryAddressTypeEnum_unknownDefaultOpenApi;
  }
}

final BuiltSet<DeliveryAddressTypeEnum> _$deliveryAddressTypeEnumValues =
    BuiltSet<DeliveryAddressTypeEnum>(const <DeliveryAddressTypeEnum>[
      _$deliveryAddressTypeEnum_home,
      _$deliveryAddressTypeEnum_work,
      _$deliveryAddressTypeEnum_other,
      _$deliveryAddressTypeEnum_unknownDefaultOpenApi,
    ]);

Serializer<DeliveryAddressTypeEnum> _$deliveryAddressTypeEnumSerializer =
    _$DeliveryAddressTypeEnumSerializer();

class _$DeliveryAddressTypeEnumSerializer
    implements PrimitiveSerializer<DeliveryAddressTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'home': 'home',
    'work': 'work',
    'other': 'other',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'home': 'home',
    'work': 'work',
    'other': 'other',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeliveryAddressTypeEnum];
  @override
  final String wireName = 'DeliveryAddressTypeEnum';

  @override
  Object serialize(
    Serializers serializers,
    DeliveryAddressTypeEnum object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeliveryAddressTypeEnum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeliveryAddressTypeEnum.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

class _$DeliveryAddress extends DeliveryAddress {
  @override
  final String? id;
  @override
  final DeliveryAddressTypeEnum? type;
  @override
  final String? label;
  @override
  final String? addressLine1;
  @override
  final String? addressLine2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? landmark;
  @override
  final String? contactName;
  @override
  final String? contactPhone;

  factory _$DeliveryAddress([void Function(DeliveryAddressBuilder)? updates]) =>
      (DeliveryAddressBuilder()..update(updates))._build();

  _$DeliveryAddress._({
    this.id,
    this.type,
    this.label,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.latitude,
    this.longitude,
    this.landmark,
    this.contactName,
    this.contactPhone,
  }) : super._();
  @override
  DeliveryAddress rebuild(void Function(DeliveryAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryAddressBuilder toBuilder() => DeliveryAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryAddress &&
        id == other.id &&
        type == other.type &&
        label == other.label &&
        addressLine1 == other.addressLine1 &&
        addressLine2 == other.addressLine2 &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        country == other.country &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        landmark == other.landmark &&
        contactName == other.contactName &&
        contactPhone == other.contactPhone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, addressLine1.hashCode);
    _$hash = $jc(_$hash, addressLine2.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, landmark.hashCode);
    _$hash = $jc(_$hash, contactName.hashCode);
    _$hash = $jc(_$hash, contactPhone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryAddress')
          ..add('id', id)
          ..add('type', type)
          ..add('label', label)
          ..add('addressLine1', addressLine1)
          ..add('addressLine2', addressLine2)
          ..add('city', city)
          ..add('state', state)
          ..add('postalCode', postalCode)
          ..add('country', country)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('landmark', landmark)
          ..add('contactName', contactName)
          ..add('contactPhone', contactPhone))
        .toString();
  }
}

class DeliveryAddressBuilder
    implements Builder<DeliveryAddress, DeliveryAddressBuilder> {
  _$DeliveryAddress? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeliveryAddressTypeEnum? _type;
  DeliveryAddressTypeEnum? get type => _$this._type;
  set type(DeliveryAddressTypeEnum? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _addressLine1;
  String? get addressLine1 => _$this._addressLine1;
  set addressLine1(String? addressLine1) => _$this._addressLine1 = addressLine1;

  String? _addressLine2;
  String? get addressLine2 => _$this._addressLine2;
  set addressLine2(String? addressLine2) => _$this._addressLine2 = addressLine2;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  String? _landmark;
  String? get landmark => _$this._landmark;
  set landmark(String? landmark) => _$this._landmark = landmark;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhone;
  String? get contactPhone => _$this._contactPhone;
  set contactPhone(String? contactPhone) => _$this._contactPhone = contactPhone;

  DeliveryAddressBuilder() {
    DeliveryAddress._defaults(this);
  }

  DeliveryAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _label = $v.label;
      _addressLine1 = $v.addressLine1;
      _addressLine2 = $v.addressLine2;
      _city = $v.city;
      _state = $v.state;
      _postalCode = $v.postalCode;
      _country = $v.country;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _landmark = $v.landmark;
      _contactName = $v.contactName;
      _contactPhone = $v.contactPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryAddress other) {
    _$v = other as _$DeliveryAddress;
  }

  @override
  void update(void Function(DeliveryAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryAddress build() => _build();

  _$DeliveryAddress _build() {
    final _$result =
        _$v ??
        _$DeliveryAddress._(
          id: id,
          type: type,
          label: label,
          addressLine1: addressLine1,
          addressLine2: addressLine2,
          city: city,
          state: state,
          postalCode: postalCode,
          country: country,
          latitude: latitude,
          longitude: longitude,
          landmark: landmark,
          contactName: contactName,
          contactPhone: contactPhone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
