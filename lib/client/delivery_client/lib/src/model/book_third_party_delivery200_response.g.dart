// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_third_party_delivery200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookThirdPartyDelivery200Response
    extends BookThirdPartyDelivery200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BookThirdPartyDelivery200ResponseData? data;

  factory _$BookThirdPartyDelivery200Response([
    void Function(BookThirdPartyDelivery200ResponseBuilder)? updates,
  ]) => (BookThirdPartyDelivery200ResponseBuilder()..update(updates))._build();

  _$BookThirdPartyDelivery200Response._({this.success, this.message, this.data})
    : super._();
  @override
  BookThirdPartyDelivery200Response rebuild(
    void Function(BookThirdPartyDelivery200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookThirdPartyDelivery200ResponseBuilder toBuilder() =>
      BookThirdPartyDelivery200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookThirdPartyDelivery200Response &&
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
    return (newBuiltValueToStringHelper(r'BookThirdPartyDelivery200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class BookThirdPartyDelivery200ResponseBuilder
    implements
        Builder<
          BookThirdPartyDelivery200Response,
          BookThirdPartyDelivery200ResponseBuilder
        > {
  _$BookThirdPartyDelivery200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BookThirdPartyDelivery200ResponseDataBuilder? _data;
  BookThirdPartyDelivery200ResponseDataBuilder get data =>
      _$this._data ??= BookThirdPartyDelivery200ResponseDataBuilder();
  set data(BookThirdPartyDelivery200ResponseDataBuilder? data) =>
      _$this._data = data;

  BookThirdPartyDelivery200ResponseBuilder() {
    BookThirdPartyDelivery200Response._defaults(this);
  }

  BookThirdPartyDelivery200ResponseBuilder get _$this {
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
  void replace(BookThirdPartyDelivery200Response other) {
    _$v = other as _$BookThirdPartyDelivery200Response;
  }

  @override
  void update(
    void Function(BookThirdPartyDelivery200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BookThirdPartyDelivery200Response build() => _build();

  _$BookThirdPartyDelivery200Response _build() {
    _$BookThirdPartyDelivery200Response _$result;
    try {
      _$result =
          _$v ??
          _$BookThirdPartyDelivery200Response._(
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
          r'BookThirdPartyDelivery200Response',
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
