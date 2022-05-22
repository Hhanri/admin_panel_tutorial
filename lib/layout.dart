import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/widgets/app_bar_widget.dart';
import 'package:admin_panel_tutorial/widgets/large_screen_widget.dart';
import 'package:admin_panel_tutorial/widgets/small_screen_widget.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      appBar: topNavigationBar(context: context, key: scaffoldKey),
      body: const ResponsivenessWidget(
        largeScreenWidget: LargeScreenWidget(),
        mediumScreenWidget: LargeScreenWidget(),
        smallScreenWidget: SmallScreenWidget(),
      )
    );
  }
}
