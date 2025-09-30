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

import 'package:openapi/src/model/cancel_subscription_request.dart';
import 'package:openapi/src/model/create_subscription201_response.dart';
import 'package:openapi/src/model/create_subscription_plan201_response.dart';
import 'package:openapi/src/model/customer.dart';
import 'package:openapi/src/model/delete_subscription_plan200_response.dart';
import 'package:openapi/src/model/error.dart';
import 'package:openapi/src/model/get_all_subscription_plans200_response.dart';
import 'package:openapi/src/model/get_all_subscriptions200_response.dart';
import 'package:openapi/src/model/get_subscription_by_id200_response.dart';
import 'package:openapi/src/model/get_subscription_logs200_response.dart';
import 'package:openapi/src/model/get_subscription_plan_by_id200_response.dart';
import 'package:openapi/src/model/pause_subscription_request.dart';
import 'package:openapi/src/model/process_subscription_payment_request.dart';
import 'package:openapi/src/model/renew_subscription_request.dart';
import 'package:openapi/src/model/subscription.dart';
import 'package:openapi/src/model/subscription_input.dart';
import 'package:openapi/src/model/subscription_item.dart';
import 'package:openapi/src/model/subscription_item_input.dart';
import 'package:openapi/src/model/subscription_log.dart';
import 'package:openapi/src/model/subscription_pause_history_inner.dart';
import 'package:openapi/src/model/subscription_plan.dart';
import 'package:openapi/src/model/subscription_plan_input.dart';
import 'package:openapi/src/model/subscription_plan_update_input.dart';
import 'package:openapi/src/model/subscription_update_input.dart';
import 'package:openapi/src/model/validation_error.dart';

part 'serializers.g.dart';

@SerializersFor([
  CancelSubscriptionRequest,
  CreateSubscription201Response,
  CreateSubscriptionPlan201Response,
  Customer,
  DeleteSubscriptionPlan200Response,
  Error,
  GetAllSubscriptionPlans200Response,
  GetAllSubscriptions200Response,
  GetSubscriptionById200Response,
  GetSubscriptionLogs200Response,
  GetSubscriptionPlanById200Response,
  PauseSubscriptionRequest,
  ProcessSubscriptionPaymentRequest,
  RenewSubscriptionRequest,
  Subscription,
  SubscriptionInput,
  SubscriptionItem,
  SubscriptionItemInput,
  SubscriptionLog,
  SubscriptionPauseHistoryInner,
  SubscriptionPlan,
  SubscriptionPlanInput,
  SubscriptionPlanUpdateInput,
  SubscriptionUpdateInput,
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
