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
import 'package:payment_client/src/date_serializer.dart';
import 'package:payment_client/src/model/date.dart';

import 'package:payment_client/src/model/create_payment_method_request.dart';
import 'package:payment_client/src/model/delete_response.dart';
import 'package:payment_client/src/model/error_response.dart';
import 'package:payment_client/src/model/initiate_payment_request.dart';
import 'package:payment_client/src/model/initiate_payment_response.dart';
import 'package:payment_client/src/model/initiate_payment_response_data.dart';
import 'package:payment_client/src/model/logs_response.dart';
import 'package:payment_client/src/model/payment_callback_response.dart';
import 'package:payment_client/src/model/payment_callback_response_data.dart';
import 'package:payment_client/src/model/payment_log.dart';
import 'package:payment_client/src/model/payment_method.dart';
import 'package:payment_client/src/model/payment_method_response.dart';
import 'package:payment_client/src/model/payment_methods_response.dart';
import 'package:payment_client/src/model/payment_status_response.dart';
import 'package:payment_client/src/model/payment_status_response_data.dart';
import 'package:payment_client/src/model/process_payment_request.dart';
import 'package:payment_client/src/model/process_payment_response.dart';
import 'package:payment_client/src/model/process_payment_response_data.dart';
import 'package:payment_client/src/model/refund_payment_request.dart';
import 'package:payment_client/src/model/refund_payment_response.dart';
import 'package:payment_client/src/model/refund_payment_response_data.dart';
import 'package:payment_client/src/model/statistics_response.dart';
import 'package:payment_client/src/model/statistics_response_data.dart';
import 'package:payment_client/src/model/transaction_summary.dart';
import 'package:payment_client/src/model/update_payment_method_request.dart';
import 'package:payment_client/src/model/validation_error_response.dart';
import 'package:payment_client/src/model/webhook_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  CreatePaymentMethodRequest,
  DeleteResponse,
  ErrorResponse,
  InitiatePaymentRequest,
  InitiatePaymentResponse,
  InitiatePaymentResponseData,
  LogsResponse,
  PaymentCallbackResponse,
  PaymentCallbackResponseData,
  PaymentLog,
  PaymentMethod,
  PaymentMethodResponse,
  PaymentMethodsResponse,
  PaymentStatusResponse,
  PaymentStatusResponseData,
  ProcessPaymentRequest,
  ProcessPaymentResponse,
  ProcessPaymentResponseData,
  RefundPaymentRequest,
  RefundPaymentResponse,
  RefundPaymentResponseData,
  StatisticsResponse,
  StatisticsResponseData,
  TransactionSummary,
  UpdatePaymentMethodRequest,
  ValidationErrorResponse,
  WebhookResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
