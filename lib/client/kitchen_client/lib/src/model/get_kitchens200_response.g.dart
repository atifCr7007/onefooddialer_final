// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_kitchens200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetKitchens200Response extends GetKitchens200Response {
  @override
  final BuiltList<Kitchen>? data;

  factory _$GetKitchens200Response([
    void Function(GetKitchens200ResponseBuilder)? updates,
  ]) => (GetKitchens200ResponseBuilder()..update(updates))._build();

  _$GetKitchens200Response._({this.data}) : super._();
  @override
  GetKitchens200Response rebuild(
    void Function(GetKitchens200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetKitchens200ResponseBuilder toBuilder() =>
      GetKitchens200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetKitchens200Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetKitchens200Response',
    )..add('data', data)).toString();
  }
}

class GetKitchens200ResponseBuilder
    implements Builder<GetKitchens200Response, GetKitchens200ResponseBuilder> {
  _$GetKitchens200Response? _$v;

  ListBuilder<Kitchen>? _data;
  ListBuilder<Kitchen> get data => _$this._data ??= ListBuilder<Kitchen>();
  set data(ListBuilder<Kitchen>? data) => _$this._data = data;

  GetKitchens200ResponseBuilder() {
    GetKitchens200Response._defaults(this);
  }

  GetKitchens200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetKitchens200Response other) {
    _$v = other as _$GetKitchens200Response;
  }

  @override
  void update(void Function(GetKitchens200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetKitchens200Response build() => _build();

  _$GetKitchens200Response _build() {
    _$GetKitchens200Response _$result;
    try {
      _$result = _$v ?? _$GetKitchens200Response._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetKitchens200Response',
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
