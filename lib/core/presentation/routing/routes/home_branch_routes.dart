part of '../app_router.dart';

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const routes = [
    TypedGoRoute<HomeRoute>(
      path: '/home',
    ),
  ];

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
