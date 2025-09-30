// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_metrics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OverviewMetrics extends OverviewMetrics {
  @override
  final int? totalUsers;
  @override
  final int? totalOrders;
  @override
  final double? totalRevenue;
  @override
  final double? growthRate;
  @override
  final int? activeKitchens;
  @override
  final int? pendingApprovals;

  factory _$OverviewMetrics([void Function(OverviewMetricsBuilder)? updates]) =>
      (OverviewMetricsBuilder()..update(updates))._build();

  _$OverviewMetrics._({
    this.totalUsers,
    this.totalOrders,
    this.totalRevenue,
    this.growthRate,
    this.activeKitchens,
    this.pendingApprovals,
  }) : super._();
  @override
  OverviewMetrics rebuild(void Function(OverviewMetricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OverviewMetricsBuilder toBuilder() => OverviewMetricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OverviewMetrics &&
        totalUsers == other.totalUsers &&
        totalOrders == other.totalOrders &&
        totalRevenue == other.totalRevenue &&
        growthRate == other.growthRate &&
        activeKitchens == other.activeKitchens &&
        pendingApprovals == other.pendingApprovals;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalUsers.hashCode);
    _$hash = $jc(_$hash, totalOrders.hashCode);
    _$hash = $jc(_$hash, totalRevenue.hashCode);
    _$hash = $jc(_$hash, growthRate.hashCode);
    _$hash = $jc(_$hash, activeKitchens.hashCode);
    _$hash = $jc(_$hash, pendingApprovals.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OverviewMetrics')
          ..add('totalUsers', totalUsers)
          ..add('totalOrders', totalOrders)
          ..add('totalRevenue', totalRevenue)
          ..add('growthRate', growthRate)
          ..add('activeKitchens', activeKitchens)
          ..add('pendingApprovals', pendingApprovals))
        .toString();
  }
}

class OverviewMetricsBuilder
    implements Builder<OverviewMetrics, OverviewMetricsBuilder> {
  _$OverviewMetrics? _$v;

  int? _totalUsers;
  int? get totalUsers => _$this._totalUsers;
  set totalUsers(int? totalUsers) => _$this._totalUsers = totalUsers;

  int? _totalOrders;
  int? get totalOrders => _$this._totalOrders;
  set totalOrders(int? totalOrders) => _$this._totalOrders = totalOrders;

  double? _totalRevenue;
  double? get totalRevenue => _$this._totalRevenue;
  set totalRevenue(double? totalRevenue) => _$this._totalRevenue = totalRevenue;

  double? _growthRate;
  double? get growthRate => _$this._growthRate;
  set growthRate(double? growthRate) => _$this._growthRate = growthRate;

  int? _activeKitchens;
  int? get activeKitchens => _$this._activeKitchens;
  set activeKitchens(int? activeKitchens) =>
      _$this._activeKitchens = activeKitchens;

  int? _pendingApprovals;
  int? get pendingApprovals => _$this._pendingApprovals;
  set pendingApprovals(int? pendingApprovals) =>
      _$this._pendingApprovals = pendingApprovals;

  OverviewMetricsBuilder() {
    OverviewMetrics._defaults(this);
  }

  OverviewMetricsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalUsers = $v.totalUsers;
      _totalOrders = $v.totalOrders;
      _totalRevenue = $v.totalRevenue;
      _growthRate = $v.growthRate;
      _activeKitchens = $v.activeKitchens;
      _pendingApprovals = $v.pendingApprovals;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OverviewMetrics other) {
    _$v = other as _$OverviewMetrics;
  }

  @override
  void update(void Function(OverviewMetricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OverviewMetrics build() => _build();

  _$OverviewMetrics _build() {
    final _$result =
        _$v ??
        _$OverviewMetrics._(
          totalUsers: totalUsers,
          totalOrders: totalOrders,
          totalRevenue: totalRevenue,
          growthRate: growthRate,
          activeKitchens: activeKitchens,
          pendingApprovals: pendingApprovals,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
