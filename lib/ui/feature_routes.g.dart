import 'package:go_router/go_router.dart';
import 'package:food_one/features/payments/list_page.dart';
import 'package:food_one/features/payment methods/list_page.dart';

List<RouteBase> generatedFeatureRoutes() => [
  GoRoute(path: '/features/payments', builder: (ctx, st) => PaymentsListPage()),
  GoRoute(path: '/features/payment methods', builder: (ctx, st) => PaymentMethodsListPage()),
];
