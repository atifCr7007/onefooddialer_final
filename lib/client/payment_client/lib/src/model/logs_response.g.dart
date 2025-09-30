// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogsResponse extends LogsResponse {
  @override
  final bool? success;
  @override
  final BuiltList<PaymentLog>? data;

  factory _$LogsResponse([void Function(LogsResponseBuilder)? updates]) =>
      (LogsResponseBuilder()..update(updates))._build();

  _$LogsResponse._({this.success, this.data}) : super._();
  @override
  LogsResponse rebuild(void Function(LogsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogsResponseBuilder toBuilder() => LogsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogsResponse &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogsResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class LogsResponseBuilder
    implements Builder<LogsResponse, LogsResponseBuilder> {
  _$LogsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  LogsResponseBuilder() {
    LogsResponse._defaults(this);
  }

  LogsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogsResponse other) {
    _$v = other as _$LogsResponse;
  }

  @override
  void update(void Function(LogsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogsResponse build() => _build();

  _$LogsResponse _build() {
    _$LogsResponse _$result;
    try {
      _$result =
          _$v ?? _$LogsResponse._(success: success, data: _data?.build()as BuiltList<PaymentLog>);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LogsResponse',
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
