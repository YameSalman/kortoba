import 'package:flutter/material.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/presentation/routing/app_router.dart';
import '../../../../core/presentation/widgets/custom_appbar.dart';

class HomeShellAppBar extends StatelessWidget {
  const HomeShellAppBar({super.key});

  static const IList<String> _noAppBarLocations = IListConst([
    //const MapRoute().location,
  ]);

  static final IList<String> hasDrawerLocations = IListConst([
    const HomeRoute().location,
  ]);

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).routeLocation;

    /// Home Tab
    if (location == const HomeRoute().location) {
      return const CustomAppBar(
        centerTitle: true,
      );
    } else if (location.startsWith(const HomeRoute().location)) {
      return const CustomAppBar(
        centerTitle: true,
        hasBackButton: true,
      );
    }

    return const CustomAppBar(
      title: SizedBox(),
    );
  }
}

extension StatefulNavigationShellX on StatefulNavigationShell {
  bool get currentLocationHasAppBar {
    final location = shellRouteContext.routerState.routeLocation;
    return !HomeShellAppBar._noAppBarLocations.contains(location);
  }

  bool get currentLocationHasDrawer {
    final location = shellRouteContext.routerState.routeLocation;
    return HomeShellAppBar.hasDrawerLocations.contains(location);
  }
}
