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
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/delete_kitchen_master200_response.dart';
import 'package:openapi/src/model/error.dart';
import 'package:openapi/src/model/estimate_delivery_time200_response.dart';
import 'package:openapi/src/model/estimate_delivery_time200_response_data.dart';
import 'package:openapi/src/model/estimate_delivery_time200_response_data_preparation_status.dart';
import 'package:openapi/src/model/get_customer_preparation_summary200_response.dart';
import 'package:openapi/src/model/get_customer_preparation_summary200_response_data.dart';
import 'package:openapi/src/model/get_customer_preparation_summary200_response_data_orders_inner.dart';
import 'package:openapi/src/model/get_kitchen_masters200_response.dart';
import 'package:openapi/src/model/get_kitchens200_response.dart';
import 'package:openapi/src/model/get_multiple_orders_preparation_status200_response.dart';
import 'package:openapi/src/model/get_multiple_orders_preparation_status200_response_data_value.dart';
import 'package:openapi/src/model/get_multiple_orders_preparation_status_request.dart';
import 'package:openapi/src/model/get_order_preparation_status200_response.dart';
import 'package:openapi/src/model/get_order_preparation_status200_response_data.dart';
import 'package:openapi/src/model/get_order_preparation_status_for_delivery200_response.dart';
import 'package:openapi/src/model/get_order_preparation_status_for_delivery200_response_data.dart';
import 'package:openapi/src/model/get_preparation_status200_response.dart';
import 'package:openapi/src/model/get_preparation_summary200_response.dart';
import 'package:openapi/src/model/get_preparation_summary200_response_data.dart';
import 'package:openapi/src/model/get_recipe_by_id200_response.dart';
import 'package:openapi/src/model/get_recipe_by_id200_response_data.dart';
import 'package:openapi/src/model/health_check200_response.dart';
import 'package:openapi/src/model/kitchen.dart';
import 'package:openapi/src/model/kitchen_kitchen_master.dart';
import 'package:openapi/src/model/kitchen_master.dart';
import 'package:openapi/src/model/kitchen_master_input.dart';
import 'package:openapi/src/model/kitchen_preparation_resource.dart';
import 'package:openapi/src/model/kitchen_preparation_resource_product.dart';
import 'package:openapi/src/model/kitchen_product.dart';
import 'package:openapi/src/model/notify_delivery_status_update200_response.dart';
import 'package:openapi/src/model/notify_delivery_status_update_request.dart';
import 'package:openapi/src/model/notify_delivery_status_update_request_delivery_agent.dart';
import 'package:openapi/src/model/update_prepared_request.dart';
import 'package:openapi/src/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  DeleteKitchenMaster200Response,
  Error,
  EstimateDeliveryTime200Response,
  EstimateDeliveryTime200ResponseData,
  EstimateDeliveryTime200ResponseDataPreparationStatus,
  GetCustomerPreparationSummary200Response,
  GetCustomerPreparationSummary200ResponseData,
  GetCustomerPreparationSummary200ResponseDataOrdersInner,
  GetKitchenMasters200Response,
  GetKitchens200Response,
  GetMultipleOrdersPreparationStatus200Response,
  GetMultipleOrdersPreparationStatus200ResponseDataValue,
  GetMultipleOrdersPreparationStatusRequest,
  GetOrderPreparationStatus200Response,
  GetOrderPreparationStatus200ResponseData,
  GetOrderPreparationStatusForDelivery200Response,
  GetOrderPreparationStatusForDelivery200ResponseData,
  GetPreparationStatus200Response,
  GetPreparationSummary200Response,
  GetPreparationSummary200ResponseData,
  GetRecipeById200Response,
  GetRecipeById200ResponseData,
  HealthCheck200Response,
  Kitchen,
  KitchenKitchenMaster,
  KitchenMaster,
  KitchenMasterInput,
  KitchenPreparationResource,
  KitchenPreparationResourceProduct,
  KitchenProduct,
  NotifyDeliveryStatusUpdate200Response,
  NotifyDeliveryStatusUpdateRequest,
  NotifyDeliveryStatusUpdateRequestDeliveryAgent,
  UpdatePreparedRequest,
  ValidationError,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(int)]),
        () => ListBuilder<int>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
