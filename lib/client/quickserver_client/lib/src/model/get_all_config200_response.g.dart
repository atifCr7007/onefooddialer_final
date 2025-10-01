// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_config200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllConfig200Response extends GetAllConfig200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltMap<String, String>? data;

  factory _$GetAllConfig200Response([
    void Function(GetAllConfig200ResponseBuilder)? updates,
  ]) => (GetAllConfig200ResponseBuilder()..update(updates))._build();

  _$GetAllConfig200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetAllConfig200Response rebuild(
    void Function(GetAllConfig200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetAllConfig200ResponseBuilder toBuilder() =>
      GetAllConfig200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllConfig200Response &&
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
    return (newBuiltValueToStringHelper(r'GetAllConfig200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetAllConfig200ResponseBuilder
    implements
        Builder<GetAllConfig200Response, GetAllConfig200ResponseBuilder> {
  _$GetAllConfig200Response? _$v;

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

  GetAllConfig200ResponseBuilder() {
    GetAllConfig200Response._defaults(this);
  }

  GetAllConfig200ResponseBuilder get _$this {
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
  void replace(GetAllConfig200Response other) {
    _$v = other as _$GetAllConfig200Response;
  }

  @override
  void update(void Function(GetAllConfig200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllConfig200Response build() => _build();

  _$GetAllConfig200Response _build() {
    _$GetAllConfig200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetAllConfig200Response._(
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
          r'GetAllConfig200Response',
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
