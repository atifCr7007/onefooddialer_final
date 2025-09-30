// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_id_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsIdPut200Response
    extends CatalogueProductsIdPut200Response {
  @override
  final String? message;
  @override
  final Product? data;

  factory _$CatalogueProductsIdPut200Response(
          [void Function(CatalogueProductsIdPut200ResponseBuilder)? updates]) =>
      (CatalogueProductsIdPut200ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsIdPut200Response._({this.message, this.data}) : super._();
  @override
  CatalogueProductsIdPut200Response rebuild(
          void Function(CatalogueProductsIdPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsIdPut200ResponseBuilder toBuilder() =>
      CatalogueProductsIdPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsIdPut200Response &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CatalogueProductsIdPut200Response')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CatalogueProductsIdPut200ResponseBuilder
    implements
        Builder<CatalogueProductsIdPut200Response,
            CatalogueProductsIdPut200ResponseBuilder> {
  _$CatalogueProductsIdPut200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductBuilder? _data;
  ProductBuilder get data => _$this._data ??= ProductBuilder();
  set data(ProductBuilder? data) => _$this._data = data;

  CatalogueProductsIdPut200ResponseBuilder() {
    CatalogueProductsIdPut200Response._defaults(this);
  }

  CatalogueProductsIdPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsIdPut200Response other) {
    _$v = other as _$CatalogueProductsIdPut200Response;
  }

  @override
  void update(
      void Function(CatalogueProductsIdPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsIdPut200Response build() => _build();

  _$CatalogueProductsIdPut200Response _build() {
    _$CatalogueProductsIdPut200Response _$result;
    try {
      _$result = _$v ??
          _$CatalogueProductsIdPut200Response._(
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CatalogueProductsIdPut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
