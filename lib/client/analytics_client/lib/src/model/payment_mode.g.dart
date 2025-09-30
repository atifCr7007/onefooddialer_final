// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentMode extends PaymentMode {
  @override
  final String? paymentMode;
  @override
  final int? count;

  factory _$PaymentMode([void Function(PaymentModeBuilder)? updates]) =>
      (PaymentModeBuilder()..update(updates))._build();

  _$PaymentMode._({this.paymentMode, this.count}) : super._();
  @override
  PaymentMode rebuild(void Function(PaymentModeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentModeBuilder toBuilder() => PaymentModeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentMode &&
        paymentMode == other.paymentMode &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentMode.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentMode')
          ..add('paymentMode', paymentMode)
          ..add('count', count))
        .toString();
  }
}

class PaymentModeBuilder implements Builder<PaymentMode, PaymentModeBuilder> {
  _$PaymentMode? _$v;

  String? _paymentMode;
  String? get paymentMode => _$this._paymentMode;
  set paymentMode(String? paymentMode) => _$this._paymentMode = paymentMode;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  PaymentModeBuilder() {
    PaymentMode._defaults(this);
  }

  PaymentModeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentMode = $v.paymentMode;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentMode other) {
    _$v = other as _$PaymentMode;
  }

  @override
  void update(void Function(PaymentModeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentMode build() => _build();

  _$PaymentMode _build() {
    final _$result =
        _$v ?? _$PaymentMode._(paymentMode: paymentMode, count: count);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
