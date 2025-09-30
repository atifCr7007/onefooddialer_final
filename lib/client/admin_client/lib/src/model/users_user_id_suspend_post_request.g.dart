// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_user_id_suspend_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersUserIdSuspendPostRequest extends UsersUserIdSuspendPostRequest {
  @override
  final String? reason;
  @override
  final int? duration;

  factory _$UsersUserIdSuspendPostRequest([
    void Function(UsersUserIdSuspendPostRequestBuilder)? updates,
  ]) => (UsersUserIdSuspendPostRequestBuilder()..update(updates))._build();

  _$UsersUserIdSuspendPostRequest._({this.reason, this.duration}) : super._();
  @override
  UsersUserIdSuspendPostRequest rebuild(
    void Function(UsersUserIdSuspendPostRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UsersUserIdSuspendPostRequestBuilder toBuilder() =>
      UsersUserIdSuspendPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersUserIdSuspendPostRequest &&
        reason == other.reason &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersUserIdSuspendPostRequest')
          ..add('reason', reason)
          ..add('duration', duration))
        .toString();
  }
}

class UsersUserIdSuspendPostRequestBuilder
    implements
        Builder<
          UsersUserIdSuspendPostRequest,
          UsersUserIdSuspendPostRequestBuilder
        > {
  _$UsersUserIdSuspendPostRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  UsersUserIdSuspendPostRequestBuilder() {
    UsersUserIdSuspendPostRequest._defaults(this);
  }

  UsersUserIdSuspendPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersUserIdSuspendPostRequest other) {
    _$v = other as _$UsersUserIdSuspendPostRequest;
  }

  @override
  void update(void Function(UsersUserIdSuspendPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersUserIdSuspendPostRequest build() => _build();

  _$UsersUserIdSuspendPostRequest _build() {
    final _$result =
        _$v ??
        _$UsersUserIdSuspendPostRequest._(reason: reason, duration: duration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
