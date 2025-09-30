// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsIdGet200Response
    extends CatalogueProductsIdGet200Response {
  @override
  final Product? data;

  factory _$CatalogueProductsIdGet200Response(
          [void Function(CatalogueProductsIdGet200ResponseBuilder)? updates]) =>
      (CatalogueProductsIdGet200ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsIdGet200Response._({this.data}) : super._();
  @override
  CatalogueProductsIdGet200Response rebuild(
          void Function(CatalogueProductsIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsIdGet200ResponseBuilder toBuilder() =>
      CatalogueProductsIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsIdGet200Response && data == other.data;
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
    return (newBuiltValueToStringHelper(r'CatalogueProductsIdGet200Response')
          ..add('data', data))
        .toString();
  }
}

class CatalogueProductsIdGet200ResponseBuilder
    implements
        Builder<CatalogueProductsIdGet200Response,
            CatalogueProductsIdGet200ResponseBuilder> {
  _$CatalogueProductsIdGet200Response? _$v;

  ProductBuilder? _data;
  ProductBuilder get data => _$this._data ??= ProductBuilder();
  set data(ProductBuilder? data) => _$this._data = data;

  CatalogueProductsIdGet200ResponseBuilder() {
    CatalogueProductsIdGet200Response._defaults(this);
  }

  CatalogueProductsIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsIdGet200Response other) {
    _$v = other as _$CatalogueProductsIdGet200Response;
  }

  @override
  void update(
      void Function(CatalogueProductsIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsIdGet200Response build() => _build();

  _$CatalogueProductsIdGet200Response _build() {
    _$CatalogueProductsIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$CatalogueProductsIdGet200Response._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CatalogueProductsIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
