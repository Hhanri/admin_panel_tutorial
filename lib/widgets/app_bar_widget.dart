import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/dashboard_logo_widget.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar({required BuildContext context, required GlobalKey<ScaffoldState> key}) =>
    AppBar(
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
      leading: !ResponsivenessWidget.isSmallScreen(context)
      ? const DashBoardLogoWidget()
      : Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)
          ),
        ],
      ),
      title: Visibility(
        visible: ResponsivenessWidget.isSmallScreen(context),
        child: CustomTextWidget(
          text: "Dashboard",
          color: lightGrey,
          size: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: dark.withOpacity(0.7),)
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: dark.withOpacity(0.7)),
                ),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light, width: 2)
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            const SizedBox(width: 24),
            CustomTextWidget(text: "Hanri", color: dark),
            const SizedBox(width: 16,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
