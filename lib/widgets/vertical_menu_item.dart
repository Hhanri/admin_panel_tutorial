import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/icon_menu_item_widget.dart';
import 'package:admin_panel_tutorial/widgets/notch_widget.dart';
import 'package:admin_panel_tutorial/widgets/title_menu_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const VerticalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                width: 3,
                height: 72,
                isVisible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconMenuItemWidget(
                      itemName: itemName
                    ),
                    TitleMenuItemWidget(
                      condition: !menuController.isActive(itemName),
                      itemName: itemName,
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
