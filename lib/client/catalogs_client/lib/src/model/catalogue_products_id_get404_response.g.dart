// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogue_products_id_get404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CatalogueProductsIdGet404Response
    extends CatalogueProductsIdGet404Response {
  @override
  final String? message;

  factory _$CatalogueProductsIdGet404Response([
    void Function(CatalogueProductsIdGet404ResponseBuilder)? updates,
  ]) => (CatalogueProductsIdGet404ResponseBuilder()..update(updates))._build();

  _$CatalogueProductsIdGet404Response._({this.message}) : super._();
  @override
  CatalogueProductsIdGet404Response rebuild(
    void Function(CatalogueProductsIdGet404ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CatalogueProductsIdGet404ResponseBuilder toBuilder() =>
      CatalogueProductsIdGet404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogueProductsIdGet404Response &&
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
      r'CatalogueProductsIdGet404Response',
    )..add('message', message)).toString();
  }
}

class CatalogueProductsIdGet404ResponseBuilder
    implements
        Builder<
          CatalogueProductsIdGet404Response,
          CatalogueProductsIdGet404ResponseBuilder
        > {
  _$CatalogueProductsIdGet404Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CatalogueProductsIdGet404ResponseBuilder() {
    CatalogueProductsIdGet404Response._defaults(this);
  }

  CatalogueProductsIdGet404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogueProductsIdGet404Response other) {
    _$v = other as _$CatalogueProductsIdGet404Response;
  }

  @override
  void update(
    void Function(CatalogueProductsIdGet404ResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CatalogueProductsIdGet404Response build() => _build();

  _$CatalogueProductsIdGet404Response _build() {
    final _$result =
        _$v ?? _$CatalogueProductsIdGet404Response._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
