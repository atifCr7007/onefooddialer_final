// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardResponseData extends DashboardResponseData {
  @override
  final OverviewMetrics? overview;
  @override
  final QuickStats? quickStats;
  @override
  final BuiltList<ChartData>? charts;
  @override
  final SystemHealth? systemHealth;
  @override
  final BuiltList<Alert>? alerts;
  @override
  final BuiltList<ActivityItem>? recentActivity;

  factory _$DashboardResponseData([
    void Function(DashboardResponseDataBuilder)? updates,
  ]) => (DashboardResponseDataBuilder()..update(updates))._build();

  _$DashboardResponseData._({
    this.overview,
    this.quickStats,
    this.charts,
    this.systemHealth,
    this.alerts,
    this.recentActivity,
  }) : super._();
  @override
  DashboardResponseData rebuild(
    void Function(DashboardResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardResponseDataBuilder toBuilder() =>
      DashboardResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardResponseData &&
        overview == other.overview &&
        quickStats == other.quickStats &&
        charts == other.charts &&
        systemHealth == other.systemHealth &&
        alerts == other.alerts &&
        recentActivity == other.recentActivity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, quickStats.hashCode);
    _$hash = $jc(_$hash, charts.hashCode);
    _$hash = $jc(_$hash, systemHealth.hashCode);
    _$hash = $jc(_$hash, alerts.hashCode);
    _$hash = $jc(_$hash, recentActivity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardResponseData')
          ..add('overview', overview)
          ..add('quickStats', quickStats)
          ..add('charts', charts)
          ..add('systemHealth', systemHealth)
          ..add('alerts', alerts)
          ..add('recentActivity', recentActivity))
        .toString();
  }
}

class DashboardResponseDataBuilder
    implements Builder<DashboardResponseData, DashboardResponseDataBuilder> {
  _$DashboardResponseData? _$v;

  OverviewMetricsBuilder? _overview;
  OverviewMetricsBuilder get overview =>
      _$this._overview ??= OverviewMetricsBuilder();
  set overview(OverviewMetricsBuilder? overview) => _$this._overview = overview;

  QuickStatsBuilder? _quickStats;
  QuickStatsBuilder get quickStats =>
      _$this._quickStats ??= QuickStatsBuilder();
  set quickStats(QuickStatsBuilder? quickStats) =>
      _$this._quickStats = quickStats;

  ListBuilder<ChartData>? _charts;
  ListBuilder<ChartData> get charts =>
      _$this._charts ??= ListBuilder<ChartData>();
  set charts(ListBuilder<ChartData>? charts) => _$this._charts = charts;

  SystemHealthBuilder? _systemHealth;
  SystemHealthBuilder get systemHealth =>
      _$this._systemHealth ??= SystemHealthBuilder();
  set systemHealth(SystemHealthBuilder? systemHealth) =>
      _$this._systemHealth = systemHealth;

  ListBuilder<Alert>? _alerts;
  ListBuilder<Alert> get alerts => _$this._alerts ??= ListBuilder<Alert>();
  set alerts(ListBuilder<Alert>? alerts) => _$this._alerts = alerts;

  ListBuilder<ActivityItem>? _recentActivity;
  ListBuilder<ActivityItem> get recentActivity =>
      _$this._recentActivity ??= ListBuilder<ActivityItem>();
  set recentActivity(ListBuilder<ActivityItem>? recentActivity) =>
      _$this._recentActivity = recentActivity;

  DashboardResponseDataBuilder() {
    DashboardResponseData._defaults(this);
  }

  DashboardResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _overview = $v.overview?.toBuilder();
      _quickStats = $v.quickStats?.toBuilder();
      _charts = $v.charts?.toBuilder();
      _systemHealth = $v.systemHealth?.toBuilder();
      _alerts = $v.alerts?.toBuilder();
      _recentActivity = $v.recentActivity?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardResponseData other) {
    _$v = other as _$DashboardResponseData;
  }

  @override
  void update(void Function(DashboardResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardResponseData build() => _build();

  _$DashboardResponseData _build() {
    _$DashboardResponseData _$result;
    try {
      _$result =
          _$v ??
          _$DashboardResponseData._(
            overview: _overview?.build(),
            quickStats: _quickStats?.build(),
            charts: _charts?.build(),
            systemHealth: _systemHealth?.build(),
            alerts: _alerts?.build(),
            recentActivity: _recentActivity?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'overview';
        _overview?.build();
        _$failedField = 'quickStats';
        _quickStats?.build();
        _$failedField = 'charts';
        _charts?.build();
        _$failedField = 'systemHealth';
        _systemHealth?.build();
        _$failedField = 'alerts';
        _alerts?.build();
        _$failedField = 'recentActivity';
        _recentActivity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DashboardResponseData',
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
