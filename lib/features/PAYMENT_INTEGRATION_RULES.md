# Payment Microservice Integration Rules

## Overview
This document outlines the integration pattern for the Payment microservice in the OneFoodDialer admin application.

## Architecture

### API Client Structure
The Payment microservice has **TWO** API classes:
1. **PaymentsApi** - Handles payment transactions, processing, refunds, statistics, and logs
2. **PaymentMethodsApi** - Handles customer payment method management

### Resource Client Location
- **File**: `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/payment_resource_clients.dart`
- **Class**: `PaymentResourceClient`
- **Factory**: `createPaymentClient(Dio dio, Serializers serializers)`

## API Endpoints

### PaymentsApi Endpoints

#### 1. Initiate Payment
- **Method**: `initiatePayment(InitiatePaymentRequest request)`
- **HTTP**: `POST /payments`
- **Returns**: `InitiatePaymentResponse?`
- **Purpose**: Create a new payment transaction

#### 2. Get Payment Status
- **Method**: `getPaymentStatus(int transactionId)`
- **HTTP**: `GET /payments/{id}`
- **Returns**: `PaymentStatusResponse?`
- **Purpose**: Get the status of a payment transaction

#### 3. Process Payment
- **Method**: `processPayment(int transactionId, ProcessPaymentRequest request)`
- **HTTP**: `POST /payments/{id}/process`
- **Returns**: `ProcessPaymentResponse?`
- **Purpose**: Process a payment with a specific gateway

#### 4. Refund Payment
- **Method**: `refundPayment(int transactionId, {RefundPaymentRequest? request})`
- **HTTP**: `POST /payments/{id}/refund`
- **Returns**: `RefundPaymentResponse?`
- **Purpose**: Refund a completed payment

#### 5. Get Payment Logs
- **Method**: `getPaymentLogs({...filters})`
- **HTTP**: `GET /payments/logs`
- **Returns**: `LogsResponse?`
- **Purpose**: Get payment transaction logs with filtering

#### 6. Get Transaction Logs
- **Method**: `getTransactionLogs(int transactionId)`
- **HTTP**: `GET /payments/{id}/logs`
- **Returns**: `LogsResponse?`
- **Purpose**: Get logs for a specific transaction

#### 7. Get Payment Statistics
- **Method**: `getPaymentStatistics({...filters})`
- **HTTP**: `GET /payments/statistics`
- **Returns**: `StatisticsResponse?`
- **Purpose**: Get payment transaction statistics

#### 8. Payment Callback
- **Method**: `paymentCallback(Map<String, dynamic> callbackData)`
- **HTTP**: `POST /payments/callback`
- **Returns**: `PaymentCallbackResponse?`
- **Purpose**: Handle callback from payment gateway

#### 9. Payment Webhook
- **Method**: `paymentWebhook(String gateway, Map<String, dynamic> webhookData)`
- **HTTP**: `POST /payments/webhooks/{gateway}`
- **Returns**: `WebhookResponse?`
- **Purpose**: Handle payment gateway webhooks

### PaymentMethodsApi Endpoints

#### 1. Get Customer Payment Methods
- **Method**: `getCustomerPaymentMethods(int customerId, {bool? activeOnly})`
- **HTTP**: `GET /payment-methods/customer/{customerId}`
- **Returns**: `PaymentMethodsResponse?`
- **Purpose**: Get all payment methods for a customer

#### 2. Get Payment Method
- **Method**: `getPaymentMethod(int methodId, {int? customerId})`
- **HTTP**: `GET /payment-methods/{id}`
- **Returns**: `PaymentMethodResponse?`
- **Purpose**: Get a specific payment method

#### 3. Create Payment Method
- **Method**: `createPaymentMethod(CreatePaymentMethodRequest request)`
- **HTTP**: `POST /payment-methods`
- **Returns**: `PaymentMethodResponse?`
- **Purpose**: Create a new payment method

#### 4. Update Payment Method
- **Method**: `updatePaymentMethod(int methodId, UpdatePaymentMethodRequest request, {int? customerId})`
- **HTTP**: `PUT /payment-methods/{id}`
- **Returns**: `PaymentMethodResponse?`
- **Purpose**: Update a payment method

#### 5. Delete Payment Method
- **Method**: `deletePaymentMethod(int methodId, {int? customerId})`
- **HTTP**: `DELETE /payment-methods/{id}`
- **Returns**: `DeleteResponse?`
- **Purpose**: Delete a payment method

#### 6. Set Default Payment Method
- **Method**: `setDefaultPaymentMethod(int methodId, {int? customerId})`
- **HTTP**: `PUT /payment-methods/{id}/default`
- **Returns**: `PaymentMethodResponse?`
- **Purpose**: Set a payment method as default

## Mock Server

### Location
- **File**: `lib/mock_server/payment_mock_server.dart`
- **Port**: `8008`
- **Base URL**: `http://localhost:8008/api/v1`

### Running the Mock Server
```bash
dart run lib/mock_server/payment_mock_server.dart
```

### Mock Data
The server includes:
- 3 sample payment transactions (completed, pending, failed)
- 3 sample payment methods (2 cards, 1 PayPal)
- Full CRUD operations for both payments and payment methods
- Statistics and logging endpoints

## Generated UI

### Features Generated
1. **Payments** (`lib/features/payments/`)
   - `list_page.dart` - List all payment transactions
   - `details_page.dart` - View payment transaction details
   - `form_page.dart` - Create/edit payment transactions
   - `providers.dart` - Riverpod state management

2. **Payment Methods** (`lib/features/payment methods/`)
   - `list_page.dart` - List customer payment methods
   - `details_page.dart` - View payment method details
   - `form_page.dart` - Create/edit payment methods
   - `providers.dart` - Riverpod state management

### Routes
Generated routes in `lib/ui/feature_routes.g.dart`:
- `/features/payments` → PaymentsListPage
- `/features/payment methods` → PaymentMethodsListPage

## Integration Checklist

- [x] Payment resource client created with all API methods
- [x] Mock server created on port 8008
- [x] UI generated for Payments feature
- [x] UI generated for Payment Methods feature
- [x] Routes generated in feature_routes.g.dart
- [ ] Providers updated to use PaymentResourceClient
- [ ] Admin sidebar navigation configured
- [ ] Mock server tested with all endpoints
- [ ] UI tested with mock server
- [ ] Error handling verified
- [ ] Loading states verified

## Next Steps

1. **Update Providers**: Modify the generated providers to use `PaymentResourceClient` instead of generic `ResourceClient`
2. **Admin Navigation**: Add Payment menu items to the admin sidebar
3. **Test Integration**: Start mock server and verify all CRUD operations work
4. **Verify UI**: Test all payment and payment method screens
5. **Error Handling**: Ensure proper error messages and loading states

## Usage Example

```dart
// Create payment client
final dio = Dio(BaseOptions(baseUrl: 'http://localhost:8008/api/v1'));
final serializers = standardSerializers;
final paymentClient = createPaymentClient(dio, serializers);

// Initiate a payment
final request = InitiatePaymentRequest((b) => b
  ..customerId = 1
  ..orderId = 101
  ..amount = 150.00
  ..gateway = 'stripe'
  ..paymentMethodId = 1
);

final response = await paymentClient.initiatePayment(request);
print('Transaction ID: ${response?.data?.transactionId}');

// Get payment status
final status = await paymentClient.getPaymentStatus(1);
print('Status: ${status?.data?.status}');

// Get customer payment methods
final methods = await paymentClient.getCustomerPaymentMethods(1);
print('Payment methods: ${methods?.data?.length}');
```

## Important Notes

1. **ID Types**: All IDs are `int` type (transaction IDs, payment method IDs, customer IDs)
2. **Error Handling**: All methods include try-catch blocks with error logging
3. **Null Safety**: All response types are nullable (`?`)
4. **Two API Classes**: Remember to use both PaymentsApi and PaymentMethodsApi
5. **Authentication**: All endpoints require bearer token authentication
6. **Gateway Support**: Supports multiple payment gateways (Stripe, PayPal, etc.)

## Testing

### Test Payment Flow
1. Start mock server: `dart run lib/mock_server/payment_mock_server.dart`
2. Navigate to `/features/payments`
3. Create a new payment transaction
4. Process the payment
5. View payment status and logs
6. Test refund functionality

### Test Payment Methods Flow
1. Navigate to `/features/payment methods`
2. Create a new payment method
3. Set as default
4. Update payment method details
5. Delete payment method

## Troubleshooting

- **Import Errors**: Ensure `payment_client` is in pubspec.yaml dependencies
- **Type Errors**: Verify ID types are `int` not `String`
- **Null Errors**: Check for null safety with `?` operators
- **404 Errors**: Verify mock server is running on port 8008
- **CORS Errors**: Mock server includes CORS headers for all requests

