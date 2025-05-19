import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/widgets.dart';
import '../side_menu_item_with_global.dart';

class Global {
  late SideMenuController controller;
  late SideMenuStyle style;
  DisplayModeNotifier displayModeState =
      DisplayModeNotifier(SideMenuDisplayMode.auto);
  bool showTrailing = true;
  List<Function> itemsUpdate = [];
  List items = [];
  List<SideMenuItemWithGlobal> bottomItems = [];
  List<bool> expansionStateList = [];
}

class DisplayModeNotifier extends ValueNotifier<SideMenuDisplayMode> {
  DisplayModeNotifier(SideMenuDisplayMode value) : super(value);

  void change(SideMenuDisplayMode mode) {
    if (value != mode) {
      value = mode;
      notifyListeners();
    }
  }
}
