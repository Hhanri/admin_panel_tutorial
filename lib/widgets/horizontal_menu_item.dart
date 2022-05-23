import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/icon_menu_item_widget.dart';
import 'package:admin_panel_tutorial/widgets/notch_widget.dart';
import 'package:admin_panel_tutorial/widgets/title_menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
        ? menuController.onHoverItem(itemName)
        : menuController.onHoverItem("not hovering");
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovering(itemName) ? lightGrey.withOpacity(0.1) : Colors.transparent,
          child: Row(
            children: [
              NotchWidget(
                isVisible:menuController.isHovering(itemName) || menuController.isActive(itemName),
                width: 6,
                height: 40,
              ),
              SizedBox(width: width / 80),
              IconMenuItemWidget(itemName: itemName),
              TitleMenuItemWidget(
                condition: !menuController.isActive(itemName),
                itemName: itemName,
              )
            ],
          ),

        );
      }),
    );
  }
}
