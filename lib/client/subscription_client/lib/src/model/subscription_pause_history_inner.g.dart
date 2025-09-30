// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_pause_history_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionPauseHistoryInner extends SubscriptionPauseHistoryInner {
  @override
  final DateTime? pausedAt;
  @override
  final String? reason;
  @override
  final Date? resumeDate;
  @override
  final DateTime? resumedAt;

  factory _$SubscriptionPauseHistoryInner([
    void Function(SubscriptionPauseHistoryInnerBuilder)? updates,
  ]) => (SubscriptionPauseHistoryInnerBuilder()..update(updates))._build();

  _$SubscriptionPauseHistoryInner._({
    this.pausedAt,
    this.reason,
    this.resumeDate,
    this.resumedAt,
  }) : super._();
  @override
  SubscriptionPauseHistoryInner rebuild(
    void Function(SubscriptionPauseHistoryInnerBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SubscriptionPauseHistoryInnerBuilder toBuilder() =>
      SubscriptionPauseHistoryInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionPauseHistoryInner &&
        pausedAt == other.pausedAt &&
        reason == other.reason &&
        resumeDate == other.resumeDate &&
        resumedAt == other.resumedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pausedAt.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, resumeDate.hashCode);
    _$hash = $jc(_$hash, resumedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionPauseHistoryInner')
          ..add('pausedAt', pausedAt)
          ..add('reason', reason)
          ..add('resumeDate', resumeDate)
          ..add('resumedAt', resumedAt))
        .toString();
  }
}

class SubscriptionPauseHistoryInnerBuilder
    implements
        Builder<
          SubscriptionPauseHistoryInner,
          SubscriptionPauseHistoryInnerBuilder
        > {
  _$SubscriptionPauseHistoryInner? _$v;

  DateTime? _pausedAt;
  DateTime? get pausedAt => _$this._pausedAt;
  set pausedAt(DateTime? pausedAt) => _$this._pausedAt = pausedAt;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _resumeDate;
  Date? get resumeDate => _$this._resumeDate;
  set resumeDate(Date? resumeDate) => _$this._resumeDate = resumeDate;

  DateTime? _resumedAt;
  DateTime? get resumedAt => _$this._resumedAt;
  set resumedAt(DateTime? resumedAt) => _$this._resumedAt = resumedAt;

  SubscriptionPauseHistoryInnerBuilder() {
    SubscriptionPauseHistoryInner._defaults(this);
  }

  SubscriptionPauseHistoryInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pausedAt = $v.pausedAt;
      _reason = $v.reason;
      _resumeDate = $v.resumeDate;
      _resumedAt = $v.resumedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionPauseHistoryInner other) {
    _$v = other as _$SubscriptionPauseHistoryInner;
  }

  @override
  void update(void Function(SubscriptionPauseHistoryInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionPauseHistoryInner build() => _build();

  _$SubscriptionPauseHistoryInner _build() {
    final _$result =
        _$v ??
        _$SubscriptionPauseHistoryInner._(
          pausedAt: pausedAt,
          reason: reason,
          resumeDate: resumeDate,
          resumedAt: resumedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
