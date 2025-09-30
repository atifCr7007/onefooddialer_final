// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_third_party_delivery200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookThirdPartyDelivery200ResponseData
    extends BookThirdPartyDelivery200ResponseData {
  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? time;
  @override
  final String? date;

  factory _$BookThirdPartyDelivery200ResponseData([
    void Function(BookThirdPartyDelivery200ResponseDataBuilder)? updates,
  ]) => (BookThirdPartyDelivery200ResponseDataBuilder()..update(updates))
      ._build();

  _$BookThirdPartyDelivery200ResponseData._({
    this.code,
    this.status,
    this.time,
    this.date,
  }) : super._();
  @override
  BookThirdPartyDelivery200ResponseData rebuild(
    void Function(BookThirdPartyDelivery200ResponseDataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BookThirdPartyDelivery200ResponseDataBuilder toBuilder() =>
      BookThirdPartyDelivery200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookThirdPartyDelivery200ResponseData &&
        code == other.code &&
        status == other.status &&
        time == other.time &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BookThirdPartyDelivery200ResponseData',
          )
          ..add('code', code)
          ..add('status', status)
          ..add('time', time)
          ..add('date', date))
        .toString();
  }
}

class BookThirdPartyDelivery200ResponseDataBuilder
    implements
        Builder<
          BookThirdPartyDelivery200ResponseData,
          BookThirdPartyDelivery200ResponseDataBuilder
        > {
  _$BookThirdPartyDelivery200ResponseData? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  BookThirdPartyDelivery200ResponseDataBuilder() {
    BookThirdPartyDelivery200ResponseData._defaults(this);
  }

  BookThirdPartyDelivery200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _status = $v.status;
      _time = $v.time;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookThirdPartyDelivery200ResponseData other) {
    _$v = other as _$BookThirdPartyDelivery200ResponseData;
  }

  @override
  void update(
    void Function(BookThirdPartyDelivery200ResponseDataBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BookThirdPartyDelivery200ResponseData build() => _build();

  _$BookThirdPartyDelivery200ResponseData _build() {
    final _$result =
        _$v ??
        _$BookThirdPartyDelivery200ResponseData._(
          code: code,
          status: status,
          time: time,
          date: date,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
