// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_third_party_delivery_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetThirdPartyDeliveryStatus200Response
    extends GetThirdPartyDeliveryStatus200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final GetThirdPartyDeliveryStatus200ResponseData? data;

  factory _$GetThirdPartyDeliveryStatus200Response([
    void Function(GetThirdPartyDeliveryStatus200ResponseBuilder)? updates,
  ]) => (GetThirdPartyDeliveryStatus200ResponseBuilder()..update(updates))
      ._build();

  _$GetThirdPartyDeliveryStatus200Response._({
    this.success,
    this.message,
    this.data,
  }) : super._();
  @override
  GetThirdPartyDeliveryStatus200Response rebuild(
    void Function(GetThirdPartyDeliveryStatus200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetThirdPartyDeliveryStatus200ResponseBuilder toBuilder() =>
      GetThirdPartyDeliveryStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetThirdPartyDeliveryStatus200Response &&
        success == other.success &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetThirdPartyDeliveryStatus200Response',
          )
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetThirdPartyDeliveryStatus200ResponseBuilder
    implements
        Builder<
          GetThirdPartyDeliveryStatus200Response,
          GetThirdPartyDeliveryStatus200ResponseBuilder
        > {
  _$GetThirdPartyDeliveryStatus200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GetThirdPartyDeliveryStatus200ResponseDataBuilder? _data;
  GetThirdPartyDeliveryStatus200ResponseDataBuilder get data =>
      _$this._data ??= GetThirdPartyDeliveryStatus200ResponseDataBuilder();
  set data(GetThirdPartyDeliveryStatus200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetThirdPartyDeliveryStatus200ResponseBuilder() {
    GetThirdPartyDeliveryStatus200Response._defaults(this);
  }

  GetThirdPartyDeliveryStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetThirdPartyDeliveryStatus200Response other) {
    _$v = other as _$GetThirdPartyDeliveryStatus200Response;
  }

  @override
  void update(
    void Function(GetThirdPartyDeliveryStatus200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetThirdPartyDeliveryStatus200Response build() => _build();

  _$GetThirdPartyDeliveryStatus200Response _build() {
    _$GetThirdPartyDeliveryStatus200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetThirdPartyDeliveryStatus200Response._(
            success: success,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetThirdPartyDeliveryStatus200Response',
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
