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
import 'package:analytics_client/src/date_serializer.dart';
import 'package:analytics_client/src/model/date.dart';

import 'package:analytics_client/src/model/avg_meal.dart';
import 'package:analytics_client/src/model/common_extra.dart';
import 'package:analytics_client/src/model/customer_loyal_get200_response.dart';
import 'package:analytics_client/src/model/customer_preference.dart';
import 'package:analytics_client/src/model/customer_preferences_customer_id_get200_response.dart';
import 'package:analytics_client/src/model/customer_spending.dart';
import 'package:analytics_client/src/model/customer_spending_customer_id_get200_response.dart';
import 'package:analytics_client/src/model/error.dart';
import 'package:analytics_client/src/model/food_extras_get200_response.dart';
import 'package:analytics_client/src/model/food_popular_year_month_get200_response.dart';
import 'package:analytics_client/src/model/get_customer_dashboard200_response.dart';
import 'package:analytics_client/src/model/get_customer_dashboard200_response_data.dart';
import 'package:analytics_client/src/model/get_food_dashboard200_response.dart';
import 'package:analytics_client/src/model/get_food_dashboard200_response_data.dart';
import 'package:analytics_client/src/model/get_health_status503_response.dart';
import 'package:analytics_client/src/model/get_health_status503_response_details.dart';
import 'package:analytics_client/src/model/get_sales_dashboard200_response.dart';
import 'package:analytics_client/src/model/get_sales_dashboard200_response_data.dart';
import 'package:analytics_client/src/model/get_sales_months200_response.dart';
import 'package:analytics_client/src/model/get_sales_years200_response.dart';
import 'package:analytics_client/src/model/health_check.dart';
import 'package:analytics_client/src/model/loyal_customer.dart';
import 'package:analytics_client/src/model/meal_performance.dart';
import 'package:analytics_client/src/model/payment_mode.dart';
import 'package:analytics_client/src/model/revenue_share.dart';
import 'package:analytics_client/src/model/sales_avg_meal_year_month_get200_response.dart';
import 'package:analytics_client/src/model/sales_comparison.dart';
import 'package:analytics_client/src/model/sales_comparison_year_type_get200_response.dart';
import 'package:analytics_client/src/model/sales_payment_methods_get200_response.dart';
import 'package:analytics_client/src/model/sales_revenue_year_month_get200_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  AvgMeal,
  CommonExtra,
  CustomerLoyalGet200Response,
  CustomerPreference,
  CustomerPreferencesCustomerIdGet200Response,
  CustomerSpending,
  CustomerSpendingCustomerIdGet200Response,
  Error,
  FoodExtrasGet200Response,
  FoodPopularYearMonthGet200Response,
  GetCustomerDashboard200Response,
  GetCustomerDashboard200ResponseData,
  GetFoodDashboard200Response,
  GetFoodDashboard200ResponseData,
  GetHealthStatus503Response,
  GetHealthStatus503ResponseDetails,
  GetSalesDashboard200Response,
  GetSalesDashboard200ResponseData,
  GetSalesMonths200Response,
  GetSalesYears200Response,
  HealthCheck,
  LoyalCustomer,
  MealPerformance,
  PaymentMode,
  RevenueShare,
  SalesAvgMealYearMonthGet200Response,
  SalesComparison,
  SalesComparisonYearTypeGet200Response,
  SalesPaymentMethodsGet200Response,
  SalesRevenueYearMonthGet200Response,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
