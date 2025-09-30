// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_token200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateToken200Response extends ValidateToken200Response {
  @override
  final String? status;
  @override
  final ValidateToken200ResponseData? data;

  factory _$ValidateToken200Response([
    void Function(ValidateToken200ResponseBuilder)? updates,
  ]) => (ValidateToken200ResponseBuilder()..update(updates))._build();

  _$ValidateToken200Response._({this.status, this.data}) : super._();
  @override
  ValidateToken200Response rebuild(
    void Function(ValidateToken200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ValidateToken200ResponseBuilder toBuilder() =>
      ValidateToken200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateToken200Response &&
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
    return (newBuiltValueToStringHelper(r'ValidateToken200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ValidateToken200ResponseBuilder
    implements
        Builder<ValidateToken200Response, ValidateToken200ResponseBuilder> {
  _$ValidateToken200Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ValidateToken200ResponseDataBuilder? _data;
  ValidateToken200ResponseDataBuilder get data =>
      _$this._data ??= ValidateToken200ResponseDataBuilder();
  set data(ValidateToken200ResponseDataBuilder? data) => _$this._data = data;

  ValidateToken200ResponseBuilder() {
    ValidateToken200Response._defaults(this);
  }

  ValidateToken200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateToken200Response other) {
    _$v = other as _$ValidateToken200Response;
  }

  @override
  void update(void Function(ValidateToken200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateToken200Response build() => _build();

  _$ValidateToken200Response _build() {
    _$ValidateToken200Response _$result;
    try {
      _$result =
          _$v ??
          _$ValidateToken200Response._(status: status, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ValidateToken200Response',
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
