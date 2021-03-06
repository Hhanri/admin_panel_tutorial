import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenuWidget extends StatelessWidget {
  const SideMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (ResponsivenessWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/logo/logo.png"),
                    ),
                    Flexible(
                      child: CustomTextWidget(
                        text: "Dashboard",
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: width / 48),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Divider(color: lightGrey.withOpacity(0.1)),
            Column(
              children: SideMenuItemModel.sideMenuItems.map((item) {
                return SideMenuItemWidget(
                  itemName: item.name,
                  onTap: () {
                    if (item.route == authenticationRoutePage) {
                      menuController.changeActiveItemTo(overviewDisplayName);
                      Get.offAllNamed(authenticationRoutePage);
                    }
                    if (!menuController.isActive(item.name)) {
                      menuController.changeActiveItemTo(item.name);
                      if (ResponsivenessWidget.isSmallScreen(context)) {
                        Get.back();
                      }
                      navigationController.navigateTo(item.route);
                    }
                  }
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
