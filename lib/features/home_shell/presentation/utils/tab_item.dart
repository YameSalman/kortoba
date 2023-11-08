import 'package:flutter/material.dart';
import '../../../../core/presentation/styles/styles.dart';
import '../../../../core/presentation/widgets/platform_widgets/platform_icons.dart';

enum TabItem {
  home,
  cateogries,
  favourites,
  profile;

  const TabItem();

  Widget getTabItemIcon(BuildContext context) {
    return _getTabIcon(context, _getTabIconData(context));
  }

  Widget getTabItemSelectedIcon(BuildContext context) {
    return _getTabIcon(context, _getTabIconData(context), isSelected: true);
  }

  IconData _getTabIconData(BuildContext context) {
    return switch (this) {
      TabItem.home => AppPlatformIcons.platformIcons(context).home,
      TabItem.cateogries =>
        AppPlatformIcons.platformIcons(context).settingsSolid,
      TabItem.favourites =>
        AppPlatformIcons.platformIcons(context).settingsSolid,
      TabItem.profile =>
        AppPlatformIcons.platformIcons(context).accountCircleSolid,
    };
  }

  Widget _getTabIcon(
    BuildContext context,
    IconData? icon, {
    bool isSelected = false,
  }) {
    return Icon(
      icon,
      size: Sizes.navBarIconR22,
      color: isSelected ? Theme.of(context).colorScheme.primary : null,
    );
  }

  String getTabItemLabel(BuildContext context) {
    return switch (this) {
      TabItem.home => 'home',
      TabItem.favourites => 'favourites',
      TabItem.cateogries => 'cateogries',
      TabItem.profile => 'profile',
    };
  }
}
