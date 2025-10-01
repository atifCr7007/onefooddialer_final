// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_location_mappings200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLocationMappings200Response extends GetLocationMappings200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<LocationMapping>? data;

  factory _$GetLocationMappings200Response(
          [void Function(GetLocationMappings200ResponseBuilder)? updates]) =>
      (GetLocationMappings200ResponseBuilder()..update(updates))._build();

  _$GetLocationMappings200Response._({this.success, this.message, this.data})
      : super._();
  @override
  GetLocationMappings200Response rebuild(
          void Function(GetLocationMappings200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLocationMappings200ResponseBuilder toBuilder() =>
      GetLocationMappings200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLocationMappings200Response &&
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
    return (newBuiltValueToStringHelper(r'GetLocationMappings200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetLocationMappings200ResponseBuilder
    implements
        Builder<GetLocationMappings200Response,
            GetLocationMappings200ResponseBuilder> {
  _$GetLocationMappings200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<LocationMapping>? _data;
  ListBuilder<LocationMapping> get data =>
      _$this._data ??= ListBuilder<LocationMapping>();
  set data(ListBuilder<LocationMapping>? data) => _$this._data = data;

  GetLocationMappings200ResponseBuilder() {
    GetLocationMappings200Response._defaults(this);
  }

  GetLocationMappings200ResponseBuilder get _$this {
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
  void replace(GetLocationMappings200Response other) {
    _$v = other as _$GetLocationMappings200Response;
  }

  @override
  void update(void Function(GetLocationMappings200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLocationMappings200Response build() => _build();

  _$GetLocationMappings200Response _build() {
    _$GetLocationMappings200Response _$result;
    try {
      _$result = _$v ??
          _$GetLocationMappings200Response._(
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
            r'GetLocationMappings200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
