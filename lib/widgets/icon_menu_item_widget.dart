import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:flutter/material.dart';

class IconMenuItemWidget extends StatelessWidget {
  final String itemName;
  const IconMenuItemWidget({
    Key? key,
    required this.itemName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding = EdgeInsets.all(10);
    return Padding(
      padding: padding,
      child: menuController.returnIconFor(itemName),
    );
  }
}
