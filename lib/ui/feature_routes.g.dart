import 'package:go_router/go_router.dart';
import 'package:food_one/features/meals/list_page.dart';

List<RouteBase> generatedFeatureRoutes() => [
  GoRoute(path: '/features/meals', builder: (ctx, st) => MealsListPage()),
];
