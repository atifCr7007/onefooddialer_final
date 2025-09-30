// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_logs200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSubscriptionLogs200Response extends GetSubscriptionLogs200Response {
  @override
  final bool? success;
  @override
  final BuiltList<SubscriptionLog>? data;

  factory _$GetSubscriptionLogs200Response([
    void Function(GetSubscriptionLogs200ResponseBuilder)? updates,
  ]) => (GetSubscriptionLogs200ResponseBuilder()..update(updates))._build();

  _$GetSubscriptionLogs200Response._({this.success, this.data}) : super._();
  @override
  GetSubscriptionLogs200Response rebuild(
    void Function(GetSubscriptionLogs200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetSubscriptionLogs200ResponseBuilder toBuilder() =>
      GetSubscriptionLogs200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSubscriptionLogs200Response &&
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
    return (newBuiltValueToStringHelper(r'GetSubscriptionLogs200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetSubscriptionLogs200ResponseBuilder
    implements
        Builder<
          GetSubscriptionLogs200Response,
          GetSubscriptionLogs200ResponseBuilder
        > {
  _$GetSubscriptionLogs200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<SubscriptionLog>? _data;
  ListBuilder<SubscriptionLog> get data =>
      _$this._data ??= ListBuilder<SubscriptionLog>();
  set data(ListBuilder<SubscriptionLog>? data) => _$this._data = data;

  GetSubscriptionLogs200ResponseBuilder() {
    GetSubscriptionLogs200Response._defaults(this);
  }

  GetSubscriptionLogs200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSubscriptionLogs200Response other) {
    _$v = other as _$GetSubscriptionLogs200Response;
  }

  @override
  void update(void Function(GetSubscriptionLogs200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSubscriptionLogs200Response build() => _build();

  _$GetSubscriptionLogs200Response _build() {
    _$GetSubscriptionLogs200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetSubscriptionLogs200Response._(
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
          r'GetSubscriptionLogs200Response',
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
