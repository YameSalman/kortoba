part of '../app_router.dart';

@TypedStatefulShellRoute<HomeShellRouteData>(
  branches: [
    TypedStatefulShellBranch<HomeBranchData>(
      routes: HomeRoute.routes,
    ),
  ],
)
class HomeShellRouteData extends StatefulShellRouteData {
  const HomeShellRouteData();

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return FadeTransitionPage(
      state.pageKey,
      // Return the widget that implements the custom shell.
      // The StatefulNavigationShell is passed to be able access the state
      // of the shell and to navigate to other branches in a stateful way.
      HomeShellScreen(navigationShell: navigationShell),
    );
  }

  static const String $restorationScopeId = 'home_shell';
}

// Each separate stateful navigation tree (a Navigator) is represented by
// a StatefulShellBranch, which defines the routes that will be placed on that
// Navigator. StatefulShellBranch also makes it possible to configure things like:
// - an (optional) Navigator key. It isn't necessary to provide a navigatorKey
//   if it isn't needed elsewhere. If not provided, a default key will be used.
// - a default location (i.e. the location the branch will be navigated
//   to when loading it for the first time) etc.
class HomeBranchData extends StatefulShellBranchData {
  const HomeBranchData();

  static const String $restorationScopeId = 'home_branch';
}

class UnitsBranchData extends StatefulShellBranchData {
  const UnitsBranchData();

  static const String $restorationScopeId = 'units_branch';
}

class MeasurementBranchData extends StatefulShellBranchData {
  const MeasurementBranchData();

  static const String $restorationScopeId = 'measurement_branch';
}

class SystemsBranchData extends StatefulShellBranchData {
  const SystemsBranchData();

  static const String $restorationScopeId = 'systems_branch';
}

class ProfileBranchData extends StatefulShellBranchData {
  const ProfileBranchData();

  static const String $restorationScopeId = 'profile_branch';
}
