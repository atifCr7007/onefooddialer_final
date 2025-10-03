import 'dart:developer';

/// Global application configuration
/// Controls API base URLs and mock server usage
class AppConfig {
  // Environment variables with defaults
  static const bool useMockServers = bool.fromEnvironment(
    'USE_MOCK_SERVERS',
    defaultValue: true, // Default to mock for development
  );

  // Base URLs for production
  static const String productionAuthUrl = String.fromEnvironment(
    'PROD_AUTH_URL',
    defaultValue: 'https://api.onefood.com/auth',
  );

  static const String productionCustomerUrl = String.fromEnvironment(
    'PROD_CUSTOMER_URL',
    defaultValue: 'https://api.onefood.com/v2/customer-service-v12',
  );

  static const String productionOrderUrl = String.fromEnvironment(
    'PROD_ORDER_URL',
    defaultValue: 'https://api.onefood.com/v2/order-service-v12',
  );

  static const String productionMealUrl = String.fromEnvironment(
    'PROD_MEAL_URL',
    defaultValue: 'https://api.onefood.com/v2/meal-service-v12',
  );

  static const String productionPaymentUrl = String.fromEnvironment(
    'PROD_PAYMENT_URL',
    defaultValue: 'https://api.onefood.com/v2/payment-service-v12',
  );

  static const String productionCatalogUrl = String.fromEnvironment(
    'PROD_CATALOG_URL',
    defaultValue: 'https://api.onefood.com/v2/catalog-service-v12',
  );

  static const String productionQuickServerUrl = String.fromEnvironment(
    'PROD_QUICKSERVER_URL',
    defaultValue: 'https://api.onefood.com/api/v1',
  );

  static const String productionSubscriptionUrl = String.fromEnvironment(
    'PROD_SUBSCRIPTION_URL',
    defaultValue: 'https://api.onefood.com/api/v2',
  );

  static const String productionKitchenUrl = String.fromEnvironment(
    'PROD_KITCHEN_URL',
    defaultValue: 'https://api.onefood.com/v2/kitchen-service-v12',
  );

  static const String productionDeliveryUrl = String.fromEnvironment(
    'PROD_DELIVERY_URL',
    defaultValue: 'https://api.onefood.com/v2/delivery-service-v12',
  );

  static const String productionAnalyticsUrl = String.fromEnvironment(
    'PROD_ANALYTICS_URL',
    defaultValue: 'https://api.onefood.com/v2/analytics-service-v12',
  );

  static const String productionAdminUrl = String.fromEnvironment(
    'PROD_ADMIN_URL',
    defaultValue: 'https://api.onefood.com/v2/admin-service-v12',
  );

  static const String productionInvoiceUrl = String.fromEnvironment(
    'PROD_INVOICE_URL',
    defaultValue: 'https://api.onefood.com/v2/invoice-service-v12',
  );

  // Mock server URLs (Prism Mock Servers - localhost)
  // These ports match the Prism mock servers started in contract/start-prism-servers.sh
  static const String mockAdminUrl = 'http://localhost:4010';
  static const String mockAnalyticsUrl = 'http://localhost:4011';
  static const String mockAuthUrl = 'http://localhost:4012';
  static const String mockCatalogUrl = 'http://localhost:4013';
  static const String mockCustomerUrl = 'http://localhost:4014';
  static const String mockDeliveryUrl = 'http://localhost:4015';
  static const String mockInvoiceUrl = 'http://localhost:4016';
  static const String mockKitchenUrl = 'http://localhost:4017';
  static const String mockMealUrl = 'http://localhost:4018';
  static const String mockOrderUrl = 'http://localhost:4019';
  static const String mockPaymentUrl = 'http://localhost:4020';
  static const String mockQuickServerUrl = 'http://localhost:4021';
  static const String mockSubscriptionUrl = 'http://localhost:4022';

  // Getters that return the appropriate URL based on configuration
  static String get adminBaseUrl => useMockServers ? mockAdminUrl : productionAdminUrl;
  static String get analyticsBaseUrl => useMockServers ? mockAnalyticsUrl : productionAnalyticsUrl;
  static String get authBaseUrl => useMockServers ? mockAuthUrl : productionAuthUrl;
  static String get catalogBaseUrl => useMockServers ? mockCatalogUrl : productionCatalogUrl;
  static String get customerBaseUrl => useMockServers ? mockCustomerUrl : productionCustomerUrl;
  static String get deliveryBaseUrl => useMockServers ? mockDeliveryUrl : productionDeliveryUrl;
  static String get invoiceBaseUrl => useMockServers ? mockInvoiceUrl : productionInvoiceUrl;
  static String get kitchenBaseUrl => useMockServers ? mockKitchenUrl : productionKitchenUrl;
  static String get mealBaseUrl => useMockServers ? mockMealUrl : productionMealUrl;
  static String get orderBaseUrl => useMockServers ? mockOrderUrl : productionOrderUrl;
  static String get paymentBaseUrl => useMockServers ? mockPaymentUrl : productionPaymentUrl;
  static String get quickServerBaseUrl => useMockServers ? mockQuickServerUrl : productionQuickServerUrl;
  static String get subscriptionBaseUrl => useMockServers ? mockSubscriptionUrl : productionSubscriptionUrl;

  // API timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Debug mode
  static const bool isDebugMode = bool.fromEnvironment(
    'DEBUG_MODE',
    defaultValue: true,
  );

  // Print configuration summary
  static void printConfig() {
    log('');
    log('═══════════════════════════════════════════════════════════');
    log('🔧 OneFoodDialer Configuration');
    log('═══════════════════════════════════════════════════════════');
    log('Environment: ${useMockServers ? 'MOCK (Development)' : 'PRODUCTION'}');
    log('Debug Mode: $isDebugMode');
    log('');
    log('API Base URLs:');
    log('  Admin:        $adminBaseUrl');
    log('  Analytics:    $analyticsBaseUrl');
    log('  Auth:         $authBaseUrl');
    log('  Catalog:      $catalogBaseUrl');
    log('  Customer:     $customerBaseUrl');
    log('  Delivery:     $deliveryBaseUrl');
    log('  Invoice:      $invoiceBaseUrl');
    log('  Kitchen:      $kitchenBaseUrl');
    log('  Meal:         $mealBaseUrl');
    log('  Order:        $orderBaseUrl');
    log('  Payment:      $paymentBaseUrl');
    log('  QuickServer:  $quickServerBaseUrl');
    log('  Subscription: $subscriptionBaseUrl');
    log('');
    log('Timeouts:');
    log('  Connect:  ${connectTimeout.inSeconds}s');
    log('  Receive:  ${receiveTimeout.inSeconds}s');
    log('  Send:     ${sendTimeout.inSeconds}s');
    log('═══════════════════════════════════════════════════════════');
    log('');
    
    if (useMockServers) {
      log('⚠️  IMPORTANT: Prism mock servers must be running!');
      log('   Start all Prism mock servers with:');
      log('   cd contract && ./start-prism-servers.sh');
      log('   Or check status: ./check-prism-servers.sh');
      log('');
    }
  }

  // Validate configuration
  static bool validate() {
    if (useMockServers) {
      // In mock mode, just warn that servers should be running
      log('⚠️  Running in MOCK mode - ensure mock servers are started');
      return true;
    } else {
      // In production mode, validate URLs
      final urls = [
        adminBaseUrl,
        analyticsBaseUrl,
        authBaseUrl,
        catalogBaseUrl,
        customerBaseUrl,
        deliveryBaseUrl,
        invoiceBaseUrl,
        kitchenBaseUrl,
        mealBaseUrl,
        orderBaseUrl,
        paymentBaseUrl,
        quickServerBaseUrl,
        subscriptionBaseUrl,
      ];

      for (final url in urls) {
        if (!url.startsWith('http://') && !url.startsWith('https://')) {
          log('❌ Invalid URL: $url');
          return false;
        }
      }

      log('✅ Configuration validated successfully');
      return true;
    }
  }
}

