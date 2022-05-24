import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/pages/authenticatiom/authentication.dart';
import 'package:admin_panel_tutorial/pages/clients/clients.dart';
import 'package:admin_panel_tutorial/pages/drivers/drivers.dart';
import 'package:admin_panel_tutorial/pages/overview/overview.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case overviewPageRoute: return _getPageRoute(const OverviewPage());
    case clientsPageRoute: return _getPageRoute(const ClientsPage());
    case driversPageRoute: return _getPageRoute(const DriversPage());
    case authenticationPageRoute: return _getPageRoute(const AuthenticationPage());
    default: return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (BuildContext context) => Container(color: light, padding: const EdgeInsets.all(10), child: child)
  );
}