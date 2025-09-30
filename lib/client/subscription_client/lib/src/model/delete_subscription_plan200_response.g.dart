// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_subscription_plan200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSubscriptionPlan200Response
    extends DeleteSubscriptionPlan200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$DeleteSubscriptionPlan200Response([
    void Function(DeleteSubscriptionPlan200ResponseBuilder)? updates,
  ]) => (DeleteSubscriptionPlan200ResponseBuilder()..update(updates))._build();

  _$DeleteSubscriptionPlan200Response._({this.success, this.message})
    : super._();
  @override
  DeleteSubscriptionPlan200Response rebuild(
    void Function(DeleteSubscriptionPlan200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeleteSubscriptionPlan200ResponseBuilder toBuilder() =>
      DeleteSubscriptionPlan200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSubscriptionPlan200Response &&
        success == other.success &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteSubscriptionPlan200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class DeleteSubscriptionPlan200ResponseBuilder
    implements
        Builder<
          DeleteSubscriptionPlan200Response,
          DeleteSubscriptionPlan200ResponseBuilder
        > {
  _$DeleteSubscriptionPlan200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DeleteSubscriptionPlan200ResponseBuilder() {
    DeleteSubscriptionPlan200Response._defaults(this);
  }

  DeleteSubscriptionPlan200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSubscriptionPlan200Response other) {
    _$v = other as _$DeleteSubscriptionPlan200Response;
  }

  @override
  void update(
    void Function(DeleteSubscriptionPlan200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSubscriptionPlan200Response build() => _build();

  _$DeleteSubscriptionPlan200Response _build() {
    final _$result =
        _$v ??
        _$DeleteSubscriptionPlan200Response._(
          success: success,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
