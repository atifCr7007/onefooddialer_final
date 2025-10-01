import 'package:go_router/go_router.dart';
import 'package:food_one/features/subscription plans/list_page.dart';
import 'package:food_one/features/subscriptions/list_page.dart';

List<RouteBase> generatedFeatureRoutes() => [
  GoRoute(path: '/features/subscription plans', builder: (ctx, st) => SubscriptionPlansListPage()),
  GoRoute(path: '/features/subscriptions', builder: (ctx, st) => SubscriptionsListPage()),
];
