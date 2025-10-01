//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:catalogs_client/src/date_serializer.dart';
import 'package:catalogs_client/src/model/date.dart';

import 'package:catalogs_client/src/model/catalogue_products_get200_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_id_delete200_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_id_get200_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_id_get404_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_id_put200_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_post201_response.dart';
import 'package:catalogs_client/src/model/kitchen.dart';
import 'package:catalogs_client/src/model/pagination_meta.dart';
import 'package:catalogs_client/src/model/product.dart';
import 'package:catalogs_client/src/model/product_category.dart';
import 'package:catalogs_client/src/model/product_input.dart';

part 'serializers.g.dart';

@SerializersFor([
  CatalogueProductsGet200Response,
  CatalogueProductsIdDelete200Response,
  CatalogueProductsIdGet200Response,
  CatalogueProductsIdGet404Response,
  CatalogueProductsIdPut200Response,
  CatalogueProductsPost201Response,
  Kitchen,
  PaginationMeta,
  Product,
  ProductCategory,
  ProductInput,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
