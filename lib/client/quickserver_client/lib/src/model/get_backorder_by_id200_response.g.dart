// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_backorder_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBackorderById200Response extends GetBackorderById200Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Backorder? data;

  factory _$GetBackorderById200Response(
          [void Function(GetBackorderById200ResponseBuilder)? updates]) =>
      (GetBackorderById200ResponseBuilder()..update(updates))._build();

  _$GetBackorderById200Response._({this.success, this.message, this.data})
      : super._();
  @override
  GetBackorderById200Response rebuild(
          void Function(GetBackorderById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBackorderById200ResponseBuilder toBuilder() =>
      GetBackorderById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBackorderById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetBackorderById200Response')
          ..add('success', success)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class GetBackorderById200ResponseBuilder
    implements
        Builder<GetBackorderById200Response,
            GetBackorderById200ResponseBuilder> {
  _$GetBackorderById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BackorderBuilder? _data;
  BackorderBuilder get data => _$this._data ??= BackorderBuilder();
  set data(BackorderBuilder? data) => _$this._data = data;

  GetBackorderById200ResponseBuilder() {
    GetBackorderById200Response._defaults(this);
  }

  GetBackorderById200ResponseBuilder get _$this {
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
  void replace(GetBackorderById200Response other) {
    _$v = other as _$GetBackorderById200Response;
  }

  @override
  void update(void Function(GetBackorderById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBackorderById200Response build() => _build();

  _$GetBackorderById200Response _build() {
    _$GetBackorderById200Response _$result;
    try {
      _$result = _$v ??
          _$GetBackorderById200Response._(
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
            r'GetBackorderById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
