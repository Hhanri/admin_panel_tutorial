import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/widgets/horizontal_menu_item.dart';
import 'package:admin_panel_tutorial/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsivenessWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap,);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
