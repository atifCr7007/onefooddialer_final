// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_share.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevenueShare extends RevenueShare {
  @override
  final double? grossAmount;

  factory _$RevenueShare([void Function(RevenueShareBuilder)? updates]) =>
      (RevenueShareBuilder()..update(updates))._build();

  _$RevenueShare._({this.grossAmount}) : super._();
  @override
  RevenueShare rebuild(void Function(RevenueShareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevenueShareBuilder toBuilder() => RevenueShareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevenueShare && grossAmount == other.grossAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grossAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevenueShare')
          ..add('grossAmount', grossAmount))
        .toString();
  }
}

class RevenueShareBuilder
    implements Builder<RevenueShare, RevenueShareBuilder> {
  _$RevenueShare? _$v;

  double? _grossAmount;
  double? get grossAmount => _$this._grossAmount;
  set grossAmount(double? grossAmount) => _$this._grossAmount = grossAmount;

  RevenueShareBuilder() {
    RevenueShare._defaults(this);
  }

  RevenueShareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grossAmount = $v.grossAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevenueShare other) {
    _$v = other as _$RevenueShare;
  }

  @override
  void update(void Function(RevenueShareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevenueShare build() => _build();

  _$RevenueShare _build() {
    final _$result = _$v ??
        _$RevenueShare._(
          grossAmount: grossAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
