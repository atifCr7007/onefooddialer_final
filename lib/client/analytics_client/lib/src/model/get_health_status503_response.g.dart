// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_health_status503_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHealthStatus503Response extends GetHealthStatus503Response {
  @override
  final String? status;
  @override
  final String? message;
  @override
  final GetHealthStatus503ResponseDetails? details;

  factory _$GetHealthStatus503Response(
          [void Function(GetHealthStatus503ResponseBuilder)? updates]) =>
      (GetHealthStatus503ResponseBuilder()..update(updates))._build();

  _$GetHealthStatus503Response._({this.status, this.message, this.details})
      : super._();
  @override
  GetHealthStatus503Response rebuild(
          void Function(GetHealthStatus503ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHealthStatus503ResponseBuilder toBuilder() =>
      GetHealthStatus503ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHealthStatus503Response &&
        status == other.status &&
        message == other.message &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetHealthStatus503Response')
          ..add('status', status)
          ..add('message', message)
          ..add('details', details))
        .toString();
  }
}

class GetHealthStatus503ResponseBuilder
    implements
        Builder<GetHealthStatus503Response, GetHealthStatus503ResponseBuilder> {
  _$GetHealthStatus503Response? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GetHealthStatus503ResponseDetailsBuilder? _details;
  GetHealthStatus503ResponseDetailsBuilder get details =>
      _$this._details ??= GetHealthStatus503ResponseDetailsBuilder();
  set details(GetHealthStatus503ResponseDetailsBuilder? details) =>
      _$this._details = details;

  GetHealthStatus503ResponseBuilder() {
    GetHealthStatus503Response._defaults(this);
  }

  GetHealthStatus503ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetHealthStatus503Response other) {
    _$v = other as _$GetHealthStatus503Response;
  }

  @override
  void update(void Function(GetHealthStatus503ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetHealthStatus503Response build() => _build();

  _$GetHealthStatus503Response _build() {
    _$GetHealthStatus503Response _$result;
    try {
      _$result = _$v ??
          _$GetHealthStatus503Response._(
            status: status,
            message: message,
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetHealthStatus503Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
