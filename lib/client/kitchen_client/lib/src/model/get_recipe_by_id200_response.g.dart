// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recipe_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetRecipeById200Response extends GetRecipeById200Response {
  @override
  final bool? success;
  @override
  final GetRecipeById200ResponseData? data;

  factory _$GetRecipeById200Response(
          [void Function(GetRecipeById200ResponseBuilder)? updates]) =>
      (GetRecipeById200ResponseBuilder()..update(updates))._build();

  _$GetRecipeById200Response._({this.success, this.data}) : super._();
  @override
  GetRecipeById200Response rebuild(
          void Function(GetRecipeById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRecipeById200ResponseBuilder toBuilder() =>
      GetRecipeById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRecipeById200Response &&
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
    return (newBuiltValueToStringHelper(r'GetRecipeById200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetRecipeById200ResponseBuilder
    implements
        Builder<GetRecipeById200Response, GetRecipeById200ResponseBuilder> {
  _$GetRecipeById200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  GetRecipeById200ResponseDataBuilder? _data;
  GetRecipeById200ResponseDataBuilder get data =>
      _$this._data ??= GetRecipeById200ResponseDataBuilder();
  set data(GetRecipeById200ResponseDataBuilder? data) => _$this._data = data;

  GetRecipeById200ResponseBuilder() {
    GetRecipeById200Response._defaults(this);
  }

  GetRecipeById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetRecipeById200Response other) {
    _$v = other as _$GetRecipeById200Response;
  }

  @override
  void update(void Function(GetRecipeById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRecipeById200Response build() => _build();

  _$GetRecipeById200Response _build() {
    _$GetRecipeById200Response _$result;
    try {
      _$result = _$v ??
          _$GetRecipeById200Response._(
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
            r'GetRecipeById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
