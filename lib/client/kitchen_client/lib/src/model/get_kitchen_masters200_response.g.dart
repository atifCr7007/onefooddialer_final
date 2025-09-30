// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_kitchen_masters200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetKitchenMasters200Response extends GetKitchenMasters200Response {
  @override
  final BuiltList<KitchenMaster>? data;

  factory _$GetKitchenMasters200Response([
    void Function(GetKitchenMasters200ResponseBuilder)? updates,
  ]) => (GetKitchenMasters200ResponseBuilder()..update(updates))._build();

  _$GetKitchenMasters200Response._({this.data}) : super._();
  @override
  GetKitchenMasters200Response rebuild(
    void Function(GetKitchenMasters200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetKitchenMasters200ResponseBuilder toBuilder() =>
      GetKitchenMasters200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetKitchenMasters200Response && data == other.data;
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
      r'GetKitchenMasters200Response',
    )..add('data', data)).toString();
  }
}

class GetKitchenMasters200ResponseBuilder
    implements
        Builder<
          GetKitchenMasters200Response,
          GetKitchenMasters200ResponseBuilder
        > {
  _$GetKitchenMasters200Response? _$v;

  ListBuilder<dynamic>? _data;
  ListBuilder<dynamic> get data => _$this._data ??= ListBuilder<dynamic>();
  set data(ListBuilder<dynamic>? data) => _$this._data = data;

  GetKitchenMasters200ResponseBuilder() {
    GetKitchenMasters200Response._defaults(this);
  }

  GetKitchenMasters200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetKitchenMasters200Response other) {
    _$v = other as _$GetKitchenMasters200Response;
  }

  @override
  void update(void Function(GetKitchenMasters200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetKitchenMasters200Response build() => _build();

  _$GetKitchenMasters200Response _build() {
    _$GetKitchenMasters200Response _$result;
    try {
      _$result = _$v ?? _$GetKitchenMasters200Response._(data: _data?.build() as BuiltList<KitchenMaster>);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetKitchenMasters200Response',
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
