import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/routing/router.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: overviewDisplayName,
  onGenerateRoute: generateRoute,
);