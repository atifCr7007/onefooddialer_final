// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeliveryLocation extends DeliveryLocation {
  @override
  final int? id;
  @override
  final String? location;
  @override
  final String? city;
  @override
  final String? subCityArea;
  @override
  final String? pin;
  @override
  final double? deliveryCharges;
  @override
  final String? deliveryTime;
  @override
  final bool? isDefault;
  @override
  final bool? status;

  factory _$DeliveryLocation([
    void Function(DeliveryLocationBuilder)? updates,
  ]) => (DeliveryLocationBuilder()..update(updates))._build();

  _$DeliveryLocation._({
    this.id,
    this.location,
    this.city,
    this.subCityArea,
    this.pin,
    this.deliveryCharges,
    this.deliveryTime,
    this.isDefault,
    this.status,
  }) : super._();
  @override
  DeliveryLocation rebuild(void Function(DeliveryLocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryLocationBuilder toBuilder() =>
      DeliveryLocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryLocation &&
        id == other.id &&
        location == other.location &&
        city == other.city &&
        subCityArea == other.subCityArea &&
        pin == other.pin &&
        deliveryCharges == other.deliveryCharges &&
        deliveryTime == other.deliveryTime &&
        isDefault == other.isDefault &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, subCityArea.hashCode);
    _$hash = $jc(_$hash, pin.hashCode);
    _$hash = $jc(_$hash, deliveryCharges.hashCode);
    _$hash = $jc(_$hash, deliveryTime.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryLocation')
          ..add('id', id)
          ..add('location', location)
          ..add('city', city)
          ..add('subCityArea', subCityArea)
          ..add('pin', pin)
          ..add('deliveryCharges', deliveryCharges)
          ..add('deliveryTime', deliveryTime)
          ..add('isDefault', isDefault)
          ..add('status', status))
        .toString();
  }
}

class DeliveryLocationBuilder
    implements Builder<DeliveryLocation, DeliveryLocationBuilder> {
  _$DeliveryLocation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _subCityArea;
  String? get subCityArea => _$this._subCityArea;
  set subCityArea(String? subCityArea) => _$this._subCityArea = subCityArea;

  String? _pin;
  String? get pin => _$this._pin;
  set pin(String? pin) => _$this._pin = pin;

  double? _deliveryCharges;
  double? get deliveryCharges => _$this._deliveryCharges;
  set deliveryCharges(double? deliveryCharges) =>
      _$this._deliveryCharges = deliveryCharges;

  String? _deliveryTime;
  String? get deliveryTime => _$this._deliveryTime;
  set deliveryTime(String? deliveryTime) => _$this._deliveryTime = deliveryTime;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DeliveryLocationBuilder() {
    DeliveryLocation._defaults(this);
  }

  DeliveryLocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _location = $v.location;
      _city = $v.city;
      _subCityArea = $v.subCityArea;
      _pin = $v.pin;
      _deliveryCharges = $v.deliveryCharges;
      _deliveryTime = $v.deliveryTime;
      _isDefault = $v.isDefault;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryLocation other) {
    _$v = other as _$DeliveryLocation;
  }

  @override
  void update(void Function(DeliveryLocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryLocation build() => _build();

  _$DeliveryLocation _build() {
    final _$result =
        _$v ??
        _$DeliveryLocation._(
          id: id,
          location: location,
          city: city,
          subCityArea: subCityArea,
          pin: pin,
          deliveryCharges: deliveryCharges,
          deliveryTime: deliveryTime,
          isDefault: isDefault,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
