// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_subscription_plans200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllSubscriptionPlans200Response
    extends GetAllSubscriptionPlans200Response {
  @override
  final bool? success;
  @override
  final BuiltList<SubscriptionPlan>? data;

  factory _$GetAllSubscriptionPlans200Response([
    void Function(GetAllSubscriptionPlans200ResponseBuilder)? updates,
  ]) => (GetAllSubscriptionPlans200ResponseBuilder()..update(updates))._build();

  _$GetAllSubscriptionPlans200Response._({this.success, this.data}) : super._();
  @override
  GetAllSubscriptionPlans200Response rebuild(
    void Function(GetAllSubscriptionPlans200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetAllSubscriptionPlans200ResponseBuilder toBuilder() =>
      GetAllSubscriptionPlans200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllSubscriptionPlans200Response &&
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
    return (newBuiltValueToStringHelper(r'GetAllSubscriptionPlans200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetAllSubscriptionPlans200ResponseBuilder
    implements
        Builder<
          GetAllSubscriptionPlans200Response,
          GetAllSubscriptionPlans200ResponseBuilder
        > {
  _$GetAllSubscriptionPlans200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetAllSubscriptionPlans200ResponseBuilder() {
    GetAllSubscriptionPlans200Response._defaults(this);
  }

  GetAllSubscriptionPlans200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAllSubscriptionPlans200Response other) {
    _$v = other as _$GetAllSubscriptionPlans200Response;
  }

  @override
  void update(
    void Function(GetAllSubscriptionPlans200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetAllSubscriptionPlans200Response build() => _build();

  _$GetAllSubscriptionPlans200Response _build() {
    _$GetAllSubscriptionPlans200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetAllSubscriptionPlans200Response._(
            success: success,
            data: _data?.build()as BuiltList<SubscriptionPlan>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetAllSubscriptionPlans200Response',
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
