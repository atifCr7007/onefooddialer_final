// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsGet200Response
    extends CatalogueProductsGet200Response {
  @override
  final BuiltList<Product>? data;
  @override
  final PaginationMeta? meta;

  factory _$CatalogueProductsGet200Response([
    void Function(CatalogueProductsGet200ResponseBuilder)? updates,
  ]) => (CatalogueProductsGet200ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsGet200Response._({this.data, this.meta}) : super._();
  @override
  CatalogueProductsGet200Response rebuild(
    void Function(CatalogueProductsGet200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsGet200ResponseBuilder toBuilder() =>
      CatalogueProductsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsGet200Response &&
        data == other.data &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatalogueProductsGet200Response')
          ..add('data', data)
          ..add('meta', meta))
        .toString();
  }
}

class CatalogueProductsGet200ResponseBuilder
    implements
        Builder<
          CatalogueProductsGet200Response,
          CatalogueProductsGet200ResponseBuilder
        > {
  _$CatalogueProductsGet200Response? _$v;

  ListBuilder<Product>? _data;
  ListBuilder<Product> get data => _$this._data ??= ListBuilder<Product>();
  set data(ListBuilder<Product>? data) => _$this._data = data;

  PaginationMetaBuilder? _meta;
  PaginationMetaBuilder get meta => _$this._meta ??= PaginationMetaBuilder();
  set meta(PaginationMetaBuilder? meta) => _$this._meta = meta;

  CatalogueProductsGet200ResponseBuilder() {
    CatalogueProductsGet200Response._defaults(this);
  }

  CatalogueProductsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsGet200Response other) {
    _$v = other as _$CatalogueProductsGet200Response;
  }

  @override
  void update(void Function(CatalogueProductsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsGet200Response build() => _build();

  _$CatalogueProductsGet200Response _build() {
    _$CatalogueProductsGet200Response _$result;
    try {
      _$result =
          _$v ??
          _$CatalogueProductsGet200Response._(
            data: _data?.build(),
            meta: _meta?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CatalogueProductsGet200Response',
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
