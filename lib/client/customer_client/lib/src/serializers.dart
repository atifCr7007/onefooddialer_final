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
import 'package:customer_client/src/date_serializer.dart';
import 'package:customer_client/src/model/date.dart';

import 'package:customer_client/src/model/add_customer_address201_response.dart';
import 'package:customer_client/src/model/address.dart';
import 'package:customer_client/src/model/address_create.dart';
import 'package:customer_client/src/model/address_update.dart';
import 'package:customer_client/src/model/create_customer201_response.dart';
import 'package:customer_client/src/model/customer.dart';
import 'package:customer_client/src/model/customer_create.dart';
import 'package:customer_client/src/model/customer_update.dart';
import 'package:customer_client/src/model/delete_customer200_response.dart';
import 'package:customer_client/src/model/delete_customer_address200_response.dart';
import 'package:customer_client/src/model/get_customer_by_id200_response.dart';
import 'package:customer_client/src/model/get_customers200_response.dart';
import 'package:customer_client/src/model/get_customers200_response_data.dart';
import 'package:customer_client/src/model/inline_object.dart';
import 'package:customer_client/src/model/inline_object1.dart';
import 'package:customer_client/src/model/inline_object2.dart';
import 'package:customer_client/src/model/inline_object3.dart';
import 'package:customer_client/src/model/update_customer200_response.dart';
import 'package:customer_client/src/model/update_customer_address200_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  AddCustomerAddress201Response,
  Address,
  AddressCreate,
  AddressUpdate,
  CreateCustomer201Response,
  Customer,
  CustomerCreate,
  CustomerUpdate,
  DeleteCustomer200Response,
  DeleteCustomerAddress200Response,
  GetCustomerById200Response,
  GetCustomers200Response,
  GetCustomers200ResponseData,
  InlineObject,
  InlineObject1,
  InlineObject2,
  InlineObject3,
  UpdateCustomer200Response,
  UpdateCustomerAddress200Response,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
