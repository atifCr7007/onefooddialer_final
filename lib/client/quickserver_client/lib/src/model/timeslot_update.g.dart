// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslot_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeslotUpdate extends TimeslotUpdate {
  @override
  final int? companyId;
  @override
  final int? unitId;
  @override
  final String? starttime;
  @override
  final String? endtime;
  @override
  final String? day;
  @override
  final String? menuType;
  @override
  final String? kitchen;
  @override
  final int? status;

  factory _$TimeslotUpdate([void Function(TimeslotUpdateBuilder)? updates]) =>
      (TimeslotUpdateBuilder()..update(updates))._build();

  _$TimeslotUpdate._(
      {this.companyId,
      this.unitId,
      this.starttime,
      this.endtime,
      this.day,
      this.menuType,
      this.kitchen,
      this.status})
      : super._();
  @override
  TimeslotUpdate rebuild(void Function(TimeslotUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeslotUpdateBuilder toBuilder() => TimeslotUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeslotUpdate &&
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
    return (newBuiltValueToStringHelper(r'TimeslotUpdate')
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

class TimeslotUpdateBuilder
    implements Builder<TimeslotUpdate, TimeslotUpdateBuilder> {
  _$TimeslotUpdate? _$v;

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

  TimeslotUpdateBuilder() {
    TimeslotUpdate._defaults(this);
  }

  TimeslotUpdateBuilder get _$this {
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
  void replace(TimeslotUpdate other) {
    _$v = other as _$TimeslotUpdate;
  }

  @override
  void update(void Function(TimeslotUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeslotUpdate build() => _build();

  _$TimeslotUpdate _build() {
    final _$result = _$v ??
        _$TimeslotUpdate._(
          companyId: companyId,
          unitId: unitId,
          starttime: starttime,
          endtime: endtime,
          day: day,
          menuType: menuType,
          kitchen: kitchen,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
