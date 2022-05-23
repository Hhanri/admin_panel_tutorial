import 'package:admin_panel_tutorial/constants/theme.dart';
import 'package:admin_panel_tutorial/controllers/menu_controller.dart';
import 'package:admin_panel_tutorial/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MenuController());
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
      home: const SiteLayout(),
    );
  }
}