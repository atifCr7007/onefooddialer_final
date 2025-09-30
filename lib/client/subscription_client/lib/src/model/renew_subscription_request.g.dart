// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renew_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RenewSubscriptionRequest extends RenewSubscriptionRequest {
  @override
  final int? days;

  factory _$RenewSubscriptionRequest([
    void Function(RenewSubscriptionRequestBuilder)? updates,
  ]) => (RenewSubscriptionRequestBuilder()..update(updates))._build();

  _$RenewSubscriptionRequest._({this.days}) : super._();
  @override
  RenewSubscriptionRequest rebuild(
    void Function(RenewSubscriptionRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RenewSubscriptionRequestBuilder toBuilder() =>
      RenewSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenewSubscriptionRequest && days == other.days;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RenewSubscriptionRequest',
    )..add('days', days)).toString();
  }
}

class RenewSubscriptionRequestBuilder
    implements
        Builder<RenewSubscriptionRequest, RenewSubscriptionRequestBuilder> {
  _$RenewSubscriptionRequest? _$v;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  RenewSubscriptionRequestBuilder() {
    RenewSubscriptionRequest._defaults(this);
  }

  RenewSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenewSubscriptionRequest other) {
    _$v = other as _$RenewSubscriptionRequest;
  }

  @override
  void update(void Function(RenewSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RenewSubscriptionRequest build() => _build();

  _$RenewSubscriptionRequest _build() {
    final _$result = _$v ?? _$RenewSubscriptionRequest._(days: days);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
