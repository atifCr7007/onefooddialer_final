// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pause_subscription_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PauseSubscriptionRequest extends PauseSubscriptionRequest {
  @override
  final String? reason;
  @override
  final Date? resumeDate;

  factory _$PauseSubscriptionRequest(
          [void Function(PauseSubscriptionRequestBuilder)? updates]) =>
      (PauseSubscriptionRequestBuilder()..update(updates))._build();

  _$PauseSubscriptionRequest._({this.reason, this.resumeDate}) : super._();
  @override
  PauseSubscriptionRequest rebuild(
          void Function(PauseSubscriptionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PauseSubscriptionRequestBuilder toBuilder() =>
      PauseSubscriptionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PauseSubscriptionRequest &&
        reason == other.reason &&
        resumeDate == other.resumeDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, resumeDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PauseSubscriptionRequest')
          ..add('reason', reason)
          ..add('resumeDate', resumeDate))
        .toString();
  }
}

class PauseSubscriptionRequestBuilder
    implements
        Builder<PauseSubscriptionRequest, PauseSubscriptionRequestBuilder> {
  _$PauseSubscriptionRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _resumeDate;
  Date? get resumeDate => _$this._resumeDate;
  set resumeDate(Date? resumeDate) => _$this._resumeDate = resumeDate;

  PauseSubscriptionRequestBuilder() {
    PauseSubscriptionRequest._defaults(this);
  }

  PauseSubscriptionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _resumeDate = $v.resumeDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PauseSubscriptionRequest other) {
    _$v = other as _$PauseSubscriptionRequest;
  }

  @override
  void update(void Function(PauseSubscriptionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PauseSubscriptionRequest build() => _build();

  _$PauseSubscriptionRequest _build() {
    final _$result = _$v ??
        _$PauseSubscriptionRequest._(
          reason: reason,
          resumeDate: resumeDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
