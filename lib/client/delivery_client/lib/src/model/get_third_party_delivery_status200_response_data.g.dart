// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_third_party_delivery_status200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetThirdPartyDeliveryStatus200ResponseData
    extends GetThirdPartyDeliveryStatus200ResponseData {
  @override
  final int? code;
  @override
  final GetThirdPartyDeliveryStatus200ResponseDataStatus? status;

  factory _$GetThirdPartyDeliveryStatus200ResponseData([
    void Function(GetThirdPartyDeliveryStatus200ResponseDataBuilder)? updates,
  ]) => (GetThirdPartyDeliveryStatus200ResponseDataBuilder()..update(updates))
      ._build();

  _$GetThirdPartyDeliveryStatus200ResponseData._({this.code, this.status})
    : super._();
  @override
  GetThirdPartyDeliveryStatus200ResponseData rebuild(
    void Function(GetThirdPartyDeliveryStatus200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetThirdPartyDeliveryStatus200ResponseDataBuilder toBuilder() =>
      GetThirdPartyDeliveryStatus200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetThirdPartyDeliveryStatus200ResponseData &&
        code == other.code &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetThirdPartyDeliveryStatus200ResponseData',
          )
          ..add('code', code)
          ..add('status', status))
        .toString();
  }
}

class GetThirdPartyDeliveryStatus200ResponseDataBuilder
    implements
        Builder<
          GetThirdPartyDeliveryStatus200ResponseData,
          GetThirdPartyDeliveryStatus200ResponseDataBuilder
        > {
  _$GetThirdPartyDeliveryStatus200ResponseData? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder? _status;
  GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder get status =>
      _$this._status ??=
          GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder();
  set status(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder? status) =>
      _$this._status = status;

  GetThirdPartyDeliveryStatus200ResponseDataBuilder() {
    GetThirdPartyDeliveryStatus200ResponseData._defaults(this);
  }

  GetThirdPartyDeliveryStatus200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetThirdPartyDeliveryStatus200ResponseData other) {
    _$v = other as _$GetThirdPartyDeliveryStatus200ResponseData;
  }

  @override
  void update(
    void Function(GetThirdPartyDeliveryStatus200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetThirdPartyDeliveryStatus200ResponseData build() => _build();

  _$GetThirdPartyDeliveryStatus200ResponseData _build() {
    _$GetThirdPartyDeliveryStatus200ResponseData _$result;
    try {
      _$result =
          _$v ??
          _$GetThirdPartyDeliveryStatus200ResponseData._(
            code: code,
            status: _status?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetThirdPartyDeliveryStatus200ResponseData',
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
