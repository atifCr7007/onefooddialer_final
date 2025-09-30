// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsIdDelete200Response
    extends CatalogueProductsIdDelete200Response {
  @override
  final String? message;

  factory _$CatalogueProductsIdDelete200Response([
    void Function(CatalogueProductsIdDelete200ResponseBuilder)? updates,
  ]) =>
      (CatalogueProductsIdDelete200ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsIdDelete200Response._({this.message}) : super._();
  @override
  CatalogueProductsIdDelete200Response rebuild(
    void Function(CatalogueProductsIdDelete200ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsIdDelete200ResponseBuilder toBuilder() =>
      CatalogueProductsIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsIdDelete200Response &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CatalogueProductsIdDelete200Response',
    )..add('message', message)).toString();
  }
}

class CatalogueProductsIdDelete200ResponseBuilder
    implements
        Builder<
          CatalogueProductsIdDelete200Response,
          CatalogueProductsIdDelete200ResponseBuilder
        > {
  _$CatalogueProductsIdDelete200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CatalogueProductsIdDelete200ResponseBuilder() {
    CatalogueProductsIdDelete200Response._defaults(this);
  }

  CatalogueProductsIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsIdDelete200Response other) {
    _$v = other as _$CatalogueProductsIdDelete200Response;
  }

  @override
  void update(
    void Function(CatalogueProductsIdDelete200ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsIdDelete200Response build() => _build();

  _$CatalogueProductsIdDelete200Response _build() {
    final _$result =
        _$v ?? _$CatalogueProductsIdDelete200Response._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
