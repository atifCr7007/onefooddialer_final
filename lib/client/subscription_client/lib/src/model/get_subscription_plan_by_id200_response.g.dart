// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_plan_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSubscriptionPlanById200Response
    extends GetSubscriptionPlanById200Response {
  @override
  final bool? success;
  @override
  final SubscriptionPlan? data;

  factory _$GetSubscriptionPlanById200Response([
    void Function(GetSubscriptionPlanById200ResponseBuilder)? updates,
  ]) => (GetSubscriptionPlanById200ResponseBuilder()..update(updates))._build();

  _$GetSubscriptionPlanById200Response._({this.success, this.data}) : super._();
  @override
  GetSubscriptionPlanById200Response rebuild(
    void Function(GetSubscriptionPlanById200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionPlanById200ResponseBuilder toBuilder() =>
      GetSubscriptionPlanById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionPlanById200Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSubscriptionPlanById200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetSubscriptionPlanById200ResponseBuilder
    implements
        Builder<
          GetSubscriptionPlanById200Response,
          GetSubscriptionPlanById200ResponseBuilder
        > {
  _$GetSubscriptionPlanById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  SubscriptionPlanBuilder? _data;
  SubscriptionPlanBuilder get data =>
      _$this._data ??= SubscriptionPlanBuilder();
  set data(SubscriptionPlanBuilder? data) => _$this._data = data;

  GetSubscriptionPlanById200ResponseBuilder() {
    GetSubscriptionPlanById200Response._defaults(this);
  }

  GetSubscriptionPlanById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionPlanById200Response other) {
    _$v = other as _$GetSubscriptionPlanById200Response;
  }

  @override
  void update(
    void Function(GetSubscriptionPlanById200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionPlanById200Response build() => _build();

  _$GetSubscriptionPlanById200Response _build() {
    _$GetSubscriptionPlanById200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetSubscriptionPlanById200Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetSubscriptionPlanById200Response',
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
