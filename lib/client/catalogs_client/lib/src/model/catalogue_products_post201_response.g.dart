// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsPost201Response
    extends CatalogueProductsPost201Response {
  @override
  final String? message;
  @override
  final Product? data;

  factory _$CatalogueProductsPost201Response(
          [void Function(CatalogueProductsPost201ResponseBuilder)? updates]) =>
      (CatalogueProductsPost201ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsPost201Response._({this.message, this.data}) : super._();
  @override
  CatalogueProductsPost201Response rebuild(
          void Function(CatalogueProductsPost201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsPost201ResponseBuilder toBuilder() =>
      CatalogueProductsPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsPost201Response &&
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
    return (newBuiltValueToStringHelper(r'CatalogueProductsPost201Response')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CatalogueProductsPost201ResponseBuilder
    implements
        Builder<CatalogueProductsPost201Response,
            CatalogueProductsPost201ResponseBuilder> {
  _$CatalogueProductsPost201Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductBuilder? _data;
  ProductBuilder get data => _$this._data ??= ProductBuilder();
  set data(ProductBuilder? data) => _$this._data = data;

  CatalogueProductsPost201ResponseBuilder() {
    CatalogueProductsPost201Response._defaults(this);
  }

  CatalogueProductsPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsPost201Response other) {
    _$v = other as _$CatalogueProductsPost201Response;
  }

  @override
  void update(void Function(CatalogueProductsPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsPost201Response build() => _build();

  _$CatalogueProductsPost201Response _build() {
    _$CatalogueProductsPost201Response _$result;
    try {
      _$result = _$v ??
          _$CatalogueProductsPost201Response._(
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
            r'CatalogueProductsPost201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
