// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_health_cpu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemHealthCpu extends SystemHealthCpu {
  @override
  final double? usage;
  @override
  final int? cores;

  factory _$SystemHealthCpu([void Function(SystemHealthCpuBuilder)? updates]) =>
      (SystemHealthCpuBuilder()..update(updates))._build();

  _$SystemHealthCpu._({this.usage, this.cores}) : super._();
  @override
  SystemHealthCpu rebuild(void Function(SystemHealthCpuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemHealthCpuBuilder toBuilder() => SystemHealthCpuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemHealthCpu &&
        usage == other.usage &&
        cores == other.cores;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usage.hashCode);
    _$hash = $jc(_$hash, cores.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemHealthCpu')
          ..add('usage', usage)
          ..add('cores', cores))
        .toString();
  }
}

class SystemHealthCpuBuilder
    implements Builder<SystemHealthCpu, SystemHealthCpuBuilder> {
  _$SystemHealthCpu? _$v;

  double? _usage;
  double? get usage => _$this._usage;
  set usage(double? usage) => _$this._usage = usage;

  int? _cores;
  int? get cores => _$this._cores;
  set cores(int? cores) => _$this._cores = cores;

  SystemHealthCpuBuilder() {
    SystemHealthCpu._defaults(this);
  }

  SystemHealthCpuBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usage = $v.usage;
      _cores = $v.cores;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemHealthCpu other) {
    _$v = other as _$SystemHealthCpu;
  }

  @override
  void update(void Function(SystemHealthCpuBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemHealthCpu build() => _build();

  _$SystemHealthCpu _build() {
    final _$result = _$v ?? _$SystemHealthCpu._(usage: usage, cores: cores);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
