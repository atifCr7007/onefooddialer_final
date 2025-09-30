import 'package:go_router/go_router.dart';
import 'package:food_one/features/health/list_page.dart';
import 'package:food_one/features/kitchens/list_page.dart';
import 'package:food_one/features/recipes/details_page.dart';
import 'package:food_one/features/kitchen masters/list_page.dart';
import 'package:food_one/features/integration/list_page.dart';

List<RouteBase> generatedFeatureRoutes() => [
  GoRoute(path: '/features/health', builder: (ctx, st) => const HealthListPage()),
  GoRoute(path: '/features/kitchens', builder: (ctx, st) => const KitchensListPage()),
  GoRoute(path: '/features/recipes/:id', builder: (ctx, st) => RecipesDetailsPage(id: int.parse(st.pathParameters['id']!))),
  GoRoute(path: '/features/kitchen-masters', builder: (ctx, st) => const KitchenMastersListPage()),
  GoRoute(path: '/features/integration', builder: (ctx, st) => const IntegrationListPage()),
];
