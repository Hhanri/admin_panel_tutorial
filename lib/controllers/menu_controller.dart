import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  RxString activeItem = overviewDisplayName.obs;
  RxString hoverItem = "".obs;

  void changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  void onHoverItem(String itemName) {
    if (!isActive(itemName)){
      hoverItem.value = itemName;
    }
  }

  bool isActive(String itemName) {
    return activeItem.value == itemName;
  }

  bool isHovering(String itemName) {
    return hoverItem.value == itemName;
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewDisplayName: return _customIcon(icon: Icons.trending_up, itemName: itemName);
      case driversDisplayName: return _customIcon(icon: Icons.drive_eta, itemName: itemName);
      case clientsDisplayName: return _customIcon(icon: Icons.people_alt_outlined, itemName: itemName);
      case authenticationDisplayName: return _customIcon(icon: Icons.exit_to_app, itemName: itemName);
      default: return _customIcon(icon: Icons.exit_to_app, itemName: itemName);
    }
  }

  Widget _customIcon({required IconData icon, required String itemName}) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    } else {
      return Icon(
        icon,
        color: isHovering(itemName) ? dark : lightGrey,
      );
    }
  }
}