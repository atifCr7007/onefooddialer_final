// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslot_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeslotCreate extends TimeslotCreate {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String starttime;
  @override
  final String endtime;
  @override
  final String day;
  @override
  final String menuType;
  @override
  final String kitchen;
  @override
  final int? status;

  factory _$TimeslotCreate([void Function(TimeslotCreateBuilder)? updates]) =>
      (TimeslotCreateBuilder()..update(updates))._build();

  _$TimeslotCreate._(
      {this.companyId,
      this.unitId,
      required this.starttime,
      required this.endtime,
      required this.day,
      required this.menuType,
      required this.kitchen,
      this.status})
      : super._();
  @override
  TimeslotCreate rebuild(void Function(TimeslotCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeslotCreateBuilder toBuilder() => TimeslotCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeslotCreate &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        starttime == other.starttime &&
        endtime == other.endtime &&
        day == other.day &&
        menuType == other.menuType &&
        kitchen == other.kitchen &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, starttime.hashCode);
    _$hash = $jc(_$hash, endtime.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, menuType.hashCode);
    _$hash = $jc(_$hash, kitchen.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeslotCreate')
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('starttime', starttime)
          ..add('endtime', endtime)
          ..add('day', day)
          ..add('menuType', menuType)
          ..add('kitchen', kitchen)
          ..add('status', status))
        .toString();
  }
}

class TimeslotCreateBuilder
    implements Builder<TimeslotCreate, TimeslotCreateBuilder> {
  _$TimeslotCreate? _$v;

  int? _companyId;
  int? get companyId => _$this._companyId;
  set companyId(int? companyId) => _$this._companyId = companyId;

  int? _unitId;
  int? get unitId => _$this._unitId;
  set unitId(int? unitId) => _$this._unitId = unitId;

  String? _starttime;
  String? get starttime => _$this._starttime;
  set starttime(String? starttime) => _$this._starttime = starttime;

  String? _endtime;
  String? get endtime => _$this._endtime;
  set endtime(String? endtime) => _$this._endtime = endtime;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  String? _menuType;
  String? get menuType => _$this._menuType;
  set menuType(String? menuType) => _$this._menuType = menuType;

  String? _kitchen;
  String? get kitchen => _$this._kitchen;
  set kitchen(String? kitchen) => _$this._kitchen = kitchen;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  TimeslotCreateBuilder() {
    TimeslotCreate._defaults(this);
  }

  TimeslotCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _starttime = $v.starttime;
      _endtime = $v.endtime;
      _day = $v.day;
      _menuType = $v.menuType;
      _kitchen = $v.kitchen;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeslotCreate other) {
    _$v = other as _$TimeslotCreate;
  }

  @override
  void update(void Function(TimeslotCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeslotCreate build() => _build();

  _$TimeslotCreate _build() {
    final _$result = _$v ??
        _$TimeslotCreate._(
          companyId: companyId,
          unitId: unitId,
          starttime: BuiltValueNullFieldError.checkNotNull(
              starttime, r'TimeslotCreate', 'starttime'),
          endtime: BuiltValueNullFieldError.checkNotNull(
              endtime, r'TimeslotCreate', 'endtime'),
          day: BuiltValueNullFieldError.checkNotNull(
              day, r'TimeslotCreate', 'day'),
          menuType: BuiltValueNullFieldError.checkNotNull(
              menuType, r'TimeslotCreate', 'menuType'),
          kitchen: BuiltValueNullFieldError.checkNotNull(
              kitchen, r'TimeslotCreate', 'kitchen'),
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
