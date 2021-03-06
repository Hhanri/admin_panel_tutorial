import 'package:admin_panel_tutorial/constants/theme.dart';
import 'package:admin_panel_tutorial/controllers/menu_controller.dart';
import 'package:admin_panel_tutorial/controllers/navigation_controller.dart';
import 'package:admin_panel_tutorial/layout.dart';
import 'package:admin_panel_tutorial/pages/authentication/authentication.dart';
import 'package:admin_panel_tutorial/pages/error/error.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Admin Panel',
      debugShowCheckedModeBanner: false,
      theme: theme(context: context),
      initialRoute: authenticationRoutePage,
      getPages: [
        GetPage(name: rootRoute, page: () => const SiteLayout()),
        GetPage(name: authenticationRoutePage, page: () => const AuthenticationPage()),
      ],
      unknownRoute: GetPage(name: "/not-found", page: () => const ErrorPage(), transition: Transition.fadeIn),
    );
  }
}