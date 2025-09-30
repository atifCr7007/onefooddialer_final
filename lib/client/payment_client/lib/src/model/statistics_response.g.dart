// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatisticsResponse extends StatisticsResponse {
  @override
  final bool? success;
  @override
  final StatisticsResponseData? data;

  factory _$StatisticsResponse([
    void Function(StatisticsResponseBuilder)? updates,
  ]) => (StatisticsResponseBuilder()..update(updates))._build();

  _$StatisticsResponse._({this.success, this.data}) : super._();
  @override
  StatisticsResponse rebuild(
    void Function(StatisticsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StatisticsResponseBuilder toBuilder() =>
      StatisticsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsResponse &&
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
    return (newBuiltValueToStringHelper(r'StatisticsResponse')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class StatisticsResponseBuilder
    implements Builder<StatisticsResponse, StatisticsResponseBuilder> {
  _$StatisticsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  StatisticsResponseDataBuilder? _data;
  StatisticsResponseDataBuilder get data =>
      _$this._data ??= StatisticsResponseDataBuilder();
  set data(StatisticsResponseDataBuilder? data) => _$this._data = data;

  StatisticsResponseBuilder() {
    StatisticsResponse._defaults(this);
  }

  StatisticsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsResponse other) {
    _$v = other as _$StatisticsResponse;
  }

  @override
  void update(void Function(StatisticsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatisticsResponse build() => _build();

  _$StatisticsResponse _build() {
    _$StatisticsResponse _$result;
    try {
      _$result =
          _$v ?? _$StatisticsResponse._(success: success, data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StatisticsResponse',
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
