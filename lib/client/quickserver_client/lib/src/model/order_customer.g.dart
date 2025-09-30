// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderCustomer extends OrderCustomer {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;

  factory _$OrderCustomer([void Function(OrderCustomerBuilder)? updates]) =>
      (OrderCustomerBuilder()..update(updates))._build();

  _$OrderCustomer._({this.id, this.name, this.phone, this.email}) : super._();
  @override
  OrderCustomer rebuild(void Function(OrderCustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderCustomerBuilder toBuilder() => OrderCustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCustomer &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderCustomer')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email))
        .toString();
  }
}

class OrderCustomerBuilder
    implements Builder<OrderCustomer, OrderCustomerBuilder> {
  _$OrderCustomer? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  OrderCustomerBuilder() {
    OrderCustomer._defaults(this);
  }

  OrderCustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCustomer other) {
    _$v = other as _$OrderCustomer;
  }

  @override
  void update(void Function(OrderCustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderCustomer build() => _build();

  _$OrderCustomer _build() {
    final _$result =
        _$v ??
        _$OrderCustomer._(id: id, name: name, phone: phone, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
