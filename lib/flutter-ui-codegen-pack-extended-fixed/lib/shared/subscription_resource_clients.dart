import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:subscription_client/openapi.dart';

/// Subscription Resource Client
/// Handles all subscription and subscription plan API operations using the generated client
class SubscriptionResourceClient {
  final Dio http;
  final DefaultApi subscriptionApi;

  SubscriptionResourceClient(
    this.http,
    this.subscriptionApi,
  );

  // ========== Subscription API Endpoints ==========

  /// Get all subscriptions with optional filtering
  Future<GetAllSubscriptions200Response?> getAllSubscriptions({
    String? status,
    int? customerId,
    int? planId,
    Date? startDate,
    Date? endDate,
  }) async {
    try {
      final response = await subscriptionApi.getAllSubscriptions(
        status: status,
        customerId: customerId,
        planId: planId,
        startDate: startDate,
        endDate: endDate,
      );
      return response.data;
    } catch (e) {
      print('Error in get all subscriptions: $e');
      rethrow;
    }
  }

  /// Get subscription by ID
  Future<GetSubscriptionById200Response?> getSubscriptionById(int id) async {
    try {
      final response = await subscriptionApi.getSubscriptionById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get subscription by ID: $e');
      rethrow;
    }
  }

  /// Create a new subscription
  Future<CreateSubscription201Response?> createSubscription(SubscriptionInput subscriptionInput) async {
    try {
      final response = await subscriptionApi.createSubscription(subscriptionInput: subscriptionInput);
      return response.data;
    } catch (e) {
      print('Error in create subscription: $e');
      rethrow;
    }
  }

  /// Update a subscription
  Future<CreateSubscription201Response?> updateSubscription(int id, SubscriptionUpdateInput subscriptionUpdateInput) async {
    try {
      final response = await subscriptionApi.updateSubscription(
        id: id,
        subscriptionUpdateInput: subscriptionUpdateInput,
      );
      return response.data;
    } catch (e) {
      print('Error in update subscription: $e');
      rethrow;
    }
  }

  /// Delete a subscription
  Future<DeleteSubscriptionPlan200Response?> deleteSubscription(int id) async {
    try {
      final response = await subscriptionApi.deleteSubscription(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete subscription: $e');
      rethrow;
    }
  }

  /// Cancel a subscription
  Future<CreateSubscription201Response?> cancelSubscription(int id, CancelSubscriptionRequest cancelSubscriptionRequest) async {
    try {
      final response = await subscriptionApi.cancelSubscription(
        id: id,
        cancelSubscriptionRequest: cancelSubscriptionRequest,
      );
      return response.data;
    } catch (e) {
      print('Error in cancel subscription: $e');
      rethrow;
    }
  }

  /// Pause a subscription
  Future<CreateSubscription201Response?> pauseSubscription(int id, PauseSubscriptionRequest pauseSubscriptionRequest) async {
    try {
      final response = await subscriptionApi.pauseSubscription(
        id: id,
        pauseSubscriptionRequest: pauseSubscriptionRequest,
      );
      return response.data;
    } catch (e) {
      print('Error in pause subscription: $e');
      rethrow;
    }
  }

  /// Resume a subscription
  Future<CreateSubscription201Response?> resumeSubscription(int id) async {
    try {
      final response = await subscriptionApi.resumeSubscription(id: id);
      return response.data;
    } catch (e) {
      print('Error in resume subscription: $e');
      rethrow;
    }
  }

  /// Renew a subscription
  Future<CreateSubscription201Response?> renewSubscription(int id, RenewSubscriptionRequest renewSubscriptionRequest) async {
    try {
      final response = await subscriptionApi.renewSubscription(
        id: id,
        renewSubscriptionRequest: renewSubscriptionRequest,
      );
      return response.data;
    } catch (e) {
      print('Error in renew subscription: $e');
      rethrow;
    }
  }

  /// Process subscription payment
  Future<CreateSubscription201Response?> processSubscriptionPayment(int id, ProcessSubscriptionPaymentRequest processSubscriptionPaymentRequest) async {
    try {
      final response = await subscriptionApi.processSubscriptionPayment(
        id: id,
        processSubscriptionPaymentRequest: processSubscriptionPaymentRequest,
      );
      return response.data;
    } catch (e) {
      print('Error in process subscription payment: $e');
      rethrow;
    }
  }

  /// Get subscription logs
  Future<GetSubscriptionLogs200Response?> getSubscriptionLogs(int id) async {
    try {
      final response = await subscriptionApi.getSubscriptionLogs(id: id);
      return response.data;
    } catch (e) {
      print('Error in get subscription logs: $e');
      rethrow;
    }
  }

  /// Get customer subscriptions
  Future<GetAllSubscriptions200Response?> getCustomerSubscriptions(int customerId, {String? status, int? planId}) async {
    try {
      final response = await subscriptionApi.getCustomerSubscriptions(
        customerId: customerId,
        status: status,
        planId: planId,
      );
      return response.data;
    } catch (e) {
      print('Error in get customer subscriptions: $e');
      rethrow;
    }
  }

  /// Get active customer subscriptions
  Future<GetAllSubscriptions200Response?> getActiveCustomerSubscriptions(int customerId) async {
    try {
      final response = await subscriptionApi.getActiveCustomerSubscriptions(customerId: customerId);
      return response.data;
    } catch (e) {
      print('Error in get active customer subscriptions: $e');
      rethrow;
    }
  }

  // ========== Subscription Plan API Endpoints ==========

  /// Get all subscription plans
  Future<GetAllSubscriptionPlans200Response?> getAllSubscriptionPlans({
    bool? status,
    String? type,
    String? showToCustomer,
    Date? startDate,
    Date? endDate,
  }) async {
    try {
      final response = await subscriptionApi.getAllSubscriptionPlans(
        status: status,
        type: type,
        showToCustomer: showToCustomer,
        startDate: startDate,
        endDate: endDate,
      );
      return response.data;
    } catch (e) {
      print('Error in get all subscription plans: $e');
      rethrow;
    }
  }

  /// Get subscription plan by ID
  Future<GetSubscriptionPlanById200Response?> getSubscriptionPlanById(int id) async {
    try {
      final response = await subscriptionApi.getSubscriptionPlanById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get subscription plan by ID: $e');
      rethrow;
    }
  }

  /// Create a new subscription plan
  Future<CreateSubscriptionPlan201Response?> createSubscriptionPlan(SubscriptionPlanInput subscriptionPlanInput) async {
    try {
      final response = await subscriptionApi.createSubscriptionPlan(subscriptionPlanInput: subscriptionPlanInput);
      return response.data;
    } catch (e) {
      print('Error in create subscription plan: $e');
      rethrow;
    }
  }

  /// Update a subscription plan
  Future<CreateSubscriptionPlan201Response?> updateSubscriptionPlan(int id, SubscriptionPlanUpdateInput subscriptionPlanUpdateInput) async {
    try {
      final response = await subscriptionApi.updateSubscriptionPlan(
        id: id,
        subscriptionPlanUpdateInput: subscriptionPlanUpdateInput,
      );
      return response.data;
    } catch (e) {
      print('Error in update subscription plan: $e');
      rethrow;
    }
  }

  /// Delete a subscription plan
  Future<DeleteSubscriptionPlan200Response?> deleteSubscriptionPlan(int id) async {
    try {
      final response = await subscriptionApi.deleteSubscriptionPlan(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete subscription plan: $e');
      rethrow;
    }
  }

  /// Activate a subscription plan
  Future<CreateSubscriptionPlan201Response?> activateSubscriptionPlan(int id) async {
    try {
      final response = await subscriptionApi.activateSubscriptionPlan(id: id);
      return response.data;
    } catch (e) {
      print('Error in activate subscription plan: $e');
      rethrow;
    }
  }

  /// Deactivate a subscription plan
  Future<CreateSubscriptionPlan201Response?> deactivateSubscriptionPlan(int id) async {
    try {
      final response = await subscriptionApi.deactivateSubscriptionPlan(id: id);
      return response.data;
    } catch (e) {
      print('Error in deactivate subscription plan: $e');
      rethrow;
    }
  }

  /// Get active subscription plans
  Future<GetAllSubscriptionPlans200Response?> getActiveSubscriptionPlans() async {
    try {
      final response = await subscriptionApi.getActiveSubscriptionPlans();
      return response.data;
    } catch (e) {
      print('Error in get active subscription plans: $e');
      rethrow;
    }
  }

  /// Get customer visible subscription plans
  Future<GetAllSubscriptionPlans200Response?> getCustomerVisibleSubscriptionPlans() async {
    try {
      final response = await subscriptionApi.getCustomerVisibleSubscriptionPlans();
      return response.data;
    } catch (e) {
      print('Error in get customer visible subscription plans: $e');
      rethrow;
    }
  }

  /// Get subscription plans by type
  Future<GetAllSubscriptionPlans200Response?> getSubscriptionPlansByType(String type) async {
    try {
      final response = await subscriptionApi.getSubscriptionPlansByType(type: type);
      return response.data;
    } catch (e) {
      print('Error in get subscription plans by type: $e');
      rethrow;
    }
  }
}

/// Factory function for creating subscription resource client
SubscriptionResourceClient createSubscriptionClient(Dio dio, Serializers serializers) {
  final subscriptionApi = DefaultApi(dio, serializers);

  return SubscriptionResourceClient(
    dio,
    subscriptionApi,
  );
}

