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

import 'package:openapi/src/model/book_third_party_delivery200_response.dart';
import 'package:openapi/src/model/book_third_party_delivery200_response_data.dart';
import 'package:openapi/src/model/book_third_party_delivery_request.dart';
import 'package:openapi/src/model/cancel_third_party_delivery200_response.dart';
import 'package:openapi/src/model/delivery_location.dart';
import 'package:openapi/src/model/get_delivery_locations200_response.dart';
import 'package:openapi/src/model/get_delivery_orders200_response.dart';
import 'package:openapi/src/model/get_third_party_delivery_status200_response.dart';
import 'package:openapi/src/model/get_third_party_delivery_status200_response_data.dart';
import 'package:openapi/src/model/get_third_party_delivery_status200_response_data_status.dart';
import 'package:openapi/src/model/inline_object.dart';
import 'package:openapi/src/model/inline_object1.dart';
import 'package:openapi/src/model/inline_object2.dart';
import 'package:openapi/src/model/inline_object3.dart';
import 'package:openapi/src/model/order.dart';
import 'package:openapi/src/model/update_delivery_status200_response.dart';
import 'package:openapi/src/model/update_delivery_status_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  BookThirdPartyDelivery200Response,
  BookThirdPartyDelivery200ResponseData,
  BookThirdPartyDeliveryRequest,
  CancelThirdPartyDelivery200Response,
  DeliveryLocation,
  GetDeliveryLocations200Response,
  GetDeliveryOrders200Response,
  GetThirdPartyDeliveryStatus200Response,
  GetThirdPartyDeliveryStatus200ResponseData,
  GetThirdPartyDeliveryStatus200ResponseDataStatus,
  InlineObject,
  InlineObject1,
  InlineObject2,
  InlineObject3,
  Order,
  UpdateDeliveryStatus200Response,
  UpdateDeliveryStatusRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
