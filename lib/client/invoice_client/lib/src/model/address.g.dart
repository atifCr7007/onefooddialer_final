// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Address extends Address {
  @override
  final String line1;
  @override
  final String? line2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postalCode;
  @override
  final String country;

  factory _$Address([void Function(AddressBuilder)? updates]) =>
      (AddressBuilder()..update(updates))._build();

  _$Address._({
    required this.line1,
    this.line2,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
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
        line1 == other.line1 &&
        line2 == other.line2 &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        country == other.country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, line1.hashCode);
    _$hash = $jc(_$hash, line2.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Address')
          ..add('line1', line1)
          ..add('line2', line2)
          ..add('city', city)
          ..add('state', state)
          ..add('postalCode', postalCode)
          ..add('country', country))
        .toString();
  }
}

class AddressBuilder implements Builder<Address, AddressBuilder> {
  _$Address? _$v;

  String? _line1;
  String? get line1 => _$this._line1;
  set line1(String? line1) => _$this._line1 = line1;

  String? _line2;
  String? get line2 => _$this._line2;
  set line2(String? line2) => _$this._line2 = line2;

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

  AddressBuilder() {
    Address._defaults(this);
  }

  AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _line1 = $v.line1;
      _line2 = $v.line2;
      _city = $v.city;
      _state = $v.state;
      _postalCode = $v.postalCode;
      _country = $v.country;
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
          line1: BuiltValueNullFieldError.checkNotNull(
            line1,
            r'Address',
            'line1',
          ),
          line2: line2,
          city: BuiltValueNullFieldError.checkNotNull(city, r'Address', 'city'),
          state: BuiltValueNullFieldError.checkNotNull(
            state,
            r'Address',
            'state',
          ),
          postalCode: BuiltValueNullFieldError.checkNotNull(
            postalCode,
            r'Address',
            'postalCode',
          ),
          country: BuiltValueNullFieldError.checkNotNull(
            country,
            r'Address',
            'country',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
