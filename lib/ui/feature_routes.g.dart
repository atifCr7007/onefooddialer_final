import 'package:go_router/go_router.dart';
import 'package:food_one/features/customers/list_page.dart';
import 'package:food_one/features/customer addresses/list_page.dart';

List<RouteBase> generatedFeatureRoutes() => [
  GoRoute(path: '/features/customers', builder: (ctx, st) => CustomersListPage()),
  GoRoute(path: '/features/customer addresses', builder: (ctx, st) => CustomerAddressesListPage()),
];
