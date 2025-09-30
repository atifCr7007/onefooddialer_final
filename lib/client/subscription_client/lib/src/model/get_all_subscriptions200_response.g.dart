// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_subscriptions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllSubscriptions200Response extends GetAllSubscriptions200Response {
  @override
  final bool? success;
  @override
  final BuiltList<Subscription>? data;

  factory _$GetAllSubscriptions200Response([
    void Function(GetAllSubscriptions200ResponseBuilder)? updates,
  ]) => (GetAllSubscriptions200ResponseBuilder()..update(updates))._build();

  _$GetAllSubscriptions200Response._({this.success, this.data}) : super._();
  @override
  GetAllSubscriptions200Response rebuild(
    void Function(GetAllSubscriptions200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetAllSubscriptions200ResponseBuilder toBuilder() =>
      GetAllSubscriptions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllSubscriptions200Response &&
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
    return (newBuiltValueToStringHelper(r'GetAllSubscriptions200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetAllSubscriptions200ResponseBuilder
    implements
        Builder<
          GetAllSubscriptions200Response,
          GetAllSubscriptions200ResponseBuilder
        > {
  _$GetAllSubscriptions200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetAllSubscriptions200ResponseBuilder() {
    GetAllSubscriptions200Response._defaults(this);
  }

  GetAllSubscriptions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAllSubscriptions200Response other) {
    _$v = other as _$GetAllSubscriptions200Response;
  }

  @override
  void update(void Function(GetAllSubscriptions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllSubscriptions200Response build() => _build();

  _$GetAllSubscriptions200Response _build() {
    _$GetAllSubscriptions200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetAllSubscriptions200Response._(
            success: success,
            data: _data?.build() as BuiltList<Subscription>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetAllSubscriptions200Response',
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
