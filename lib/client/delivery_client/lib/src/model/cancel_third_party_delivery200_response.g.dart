// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_third_party_delivery200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelThirdPartyDelivery200Response
    extends CancelThirdPartyDelivery200Response {
  @override
  final bool? success;
  @override
  final String? message;

  factory _$CancelThirdPartyDelivery200Response([
    void Function(CancelThirdPartyDelivery200ResponseBuilder)? updates,
  ]) =>
      (CancelThirdPartyDelivery200ResponseBuilder()..update(updates))._build();

  _$CancelThirdPartyDelivery200Response._({this.success, this.message})
    : super._();
  @override
  CancelThirdPartyDelivery200Response rebuild(
    void Function(CancelThirdPartyDelivery200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CancelThirdPartyDelivery200ResponseBuilder toBuilder() =>
      CancelThirdPartyDelivery200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelThirdPartyDelivery200Response &&
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
    return (newBuiltValueToStringHelper(r'CancelThirdPartyDelivery200Response')
          ..add('success', success)
          ..add('message', message))
        .toString();
  }
}

class CancelThirdPartyDelivery200ResponseBuilder
    implements
        Builder<
          CancelThirdPartyDelivery200Response,
          CancelThirdPartyDelivery200ResponseBuilder
        > {
  _$CancelThirdPartyDelivery200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CancelThirdPartyDelivery200ResponseBuilder() {
    CancelThirdPartyDelivery200Response._defaults(this);
  }

  CancelThirdPartyDelivery200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelThirdPartyDelivery200Response other) {
    _$v = other as _$CancelThirdPartyDelivery200Response;
  }

  @override
  void update(
    void Function(CancelThirdPartyDelivery200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CancelThirdPartyDelivery200Response build() => _build();

  _$CancelThirdPartyDelivery200Response _build() {
    final _$result =
        _$v ??
        _$CancelThirdPartyDelivery200Response._(
          success: success,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
