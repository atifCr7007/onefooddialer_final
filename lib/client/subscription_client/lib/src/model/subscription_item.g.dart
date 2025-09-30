// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionItem extends SubscriptionItem {
  @override
  final int? id;
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final int? subscriptionId;
  @override
  final int? mealId;
  @override
  final String? mealName;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  final double? total;
  @override
  final String? dayOfWeek;
  @override
  final String? mealType;
  @override
  final bool? isSwappable;
  @override
  final BuiltList<Map<String, dynamic>>? swapOptions;
  @override
  final String? notes;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$SubscriptionItem([
    void Function(SubscriptionItemBuilder)? updates,
  ]) => (SubscriptionItemBuilder()..update(updates))._build();

  _$SubscriptionItem._({
    this.id,
    this.companyId,
    this.unitId,
    this.subscriptionId,
    this.mealId,
    this.mealName,
    this.quantity,
    this.price,
    this.total,
    this.dayOfWeek,
    this.mealType,
    this.isSwappable,
    this.swapOptions,
    this.notes,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  SubscriptionItem rebuild(void Function(SubscriptionItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionItemBuilder toBuilder() =>
      SubscriptionItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionItem &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        subscriptionId == other.subscriptionId &&
        mealId == other.mealId &&
        mealName == other.mealName &&
        quantity == other.quantity &&
        price == other.price &&
        total == other.total &&
        dayOfWeek == other.dayOfWeek &&
        mealType == other.mealType &&
        isSwappable == other.isSwappable &&
        swapOptions == other.swapOptions &&
        notes == other.notes &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, subscriptionId.hashCode);
    _$hash = $jc(_$hash, mealId.hashCode);
    _$hash = $jc(_$hash, mealName.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, mealType.hashCode);
    _$hash = $jc(_$hash, isSwappable.hashCode);
    _$hash = $jc(_$hash, swapOptions.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionItem')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('subscriptionId', subscriptionId)
          ..add('mealId', mealId)
          ..add('mealName', mealName)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('total', total)
          ..add('dayOfWeek', dayOfWeek)
          ..add('mealType', mealType)
          ..add('isSwappable', isSwappable)
          ..add('swapOptions', swapOptions)
          ..add('notes', notes)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class SubscriptionItemBuilder
    implements Builder<SubscriptionItem, SubscriptionItemBuilder> {
  _$SubscriptionItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  int? _subscriptionId;
  int? get subscriptionId => _$this._subscriptionId;
  set subscriptionId(int? subscriptionId) =>
      _$this._subscriptionId = subscriptionId;

  int? _mealId;
  int? get mealId => _$this._mealId;
  set mealId(int? mealId) => _$this._mealId = mealId;

  String? _mealName;
  String? get mealName => _$this._mealName;
  set mealName(String? mealName) => _$this._mealName = mealName;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  String? _dayOfWeek;
  String? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(String? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  String? _mealType;
  String? get mealType => _$this._mealType;
  set mealType(String? mealType) => _$this._mealType = mealType;

  bool? _isSwappable;
  bool? get isSwappable => _$this._isSwappable;
  set isSwappable(bool? isSwappable) => _$this._isSwappable = isSwappable;

  ListBuilder<Map<String, dynamic>>? _swapOptions;
  ListBuilder<Map<String, dynamic>> get swapOptions =>
      _$this._swapOptions ??= ListBuilder<Map<String, dynamic>>();
  set swapOptions(ListBuilder<Map<String, dynamic>>? swapOptions) =>
      _$this._swapOptions = swapOptions;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  SubscriptionItemBuilder() {
    SubscriptionItem._defaults(this);
  }

  SubscriptionItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _subscriptionId = $v.subscriptionId;
      _mealId = $v.mealId;
      _mealName = $v.mealName;
      _quantity = $v.quantity;
      _price = $v.price;
      _total = $v.total;
      _dayOfWeek = $v.dayOfWeek;
      _mealType = $v.mealType;
      _isSwappable = $v.isSwappable;
      _swapOptions = $v.swapOptions?.toBuilder();
      _notes = $v.notes;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionItem other) {
    _$v = other as _$SubscriptionItem;
  }

  @override
  void update(void Function(SubscriptionItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionItem build() => _build();

  _$SubscriptionItem _build() {
    _$SubscriptionItem _$result;
    try {
      _$result =
          _$v ??
          _$SubscriptionItem._(
            id: id,
            companyId: companyId,
            unitId: unitId,
            subscriptionId: subscriptionId,
            mealId: mealId,
            mealName: mealName,
            quantity: quantity,
            price: price,
            total: total,
            dayOfWeek: dayOfWeek,
            mealType: mealType,
            isSwappable: isSwappable,
            swapOptions: _swapOptions?.build(),
            notes: notes,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'swapOptions';
        _swapOptions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubscriptionItem',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
