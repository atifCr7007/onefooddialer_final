// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_extra.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommonExtra extends CommonExtra {
  @override
  final String? meal;
  @override
  final String? extra;
  @override
  final int? count;

  factory _$CommonExtra([void Function(CommonExtraBuilder)? updates]) =>
      (CommonExtraBuilder()..update(updates))._build();

  _$CommonExtra._({this.meal, this.extra, this.count}) : super._();
  @override
  CommonExtra rebuild(void Function(CommonExtraBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonExtraBuilder toBuilder() => CommonExtraBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonExtra &&
        meal == other.meal &&
        extra == other.extra &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meal.hashCode);
    _$hash = $jc(_$hash, extra.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommonExtra')
          ..add('meal', meal)
          ..add('extra', extra)
          ..add('count', count))
        .toString();
  }
}

class CommonExtraBuilder implements Builder<CommonExtra, CommonExtraBuilder> {
  _$CommonExtra? _$v;

  String? _meal;
  String? get meal => _$this._meal;
  set meal(String? meal) => _$this._meal = meal;

  String? _extra;
  String? get extra => _$this._extra;
  set extra(String? extra) => _$this._extra = extra;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  CommonExtraBuilder() {
    CommonExtra._defaults(this);
  }

  CommonExtraBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meal = $v.meal;
      _extra = $v.extra;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonExtra other) {
    _$v = other as _$CommonExtra;
  }

  @override
  void update(void Function(CommonExtraBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommonExtra build() => _build();

  _$CommonExtra _build() {
    final _$result = _$v ??
        _$CommonExtra._(
          meal: meal,
          extra: extra,
          count: count,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
