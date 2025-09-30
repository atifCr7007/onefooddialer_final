// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Kitchen extends Kitchen {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? pincode;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final bool? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Kitchen([void Function(KitchenBuilder)? updates]) =>
      (KitchenBuilder()..update(updates))._build();

  _$Kitchen._({
    this.id,
    this.name,
    this.description,
    this.address,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.phone,
    this.email,
    this.status,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Kitchen rebuild(void Function(KitchenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenBuilder toBuilder() => KitchenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Kitchen &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        address == other.address &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        pincode == other.pincode &&
        phone == other.phone &&
        email == other.email &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, pincode.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Kitchen')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('address', address)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('pincode', pincode)
          ..add('phone', phone)
          ..add('email', email)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KitchenBuilder implements Builder<Kitchen, KitchenBuilder> {
  _$Kitchen? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

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

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KitchenBuilder() {
    Kitchen._defaults(this);
  }

  KitchenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _address = $v.address;
      _city = $v.city;
      _state = $v.state;
      _country = $v.country;
      _pincode = $v.pincode;
      _phone = $v.phone;
      _email = $v.email;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Kitchen other) {
    _$v = other as _$Kitchen;
  }

  @override
  void update(void Function(KitchenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Kitchen build() => _build();

  _$Kitchen _build() {
    final _$result =
        _$v ??
        _$Kitchen._(
          id: id,
          name: name,
          description: description,
          address: address,
          city: city,
          state: state,
          country: country,
          pincode: pincode,
          phone: phone,
          email: email,
          status: status,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
