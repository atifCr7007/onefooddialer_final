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
import 'package:quickserver_client/src/date_serializer.dart';
import 'package:quickserver_client/src/model/date.dart';

import 'package:quickserver_client/src/model/backorder.dart';
import 'package:quickserver_client/src/model/backorder_create.dart';
import 'package:quickserver_client/src/model/backorder_product.dart';
import 'package:quickserver_client/src/model/backorder_update.dart';
import 'package:quickserver_client/src/model/cancel_backorder200_response.dart';
import 'package:quickserver_client/src/model/complete_backorder200_response.dart';
import 'package:quickserver_client/src/model/create_backorder200_response.dart';
import 'package:quickserver_client/src/model/create_backorder_from_order200_response.dart';
import 'package:quickserver_client/src/model/create_backorder_from_order_request.dart';
import 'package:quickserver_client/src/model/create_location_mapping200_response.dart';
import 'package:quickserver_client/src/model/create_order200_response.dart';
import 'package:quickserver_client/src/model/create_timeslot200_response.dart';
import 'package:quickserver_client/src/model/delete_backorder200_response.dart';
import 'package:quickserver_client/src/model/delete_location_mapping200_response.dart';
import 'package:quickserver_client/src/model/delete_order200_response.dart';
import 'package:quickserver_client/src/model/delete_timeslot200_response.dart';
import 'package:quickserver_client/src/model/error.dart';
import 'package:quickserver_client/src/model/get_all_config200_response.dart';
import 'package:quickserver_client/src/model/get_all_settings200_response.dart';
import 'package:quickserver_client/src/model/get_backorder_by_id200_response.dart';
import 'package:quickserver_client/src/model/get_backorders200_response.dart';
import 'package:quickserver_client/src/model/get_config_by_key200_response.dart';
import 'package:quickserver_client/src/model/get_config_by_key200_response_data.dart';
import 'package:quickserver_client/src/model/get_location_mapping_by_id200_response.dart';
import 'package:quickserver_client/src/model/get_location_mappings200_response.dart';
import 'package:quickserver_client/src/model/get_order_by_id200_response.dart';
import 'package:quickserver_client/src/model/get_orders200_response.dart';
import 'package:quickserver_client/src/model/get_timeslot_by_id200_response.dart';
import 'package:quickserver_client/src/model/get_timeslots200_response.dart';
import 'package:quickserver_client/src/model/health_check200_response.dart';
import 'package:quickserver_client/src/model/location_mapping.dart';
import 'package:quickserver_client/src/model/location_mapping_create.dart';
import 'package:quickserver_client/src/model/location_mapping_update.dart';
import 'package:quickserver_client/src/model/order.dart';
import 'package:quickserver_client/src/model/order_create.dart';
import 'package:quickserver_client/src/model/order_customer.dart';
import 'package:quickserver_client/src/model/order_product.dart';
import 'package:quickserver_client/src/model/order_update.dart';
import 'package:quickserver_client/src/model/timeslot.dart';
import 'package:quickserver_client/src/model/timeslot_create.dart';
import 'package:quickserver_client/src/model/timeslot_update.dart';
import 'package:quickserver_client/src/model/update_backorder200_response.dart';
import 'package:quickserver_client/src/model/update_config_by_key200_response.dart';
import 'package:quickserver_client/src/model/update_config_by_key200_response_data.dart';
import 'package:quickserver_client/src/model/update_config_by_key_request.dart';
import 'package:quickserver_client/src/model/update_location_mapping200_response.dart';
import 'package:quickserver_client/src/model/update_order200_response.dart';
import 'package:quickserver_client/src/model/update_timeslot200_response.dart';
import 'package:quickserver_client/src/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  Backorder,
  BackorderCreate,
  BackorderProduct,
  BackorderUpdate,
  CancelBackorder200Response,
  CompleteBackorder200Response,
  CreateBackorder200Response,
  CreateBackorderFromOrder200Response,
  CreateBackorderFromOrderRequest,
  CreateLocationMapping200Response,
  CreateOrder200Response,
  CreateTimeslot200Response,
  DeleteBackorder200Response,
  DeleteLocationMapping200Response,
  DeleteOrder200Response,
  DeleteTimeslot200Response,
  Error,
  GetAllConfig200Response,
  GetAllSettings200Response,
  GetBackorderById200Response,
  GetBackorders200Response,
  GetConfigByKey200Response,
  GetConfigByKey200ResponseData,
  GetLocationMappingById200Response,
  GetLocationMappings200Response,
  GetOrderById200Response,
  GetOrders200Response,
  GetTimeslotById200Response,
  GetTimeslots200Response,
  HealthCheck200Response,
  LocationMapping,
  LocationMappingCreate,
  LocationMappingUpdate,
  Order,
  OrderCreate,
  OrderCustomer,
  OrderProduct,
  OrderUpdate,
  Timeslot,
  TimeslotCreate,
  TimeslotUpdate,
  UpdateBackorder200Response,
  UpdateConfigByKey200Response,
  UpdateConfigByKey200ResponseData,
  UpdateConfigByKeyRequest,
  UpdateLocationMapping200Response,
  UpdateOrder200Response,
  UpdateTimeslot200Response,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
