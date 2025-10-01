// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_config_by_key200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConfigByKey200Response extends GetConfigByKey200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final GetConfigByKey200ResponseData? data;

  factory _$GetConfigByKey200Response([
    void Function(GetConfigByKey200ResponseBuilder)? updates,
  ]) => (GetConfigByKey200ResponseBuilder()..update(updates))._build();

  _$GetConfigByKey200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetConfigByKey200Response rebuild(
    void Function(GetConfigByKey200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetConfigByKey200ResponseBuilder toBuilder() =>
      GetConfigByKey200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConfigByKey200Response &&
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
    return (newBuiltValueToStringHelper(r'GetConfigByKey200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetConfigByKey200ResponseBuilder
    implements
        Builder<GetConfigByKey200Response, GetConfigByKey200ResponseBuilder> {
  _$GetConfigByKey200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GetConfigByKey200ResponseDataBuilder? _data;
  GetConfigByKey200ResponseDataBuilder get data =>
      _$this._data ??= GetConfigByKey200ResponseDataBuilder();
  set data(GetConfigByKey200ResponseDataBuilder? data) => _$this._data = data;

  GetConfigByKey200ResponseBuilder() {
    GetConfigByKey200Response._defaults(this);
  }

  GetConfigByKey200ResponseBuilder get _$this {
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
  void replace(GetConfigByKey200Response other) {
    _$v = other as _$GetConfigByKey200Response;
  }

  @override
  void update(void Function(GetConfigByKey200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConfigByKey200Response build() => _build();

  _$GetConfigByKey200Response _build() {
    _$GetConfigByKey200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetConfigByKey200Response._(
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
          r'GetConfigByKey200Response',
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
