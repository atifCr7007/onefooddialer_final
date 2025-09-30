// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_location_mapping_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLocationMappingById200Response
    extends GetLocationMappingById200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final LocationMapping? data;

  factory _$GetLocationMappingById200Response(
          [void Function(GetLocationMappingById200ResponseBuilder)? updates]) =>
      (GetLocationMappingById200ResponseBuilder()..update(updates))._build();

  _$GetLocationMappingById200Response._({this.success, this.message, this.data})
      : super._();
  @override
  GetLocationMappingById200Response rebuild(
          void Function(GetLocationMappingById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLocationMappingById200ResponseBuilder toBuilder() =>
      GetLocationMappingById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLocationMappingById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetLocationMappingById200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetLocationMappingById200ResponseBuilder
    implements
        Builder<GetLocationMappingById200Response,
            GetLocationMappingById200ResponseBuilder> {
  _$GetLocationMappingById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  LocationMappingBuilder? _data;
  LocationMappingBuilder get data => _$this._data ??= LocationMappingBuilder();
  set data(LocationMappingBuilder? data) => _$this._data = data;

  GetLocationMappingById200ResponseBuilder() {
    GetLocationMappingById200Response._defaults(this);
  }

  GetLocationMappingById200ResponseBuilder get _$this {
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
  void replace(GetLocationMappingById200Response other) {
    _$v = other as _$GetLocationMappingById200Response;
  }

  @override
  void update(
      void Function(GetLocationMappingById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLocationMappingById200Response build() => _build();

  _$GetLocationMappingById200Response _build() {
    _$GetLocationMappingById200Response _$result;
    try {
      _$result = _$v ??
          _$GetLocationMappingById200Response._(
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
            r'GetLocationMappingById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
