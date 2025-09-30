// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_backorders200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBackorders200Response extends GetBackorders200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<Backorder>? data;

  factory _$GetBackorders200Response([
    void Function(GetBackorders200ResponseBuilder)? updates,
  ]) => (GetBackorders200ResponseBuilder()..update(updates))._build();

  _$GetBackorders200Response._({this.success, this.message, this.data})
    : super._();
  @override
  GetBackorders200Response rebuild(
    void Function(GetBackorders200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetBackorders200ResponseBuilder toBuilder() =>
      GetBackorders200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBackorders200Response &&
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
    return (newBuiltValueToStringHelper(r'GetBackorders200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetBackorders200ResponseBuilder
    implements
        Builder<GetBackorders200Response, GetBackorders200ResponseBuilder> {
  _$GetBackorders200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetBackorders200ResponseBuilder() {
    GetBackorders200Response._defaults(this);
  }

  GetBackorders200ResponseBuilder get _$this {
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
  void replace(GetBackorders200Response other) {
    _$v = other as _$GetBackorders200Response;
  }

  @override
  void update(void Function(GetBackorders200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBackorders200Response build() => _build();

  _$GetBackorders200Response _build() {
    _$GetBackorders200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetBackorders200Response._(
            success: success,
            message: message,
            data: _data?.build()as BuiltList <Backorder>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetBackorders200Response',
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
