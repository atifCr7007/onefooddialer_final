// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSubscriptionById200Response extends GetSubscriptionById200Response {
  @override
  final bool? success;
  @override
  final Subscription? data;

  factory _$GetSubscriptionById200Response([
    void Function(GetSubscriptionById200ResponseBuilder)? updates,
  ]) => (GetSubscriptionById200ResponseBuilder()..update(updates))._build();

  _$GetSubscriptionById200Response._({this.success, this.data}) : super._();
  @override
  GetSubscriptionById200Response rebuild(
    void Function(GetSubscriptionById200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionById200ResponseBuilder toBuilder() =>
      GetSubscriptionById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSubscriptionById200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetSubscriptionById200ResponseBuilder
    implements
        Builder<
          GetSubscriptionById200Response,
          GetSubscriptionById200ResponseBuilder
        > {
  _$GetSubscriptionById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  SubscriptionBuilder? _data;
  SubscriptionBuilder get data => _$this._data ??= SubscriptionBuilder();
  set data(SubscriptionBuilder? data) => _$this._data = data;

  GetSubscriptionById200ResponseBuilder() {
    GetSubscriptionById200Response._defaults(this);
  }

  GetSubscriptionById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionById200Response other) {
    _$v = other as _$GetSubscriptionById200Response;
  }

  @override
  void update(void Function(GetSubscriptionById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionById200Response build() => _build();

  _$GetSubscriptionById200Response _build() {
    _$GetSubscriptionById200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetSubscriptionById200Response._(
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
          r'GetSubscriptionById200Response',
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
