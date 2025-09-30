// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeslot.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Timeslot extends Timeslot {
  @override
  final int? id;
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
  @override
  final String? formattedStartTime;
  @override
  final String? formattedEndTime;
  @override
  final String? displaySlot;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Timeslot([void Function(TimeslotBuilder)? updates]) =>
      (TimeslotBuilder()..update(updates))._build();

  _$Timeslot._({
    this.id,
    this.companyId,
    this.unitId,
    this.starttime,
    this.endtime,
    this.day,
    this.menuType,
    this.kitchen,
    this.status,
    this.formattedStartTime,
    this.formattedEndTime,
    this.displaySlot,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  Timeslot rebuild(void Function(TimeslotBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeslotBuilder toBuilder() => TimeslotBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Timeslot &&
        id == other.id &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        starttime == other.starttime &&
        endtime == other.endtime &&
        day == other.day &&
        menuType == other.menuType &&
        kitchen == other.kitchen &&
        status == other.status &&
        formattedStartTime == other.formattedStartTime &&
        formattedEndTime == other.formattedEndTime &&
        displaySlot == other.displaySlot &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, unitId.hashCode);
    _$hash = $jc(_$hash, starttime.hashCode);
    _$hash = $jc(_$hash, endtime.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, menuType.hashCode);
    _$hash = $jc(_$hash, kitchen.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, formattedStartTime.hashCode);
    _$hash = $jc(_$hash, formattedEndTime.hashCode);
    _$hash = $jc(_$hash, displaySlot.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Timeslot')
          ..add('id', id)
          ..add('companyId', companyId)
          ..add('unitId', unitId)
          ..add('starttime', starttime)
          ..add('endtime', endtime)
          ..add('day', day)
          ..add('menuType', menuType)
          ..add('kitchen', kitchen)
          ..add('status', status)
          ..add('formattedStartTime', formattedStartTime)
          ..add('formattedEndTime', formattedEndTime)
          ..add('displaySlot', displaySlot)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TimeslotBuilder implements Builder<Timeslot, TimeslotBuilder> {
  _$Timeslot? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  String? _formattedStartTime;
  String? get formattedStartTime => _$this._formattedStartTime;
  set formattedStartTime(String? formattedStartTime) =>
      _$this._formattedStartTime = formattedStartTime;

  String? _formattedEndTime;
  String? get formattedEndTime => _$this._formattedEndTime;
  set formattedEndTime(String? formattedEndTime) =>
      _$this._formattedEndTime = formattedEndTime;

  String? _displaySlot;
  String? get displaySlot => _$this._displaySlot;
  set displaySlot(String? displaySlot) => _$this._displaySlot = displaySlot;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TimeslotBuilder() {
    Timeslot._defaults(this);
  }

  TimeslotBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _companyId = $v.companyId;
      _unitId = $v.unitId;
      _starttime = $v.starttime;
      _endtime = $v.endtime;
      _day = $v.day;
      _menuType = $v.menuType;
      _kitchen = $v.kitchen;
      _status = $v.status;
      _formattedStartTime = $v.formattedStartTime;
      _formattedEndTime = $v.formattedEndTime;
      _displaySlot = $v.displaySlot;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Timeslot other) {
    _$v = other as _$Timeslot;
  }

  @override
  void update(void Function(TimeslotBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Timeslot build() => _build();

  _$Timeslot _build() {
    final _$result =
        _$v ??
        _$Timeslot._(
          id: id,
          companyId: companyId,
          unitId: unitId,
          starttime: starttime,
          endtime: endtime,
          day: day,
          menuType: menuType,
          kitchen: kitchen,
          status: status,
          formattedStartTime: formattedStartTime,
          formattedEndTime: formattedEndTime,
          displaySlot: displaySlot,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
