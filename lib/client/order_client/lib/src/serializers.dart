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
import 'package:order_client/src/date_serializer.dart';
import 'package:order_client/src/model/date.dart';

import 'package:order_client/src/model/delivery_address.dart';
import 'package:order_client/src/model/error_response.dart';
import 'package:order_client/src/model/item_customization.dart';
import 'package:order_client/src/model/nutritional_info.dart';
import 'package:order_client/src/model/order.dart';
import 'package:order_client/src/model/order_item.dart';
import 'package:order_client/src/model/orders_order_id_delete_request.dart';
import 'package:order_client/src/model/orders_order_id_items_get200_response.dart';
import 'package:order_client/src/model/orders_order_id_items_get200_response_data.dart';
import 'package:order_client/src/model/pagination_meta.dart';
import 'package:order_client/src/model/validation_error_response.dart';
import 'package:order_client/src/model/validation_error_response_errors_inner.dart';

part 'serializers.g.dart';

@SerializersFor([
  DeliveryAddress,
  ErrorResponse,
  ItemCustomization,
  NutritionalInfo,
  Order,
  OrderItem,
  OrdersOrderIdDeleteRequest,
  OrdersOrderIdItemsGet200Response,
  OrdersOrderIdItemsGet200ResponseData,
  PaginationMeta,
  ValidationErrorResponse,
  ValidationErrorResponseErrorsInner,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
