// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_third_party_delivery_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookThirdPartyDeliveryRequest extends BookThirdPartyDeliveryRequest {
  @override
  final int orderId;

  factory _$BookThirdPartyDeliveryRequest([
    void Function(BookThirdPartyDeliveryRequestBuilder)? updates,
  ]) => (BookThirdPartyDeliveryRequestBuilder()..update(updates))._build();

  _$BookThirdPartyDeliveryRequest._({required this.orderId}) : super._();
  @override
  BookThirdPartyDeliveryRequest rebuild(
    void Function(BookThirdPartyDeliveryRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookThirdPartyDeliveryRequestBuilder toBuilder() =>
      BookThirdPartyDeliveryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookThirdPartyDeliveryRequest && orderId == other.orderId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'BookThirdPartyDeliveryRequest',
    )..add('orderId', orderId)).toString();
  }
}

class BookThirdPartyDeliveryRequestBuilder
    implements
        Builder<
          BookThirdPartyDeliveryRequest,
          BookThirdPartyDeliveryRequestBuilder
        > {
  _$BookThirdPartyDeliveryRequest? _$v;

  int? _orderId;
  int? get orderId => _$this._orderId;
  set orderId(int? orderId) => _$this._orderId = orderId;

  BookThirdPartyDeliveryRequestBuilder() {
    BookThirdPartyDeliveryRequest._defaults(this);
  }

  BookThirdPartyDeliveryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookThirdPartyDeliveryRequest other) {
    _$v = other as _$BookThirdPartyDeliveryRequest;
  }

  @override
  void update(void Function(BookThirdPartyDeliveryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookThirdPartyDeliveryRequest build() => _build();

  _$BookThirdPartyDeliveryRequest _build() {
    final _$result =
        _$v ??
        _$BookThirdPartyDeliveryRequest._(
          orderId: BuiltValueNullFieldError.checkNotNull(
            orderId,
            r'BookThirdPartyDeliveryRequest',
            'orderId',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
