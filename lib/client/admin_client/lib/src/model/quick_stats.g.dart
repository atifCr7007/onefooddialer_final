// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuickStats extends QuickStats {
  @override
  final int? activeUsers;
  @override
  final int? pendingOrders;
  @override
  final int? systemAlerts;
  @override
  final double? revenue24h;
  @override
  final double? orderSuccess;
  @override
  final double? avgResponseTime;

  factory _$QuickStats([void Function(QuickStatsBuilder)? updates]) =>
      (QuickStatsBuilder()..update(updates))._build();

  _$QuickStats._({
    this.activeUsers,
    this.pendingOrders,
    this.systemAlerts,
    this.revenue24h,
    this.orderSuccess,
    this.avgResponseTime,
  }) : super._();
  @override
  QuickStats rebuild(void Function(QuickStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuickStatsBuilder toBuilder() => QuickStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuickStats &&
        activeUsers == other.activeUsers &&
        pendingOrders == other.pendingOrders &&
        systemAlerts == other.systemAlerts &&
        revenue24h == other.revenue24h &&
        orderSuccess == other.orderSuccess &&
        avgResponseTime == other.avgResponseTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activeUsers.hashCode);
    _$hash = $jc(_$hash, pendingOrders.hashCode);
    _$hash = $jc(_$hash, systemAlerts.hashCode);
    _$hash = $jc(_$hash, revenue24h.hashCode);
    _$hash = $jc(_$hash, orderSuccess.hashCode);
    _$hash = $jc(_$hash, avgResponseTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuickStats')
          ..add('activeUsers', activeUsers)
          ..add('pendingOrders', pendingOrders)
          ..add('systemAlerts', systemAlerts)
          ..add('revenue24h', revenue24h)
          ..add('orderSuccess', orderSuccess)
          ..add('avgResponseTime', avgResponseTime))
        .toString();
  }
}

class QuickStatsBuilder implements Builder<QuickStats, QuickStatsBuilder> {
  _$QuickStats? _$v;

  int? _activeUsers;
  int? get activeUsers => _$this._activeUsers;
  set activeUsers(int? activeUsers) => _$this._activeUsers = activeUsers;

  int? _pendingOrders;
  int? get pendingOrders => _$this._pendingOrders;
  set pendingOrders(int? pendingOrders) =>
      _$this._pendingOrders = pendingOrders;

  int? _systemAlerts;
  int? get systemAlerts => _$this._systemAlerts;
  set systemAlerts(int? systemAlerts) => _$this._systemAlerts = systemAlerts;

  double? _revenue24h;
  double? get revenue24h => _$this._revenue24h;
  set revenue24h(double? revenue24h) => _$this._revenue24h = revenue24h;

  double? _orderSuccess;
  double? get orderSuccess => _$this._orderSuccess;
  set orderSuccess(double? orderSuccess) => _$this._orderSuccess = orderSuccess;

  double? _avgResponseTime;
  double? get avgResponseTime => _$this._avgResponseTime;
  set avgResponseTime(double? avgResponseTime) =>
      _$this._avgResponseTime = avgResponseTime;

  QuickStatsBuilder() {
    QuickStats._defaults(this);
  }

  QuickStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activeUsers = $v.activeUsers;
      _pendingOrders = $v.pendingOrders;
      _systemAlerts = $v.systemAlerts;
      _revenue24h = $v.revenue24h;
      _orderSuccess = $v.orderSuccess;
      _avgResponseTime = $v.avgResponseTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuickStats other) {
    _$v = other as _$QuickStats;
  }

  @override
  void update(void Function(QuickStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuickStats build() => _build();

  _$QuickStats _build() {
    final _$result =
        _$v ??
        _$QuickStats._(
          activeUsers: activeUsers,
          pendingOrders: pendingOrders,
          systemAlerts: systemAlerts,
          revenue24h: revenue24h,
          orderSuccess: orderSuccess,
          avgResponseTime: avgResponseTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
