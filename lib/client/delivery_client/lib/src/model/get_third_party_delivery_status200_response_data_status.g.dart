// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_third_party_delivery_status200_response_data_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetThirdPartyDeliveryStatus200ResponseDataStatus
    extends GetThirdPartyDeliveryStatus200ResponseDataStatus {
  @override
  final String? status;
  @override
  final String? deliveryguyName;
  @override
  final String? deliveryguyPhoneNumber;
  @override
  final String? pickupguyName;
  @override
  final String? pickupguyPhoneNumber;

  factory _$GetThirdPartyDeliveryStatus200ResponseDataStatus([
    void Function(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder)?
    updates,
  ]) =>
      (GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder()
            ..update(updates))
          ._build();

  _$GetThirdPartyDeliveryStatus200ResponseDataStatus._({
    this.status,
    this.deliveryguyName,
    this.deliveryguyPhoneNumber,
    this.pickupguyName,
    this.pickupguyPhoneNumber,
  }) : super._();
  @override
  GetThirdPartyDeliveryStatus200ResponseDataStatus rebuild(
    void Function(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder toBuilder() =>
      GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetThirdPartyDeliveryStatus200ResponseDataStatus &&
        status == other.status &&
        deliveryguyName == other.deliveryguyName &&
        deliveryguyPhoneNumber == other.deliveryguyPhoneNumber &&
        pickupguyName == other.pickupguyName &&
        pickupguyPhoneNumber == other.pickupguyPhoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, deliveryguyName.hashCode);
    _$hash = $jc(_$hash, deliveryguyPhoneNumber.hashCode);
    _$hash = $jc(_$hash, pickupguyName.hashCode);
    _$hash = $jc(_$hash, pickupguyPhoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetThirdPartyDeliveryStatus200ResponseDataStatus',
          )
          ..add('status', status)
          ..add('deliveryguyName', deliveryguyName)
          ..add('deliveryguyPhoneNumber', deliveryguyPhoneNumber)
          ..add('pickupguyName', pickupguyName)
          ..add('pickupguyPhoneNumber', pickupguyPhoneNumber))
        .toString();
  }
}

class GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder
    implements
        Builder<
          GetThirdPartyDeliveryStatus200ResponseDataStatus,
          GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder
        > {
  _$GetThirdPartyDeliveryStatus200ResponseDataStatus? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _deliveryguyName;
  String? get deliveryguyName => _$this._deliveryguyName;
  set deliveryguyName(String? deliveryguyName) =>
      _$this._deliveryguyName = deliveryguyName;

  String? _deliveryguyPhoneNumber;
  String? get deliveryguyPhoneNumber => _$this._deliveryguyPhoneNumber;
  set deliveryguyPhoneNumber(String? deliveryguyPhoneNumber) =>
      _$this._deliveryguyPhoneNumber = deliveryguyPhoneNumber;

  String? _pickupguyName;
  String? get pickupguyName => _$this._pickupguyName;
  set pickupguyName(String? pickupguyName) =>
      _$this._pickupguyName = pickupguyName;

  String? _pickupguyPhoneNumber;
  String? get pickupguyPhoneNumber => _$this._pickupguyPhoneNumber;
  set pickupguyPhoneNumber(String? pickupguyPhoneNumber) =>
      _$this._pickupguyPhoneNumber = pickupguyPhoneNumber;

  GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder() {
    GetThirdPartyDeliveryStatus200ResponseDataStatus._defaults(this);
  }

  GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _deliveryguyName = $v.deliveryguyName;
      _deliveryguyPhoneNumber = $v.deliveryguyPhoneNumber;
      _pickupguyName = $v.pickupguyName;
      _pickupguyPhoneNumber = $v.pickupguyPhoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetThirdPartyDeliveryStatus200ResponseDataStatus other) {
    _$v = other as _$GetThirdPartyDeliveryStatus200ResponseDataStatus;
  }

  @override
  void update(
    void Function(GetThirdPartyDeliveryStatus200ResponseDataStatusBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GetThirdPartyDeliveryStatus200ResponseDataStatus build() => _build();

  _$GetThirdPartyDeliveryStatus200ResponseDataStatus _build() {
    final _$result =
        _$v ??
        _$GetThirdPartyDeliveryStatus200ResponseDataStatus._(
          status: status,
          deliveryguyName: deliveryguyName,
          deliveryguyPhoneNumber: deliveryguyPhoneNumber,
          pickupguyName: pickupguyName,
          pickupguyPhoneNumber: pickupguyPhoneNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
