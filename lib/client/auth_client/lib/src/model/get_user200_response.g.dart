// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUser200Response extends GetUser200Response {
  @override
  final String? status;
  @override
  final GetUser200ResponseData? data;

  factory _$GetUser200Response(
          [void Function(GetUser200ResponseBuilder)? updates]) =>
      (GetUser200ResponseBuilder()..update(updates))._build();

  _$GetUser200Response._({this.status, this.data}) : super._();
  @override
  GetUser200Response rebuild(
          void Function(GetUser200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUser200ResponseBuilder toBuilder() =>
      GetUser200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUser200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetUser200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class GetUser200ResponseBuilder
    implements Builder<GetUser200Response, GetUser200ResponseBuilder> {
  _$GetUser200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  GetUser200ResponseDataBuilder? _data;
  GetUser200ResponseDataBuilder get data =>
      _$this._data ??= GetUser200ResponseDataBuilder();
  set data(GetUser200ResponseDataBuilder? data) => _$this._data = data;

  GetUser200ResponseBuilder() {
    GetUser200Response._defaults(this);
  }

  GetUser200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUser200Response other) {
    _$v = other as _$GetUser200Response;
  }

  @override
  void update(void Function(GetUser200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUser200Response build() => _build();

  _$GetUser200Response _build() {
    _$GetUser200Response _$result;
    try {
      _$result = _$v ??
          _$GetUser200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetUser200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
