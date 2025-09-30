// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_item_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionItemInput extends SubscriptionItemInput {
  @override
  final int mealId;
  @override
  final String mealName;
  @override
  final int quantity;
  @override
  final double price;
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

  factory _$SubscriptionItemInput([
    void Function(SubscriptionItemInputBuilder)? updates,
  ]) => (SubscriptionItemInputBuilder()..update(updates))._build();

  _$SubscriptionItemInput._({
    required this.mealId,
    required this.mealName,
    required this.quantity,
    required this.price,
    this.dayOfWeek,
    this.mealType,
    this.isSwappable,
    this.swapOptions,
    this.notes,
  }) : super._();
  @override
  SubscriptionItemInput rebuild(
    void Function(SubscriptionItemInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubscriptionItemInputBuilder toBuilder() =>
      SubscriptionItemInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionItemInput &&
        mealId == other.mealId &&
        mealName == other.mealName &&
        quantity == other.quantity &&
        price == other.price &&
        dayOfWeek == other.dayOfWeek &&
        mealType == other.mealType &&
        isSwappable == other.isSwappable &&
        swapOptions == other.swapOptions &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mealId.hashCode);
    _$hash = $jc(_$hash, mealName.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, mealType.hashCode);
    _$hash = $jc(_$hash, isSwappable.hashCode);
    _$hash = $jc(_$hash, swapOptions.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionItemInput')
          ..add('mealId', mealId)
          ..add('mealName', mealName)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('dayOfWeek', dayOfWeek)
          ..add('mealType', mealType)
          ..add('isSwappable', isSwappable)
          ..add('swapOptions', swapOptions)
          ..add('notes', notes))
        .toString();
  }
}

class SubscriptionItemInputBuilder
    implements Builder<SubscriptionItemInput, SubscriptionItemInputBuilder> {
  _$SubscriptionItemInput? _$v;

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

  SubscriptionItemInputBuilder() {
    SubscriptionItemInput._defaults(this);
  }

  SubscriptionItemInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mealId = $v.mealId;
      _mealName = $v.mealName;
      _quantity = $v.quantity;
      _price = $v.price;
      _dayOfWeek = $v.dayOfWeek;
      _mealType = $v.mealType;
      _isSwappable = $v.isSwappable;
      _swapOptions = $v.swapOptions?.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionItemInput other) {
    _$v = other as _$SubscriptionItemInput;
  }

  @override
  void update(void Function(SubscriptionItemInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionItemInput build() => _build();

  _$SubscriptionItemInput _build() {
    _$SubscriptionItemInput _$result;
    try {
      _$result =
          _$v ??
          _$SubscriptionItemInput._(
            mealId: BuiltValueNullFieldError.checkNotNull(
              mealId,
              r'SubscriptionItemInput',
              'mealId',
            ),
            mealName: BuiltValueNullFieldError.checkNotNull(
              mealName,
              r'SubscriptionItemInput',
              'mealName',
            ),
            quantity: BuiltValueNullFieldError.checkNotNull(
              quantity,
              r'SubscriptionItemInput',
              'quantity',
            ),
            price: BuiltValueNullFieldError.checkNotNull(
              price,
              r'SubscriptionItemInput',
              'price',
            ),
            dayOfWeek: dayOfWeek,
            mealType: mealType,
            isSwappable: isSwappable,
            swapOptions: _swapOptions?.build(),
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'swapOptions';
        _swapOptions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SubscriptionItemInput',
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
