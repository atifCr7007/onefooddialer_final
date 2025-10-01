// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_settings200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllSettings200Response extends GetAllSettings200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltMap<String, String>? data;

  factory _$GetAllSettings200Response([
    void Function(GetAllSettings200ResponseBuilder)? updates,
  ]) => (GetAllSettings200ResponseBuilder()..update(updates))._build();

  _$GetAllSettings200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetAllSettings200Response rebuild(
    void Function(GetAllSettings200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetAllSettings200ResponseBuilder toBuilder() =>
      GetAllSettings200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllSettings200Response &&
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
    return (newBuiltValueToStringHelper(r'GetAllSettings200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetAllSettings200ResponseBuilder
    implements
        Builder<GetAllSettings200Response, GetAllSettings200ResponseBuilder> {
  _$GetAllSettings200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  MapBuilder<String, String>? _data;
  MapBuilder<String, String> get data =>
      _$this._data ??= MapBuilder<String, String>();
  set data(MapBuilder<String, String>? data) => _$this._data = data;

  GetAllSettings200ResponseBuilder() {
    GetAllSettings200Response._defaults(this);
  }

  GetAllSettings200ResponseBuilder get _$this {
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
  void replace(GetAllSettings200Response other) {
    _$v = other as _$GetAllSettings200Response;
  }

  @override
  void update(void Function(GetAllSettings200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllSettings200Response build() => _build();

  _$GetAllSettings200Response _build() {
    _$GetAllSettings200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetAllSettings200Response._(
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
          r'GetAllSettings200Response',
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
