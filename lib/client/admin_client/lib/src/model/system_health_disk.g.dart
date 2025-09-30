// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_health_disk.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemHealthDisk extends SystemHealthDisk {
  @override
  final double? usage;
  @override
  final int? used;
  @override
  final int? total;

  factory _$SystemHealthDisk([
    void Function(SystemHealthDiskBuilder)? updates,
  ]) => (SystemHealthDiskBuilder()..update(updates))._build();

  _$SystemHealthDisk._({this.usage, this.used, this.total}) : super._();
  @override
  SystemHealthDisk rebuild(void Function(SystemHealthDiskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemHealthDiskBuilder toBuilder() =>
      SystemHealthDiskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemHealthDisk &&
        usage == other.usage &&
        used == other.used &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemHealthDisk')
          ..add('usage', usage)
          ..add('used', used)
          ..add('total', total))
        .toString();
  }
}

class SystemHealthDiskBuilder
    implements Builder<SystemHealthDisk, SystemHealthDiskBuilder> {
  _$SystemHealthDisk? _$v;

  double? _usage;
  double? get usage => _$this._usage;
  set usage(double? usage) => _$this._usage = usage;

  int? _used;
  int? get used => _$this._used;
  set used(int? used) => _$this._used = used;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  SystemHealthDiskBuilder() {
    SystemHealthDisk._defaults(this);
  }

  SystemHealthDiskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usage = $v.usage;
      _used = $v.used;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemHealthDisk other) {
    _$v = other as _$SystemHealthDisk;
  }

  @override
  void update(void Function(SystemHealthDiskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemHealthDisk build() => _build();

  _$SystemHealthDisk _build() {
    final _$result =
        _$v ?? _$SystemHealthDisk._(usage: usage, used: used, total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
