// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_preparation_status200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPreparationStatus200Response
    extends GetPreparationStatus200Response {
  @override
  final bool? success;
  @override
  final BuiltList<KitchenPreparationResource>? data;

  factory _$GetPreparationStatus200Response([
    void Function(GetPreparationStatus200ResponseBuilder)? updates,
  ]) => (GetPreparationStatus200ResponseBuilder()..update(updates))._build();

  _$GetPreparationStatus200Response._({this.success, this.data}) : super._();
  @override
  GetPreparationStatus200Response rebuild(
    void Function(GetPreparationStatus200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetPreparationStatus200ResponseBuilder toBuilder() =>
      GetPreparationStatus200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPreparationStatus200Response &&
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
    return (newBuiltValueToStringHelper(r'GetPreparationStatus200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class GetPreparationStatus200ResponseBuilder
    implements
        Builder<
          GetPreparationStatus200Response,
          GetPreparationStatus200ResponseBuilder
        > {
  _$GetPreparationStatus200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetPreparationStatus200ResponseBuilder() {
    GetPreparationStatus200Response._defaults(this);
  }

  GetPreparationStatus200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPreparationStatus200Response other) {
    _$v = other as _$GetPreparationStatus200Response;
  }

  @override
  void update(void Function(GetPreparationStatus200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPreparationStatus200Response build() => _build();

  _$GetPreparationStatus200Response _build() {
    _$GetPreparationStatus200Response _$result;
    try {
      _$result =
          _$v ??
          _$GetPreparationStatus200Response._(
            success: success,
            data: _data?.build() as BuiltList<KitchenPreparationResource>,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetPreparationStatus200Response',
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
