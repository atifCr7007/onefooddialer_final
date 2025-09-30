// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_preparation_summary200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPreparationSummary200Response
    extends GetPreparationSummary200Response {
  @override
  final bool? success;
  @override
  final GetPreparationSummary200ResponseData? data;

  factory _$GetPreparationSummary200Response([
    void Function(GetPreparationSummary200ResponseBuilder)? updates,
  ]) => (GetPreparationSummary200ResponseBuilder()..update(updates))._build();

  _$GetPreparationSummary200Response._({this.success, this.data}) : super._();
  @override
  GetPreparationSummary200Response rebuild(
    void Function(GetPreparationSummary200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetPreparationSummary200ResponseBuilder toBuilder() =>
      GetPreparationSummary200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPreparationSummary200Response &&
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
    return (newBuiltValueToStringHelper(r'GetPreparationSummary200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetPreparationSummary200ResponseBuilder
    implements
        Builder<
          GetPreparationSummary200Response,
          GetPreparationSummary200ResponseBuilder
        > {
  _$GetPreparationSummary200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetPreparationSummary200ResponseDataBuilder? _data;
  GetPreparationSummary200ResponseDataBuilder get data =>
      _$this._data ??= GetPreparationSummary200ResponseDataBuilder();
  set data(GetPreparationSummary200ResponseDataBuilder? data) =>
      _$this._data = data;

  GetPreparationSummary200ResponseBuilder() {
    GetPreparationSummary200Response._defaults(this);
  }

  GetPreparationSummary200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPreparationSummary200Response other) {
    _$v = other as _$GetPreparationSummary200Response;
  }

  @override
  void update(void Function(GetPreparationSummary200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPreparationSummary200Response build() => _build();

  _$GetPreparationSummary200Response _build() {
    _$GetPreparationSummary200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetPreparationSummary200Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetPreparationSummary200Response',
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
