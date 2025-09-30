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

import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/create_invoice_item_request.dart';
import 'package:openapi/src/model/create_invoice_request.dart';
import 'package:openapi/src/model/error_response.dart';
import 'package:openapi/src/model/health_get200_response.dart';
import 'package:openapi/src/model/invoice.dart';
import 'package:openapi/src/model/invoice_item.dart';
import 'package:openapi/src/model/invoice_statistics.dart';
import 'package:openapi/src/model/invoices_get200_response.dart';
import 'package:openapi/src/model/invoices_get200_response_data.dart';
import 'package:openapi/src/model/invoices_id_delete200_response.dart';
import 'package:openapi/src/model/invoices_id_get200_response.dart';
import 'package:openapi/src/model/invoices_id_mark_paid_post200_response.dart';
import 'package:openapi/src/model/invoices_id_mark_paid_post_request.dart';
import 'package:openapi/src/model/invoices_id_put200_response.dart';
import 'package:openapi/src/model/invoices_post201_response.dart';
import 'package:openapi/src/model/invoices_statistics_get200_response.dart';
import 'package:openapi/src/model/update_invoice_request.dart';
import 'package:openapi/src/model/validation_error_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Address,
  CreateInvoiceItemRequest,
  CreateInvoiceRequest,
  ErrorResponse,
  HealthGet200Response,
  Invoice,
  InvoiceItem,
  InvoiceStatistics,
  InvoicesGet200Response,
  InvoicesGet200ResponseData,
  InvoicesIdDelete200Response,
  InvoicesIdGet200Response,
  InvoicesIdMarkPaidPost200Response,
  InvoicesIdMarkPaidPostRequest,
  InvoicesIdPut200Response,
  InvoicesPost201Response,
  InvoicesStatisticsGet200Response,
  UpdateInvoiceRequest,
  ValidationErrorResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
