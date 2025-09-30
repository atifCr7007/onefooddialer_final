import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Activate a subscription plan
    //
    // Activates a subscription plan
    //
    //Future<CreateSubscriptionPlan201Response> activateSubscriptionPlan(int id) async
    test('test activateSubscriptionPlan', () async {
      // TODO
    });

    // Cancel a subscription
    //
    // Cancels a subscription
    //
    //Future<CreateSubscription201Response> cancelSubscription(int id, { CancelSubscriptionRequest cancelSubscriptionRequest }) async
    test('test cancelSubscription', () async {
      // TODO
    });

    // Create a new subscription
    //
    // Creates a new subscription
    //
    //Future<CreateSubscription201Response> createSubscription(SubscriptionInput subscriptionInput) async
    test('test createSubscription', () async {
      // TODO
    });

    // Create a new subscription plan
    //
    // Creates a new subscription plan
    //
    //Future<CreateSubscriptionPlan201Response> createSubscriptionPlan(SubscriptionPlanInput subscriptionPlanInput) async
    test('test createSubscriptionPlan', () async {
      // TODO
    });

    // Deactivate a subscription plan
    //
    // Deactivates a subscription plan
    //
    //Future<CreateSubscriptionPlan201Response> deactivateSubscriptionPlan(int id) async
    test('test deactivateSubscriptionPlan', () async {
      // TODO
    });

    // Delete a subscription
    //
    // Deletes a subscription
    //
    //Future<DeleteSubscriptionPlan200Response> deleteSubscription(int id) async
    test('test deleteSubscription', () async {
      // TODO
    });

    // Delete a subscription plan
    //
    // Deletes a subscription plan
    //
    //Future<DeleteSubscriptionPlan200Response> deleteSubscriptionPlan(int id) async
    test('test deleteSubscriptionPlan', () async {
      // TODO
    });

    // Get active customer subscriptions
    //
    // Returns active subscriptions for a customer
    //
    //Future<GetAllSubscriptions200Response> getActiveCustomerSubscriptions(int customerId) async
    test('test getActiveCustomerSubscriptions', () async {
      // TODO
    });

    // Get active subscription plans
    //
    // Returns a list of active subscription plans
    //
    //Future<GetAllSubscriptionPlans200Response> getActiveSubscriptionPlans() async
    test('test getActiveSubscriptionPlans', () async {
      // TODO
    });

    // Get all subscription plans
    //
    // Returns a list of all subscription plans
    //
    //Future<GetAllSubscriptionPlans200Response> getAllSubscriptionPlans({ bool status, String type, String showToCustomer, Date startDate, Date endDate }) async
    test('test getAllSubscriptionPlans', () async {
      // TODO
    });

    // Get all subscriptions
    //
    // Returns a list of all subscriptions
    //
    //Future<GetAllSubscriptions200Response> getAllSubscriptions({ String status, int customerId, int planId, Date startDate, Date endDate }) async
    test('test getAllSubscriptions', () async {
      // TODO
    });

    // Get customer subscriptions
    //
    // Returns subscriptions for a customer
    //
    //Future<GetAllSubscriptions200Response> getCustomerSubscriptions(int customerId, { String status, int planId }) async
    test('test getCustomerSubscriptions', () async {
      // TODO
    });

    // Get subscription plans visible to customers
    //
    // Returns a list of subscription plans visible to customers
    //
    //Future<GetAllSubscriptionPlans200Response> getCustomerVisibleSubscriptionPlans() async
    test('test getCustomerVisibleSubscriptionPlans', () async {
      // TODO
    });

    // Get a subscription by ID
    //
    // Returns a single subscription
    //
    //Future<GetSubscriptionById200Response> getSubscriptionById(int id) async
    test('test getSubscriptionById', () async {
      // TODO
    });

    // Get subscription logs
    //
    // Returns logs for a subscription
    //
    //Future<GetSubscriptionLogs200Response> getSubscriptionLogs(int id) async
    test('test getSubscriptionLogs', () async {
      // TODO
    });

    // Get a subscription plan by ID
    //
    // Returns a single subscription plan
    //
    //Future<GetSubscriptionPlanById200Response> getSubscriptionPlanById(int id) async
    test('test getSubscriptionPlanById', () async {
      // TODO
    });

    // Get subscription plans by type
    //
    // Returns a list of subscription plans of a specific type
    //
    //Future<GetAllSubscriptionPlans200Response> getSubscriptionPlansByType(String type) async
    test('test getSubscriptionPlansByType', () async {
      // TODO
    });

    // Pause a subscription
    //
    // Pauses a subscription
    //
    //Future<CreateSubscription201Response> pauseSubscription(int id, { PauseSubscriptionRequest pauseSubscriptionRequest }) async
    test('test pauseSubscription', () async {
      // TODO
    });

    // Process subscription payment
    //
    // Processes a payment for a subscription
    //
    //Future<CreateSubscription201Response> processSubscriptionPayment(int id, ProcessSubscriptionPaymentRequest processSubscriptionPaymentRequest) async
    test('test processSubscriptionPayment', () async {
      // TODO
    });

    // Renew a subscription
    //
    // Renews a subscription
    //
    //Future<CreateSubscription201Response> renewSubscription(int id, { RenewSubscriptionRequest renewSubscriptionRequest }) async
    test('test renewSubscription', () async {
      // TODO
    });

    // Resume a subscription
    //
    // Resumes a paused subscription
    //
    //Future<CreateSubscription201Response> resumeSubscription(int id) async
    test('test resumeSubscription', () async {
      // TODO
    });

    // Update a subscription
    //
    // Updates an existing subscription
    //
    //Future<CreateSubscription201Response> updateSubscription(int id, SubscriptionUpdateInput subscriptionUpdateInput) async
    test('test updateSubscription', () async {
      // TODO
    });

    // Update a subscription plan
    //
    // Updates an existing subscription plan
    //
    //Future<CreateSubscriptionPlan201Response> updateSubscriptionPlan(int id, SubscriptionPlanUpdateInput subscriptionPlanUpdateInput) async
    test('test updateSubscriptionPlan', () async {
      // TODO
    });

  });
}
