// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Customer extends Customer {
  @override
  final int? id;
  @override
  final String? customerName;
  @override
  final String? phone;
  @override
  final String? emailAddress;

  factory _$Customer([void Function(CustomerBuilder)? updates]) =>
      (CustomerBuilder()..update(updates))._build();

  _$Customer._({this.id, this.customerName, this.phone, this.emailAddress})
    : super._();
  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        id == other.id &&
        customerName == other.customerName &&
        phone == other.phone &&
        emailAddress == other.emailAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Customer')
          ..add('id', id)
          ..add('customerName', customerName)
          ..add('phone', phone)
          ..add('emailAddress', emailAddress))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  CustomerBuilder() {
    Customer._defaults(this);
  }

  CustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerName = $v.customerName;
      _phone = $v.phone;
      _emailAddress = $v.emailAddress;
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
          id: id,
          customerName: customerName,
          phone: phone,
          emailAddress: emailAddress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
