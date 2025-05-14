import 'package:flutter/material.dart';
import 'package:easy_sidemenu/src/side_menu_display_mode.dart';
import 'package:easy_sidemenu/src/side_menu_controller.dart';

class SideMenuItem {
  final String? title;
  final void Function(String index, SideMenuController sideMenuController)? onTap;
  final Icon? icon;
  final Widget? iconWidget;
  final Widget? badgeContent;
  final Color? badgeColor;
  final String? tooltipContent;
  final String? page;
  final Widget? trailing;

  final Widget Function(BuildContext context, SideMenuDisplayMode displayMode)?
      builder;
  const SideMenuItem({
    this.onTap,
    this.title,
    this.icon,
    this.page,
    this.iconWidget,
    this.badgeContent,
    this.badgeColor,
    this.tooltipContent,
    this.trailing,
    this.builder,
  })  : assert(title != null || icon != null || builder != null,
            'Title, icon and builder should not be empty at the same time'),
        super();
}
