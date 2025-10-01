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

  // Mock server URLs (localhost)
  static const String mockAuthUrl = 'http://localhost:8012';
  static const String mockCustomerUrl = 'http://localhost:8001';
  static const String mockOrderUrl = 'http://localhost:8002';
  static const String mockMealUrl = 'http://localhost:8003';
  static const String mockPaymentUrl = 'http://localhost:8004';
  static const String mockCatalogUrl = 'http://localhost:8005';
  static const String mockQuickServerUrl = 'http://localhost:8011';
  static const String mockSubscriptionUrl = 'http://localhost:8010';
  static const String mockKitchenUrl = 'http://localhost:8006';
  static const String mockDeliveryUrl = 'http://localhost:8007';
  static const String mockAnalyticsUrl = 'http://localhost:8008';
  static const String mockAdminUrl = 'http://localhost:8009';

  // Getters that return the appropriate URL based on configuration
  static String get authBaseUrl => useMockServers ? mockAuthUrl : productionAuthUrl;
  static String get customerBaseUrl => useMockServers ? mockCustomerUrl : productionCustomerUrl;
  static String get orderBaseUrl => useMockServers ? mockOrderUrl : productionOrderUrl;
  static String get mealBaseUrl => useMockServers ? mockMealUrl : productionMealUrl;
  static String get paymentBaseUrl => useMockServers ? mockPaymentUrl : productionPaymentUrl;
  static String get catalogBaseUrl => useMockServers ? mockCatalogUrl : productionCatalogUrl;
  static String get quickServerBaseUrl => useMockServers ? mockQuickServerUrl : productionQuickServerUrl;
  static String get subscriptionBaseUrl => useMockServers ? mockSubscriptionUrl : productionSubscriptionUrl;
  static String get kitchenBaseUrl => useMockServers ? mockKitchenUrl : productionKitchenUrl;
  static String get deliveryBaseUrl => useMockServers ? mockDeliveryUrl : productionDeliveryUrl;
  static String get analyticsBaseUrl => useMockServers ? mockAnalyticsUrl : productionAnalyticsUrl;
  static String get adminBaseUrl => useMockServers ? mockAdminUrl : productionAdminUrl;

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
    print('');
    print('═══════════════════════════════════════════════════════════');
    print('🔧 OneFoodDialer Configuration');
    print('═══════════════════════════════════════════════════════════');
    print('Environment: ${useMockServers ? 'MOCK (Development)' : 'PRODUCTION'}');
    print('Debug Mode: $isDebugMode');
    print('');
    print('API Base URLs:');
    print('  Auth:         $authBaseUrl');
    print('  Customer:     $customerBaseUrl');
    print('  Order:        $orderBaseUrl');
    print('  Meal:         $mealBaseUrl');
    print('  Payment:      $paymentBaseUrl');
    print('  Catalog:      $catalogBaseUrl');
    print('  QuickServer:  $quickServerBaseUrl');
    print('  Subscription: $subscriptionBaseUrl');
    print('  Kitchen:      $kitchenBaseUrl');
    print('  Delivery:     $deliveryBaseUrl');
    print('  Analytics:    $analyticsBaseUrl');
    print('  Admin:        $adminBaseUrl');
    print('');
    print('Timeouts:');
    print('  Connect:  ${connectTimeout.inSeconds}s');
    print('  Receive:  ${receiveTimeout.inSeconds}s');
    print('  Send:     ${sendTimeout.inSeconds}s');
    print('═══════════════════════════════════════════════════════════');
    print('');
    
    if (useMockServers) {
      print('⚠️  IMPORTANT: Mock servers must be running!');
      print('   Start all mock servers with:');
      print('   dart run lib/mock_server/start_all_mocks.dart');
      print('');
    }
  }

  // Validate configuration
  static bool validate() {
    if (useMockServers) {
      // In mock mode, just warn that servers should be running
      print('⚠️  Running in MOCK mode - ensure mock servers are started');
      return true;
    } else {
      // In production mode, validate URLs
      final urls = [
        authBaseUrl,
        customerBaseUrl,
        orderBaseUrl,
        mealBaseUrl,
        paymentBaseUrl,
        catalogBaseUrl,
        quickServerBaseUrl,
        subscriptionBaseUrl,
        kitchenBaseUrl,
        deliveryBaseUrl,
        analyticsBaseUrl,
        adminBaseUrl,
      ];

      for (final url in urls) {
        if (!url.startsWith('http://') && !url.startsWith('https://')) {
          print('❌ Invalid URL: $url');
          return false;
        }
      }

      print('✅ Configuration validated successfully');
      return true;
    }
  }
}

