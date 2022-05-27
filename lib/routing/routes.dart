const String rootRoute = "/home";

const String overviewDisplayName = "Overview";
const String overviewRoutePage = "/overview";

const String driversDisplayName = "Drivers";
const String driversRoutePage = "/drivers";

const String clientsDisplayName = "Clients";
const String clientsRoutePage = "/clients";

const String authenticationDisplayName = "Log Out";
const String authenticationRoutePage = "/authentication";

class SideMenuItemModel {
  final String name;
  final String route;

  SideMenuItemModel({
    required this.name,
    required this.route
  });

  static List<SideMenuItemModel> sideMenuItems = [
    SideMenuItemModel(name: overviewDisplayName, route: overviewRoutePage),
    SideMenuItemModel(name: driversDisplayName, route: driversRoutePage),
    SideMenuItemModel(name: clientsDisplayName, route: clientsRoutePage),
    SideMenuItemModel(name: authenticationDisplayName, route: authenticationRoutePage),
  ];
}

