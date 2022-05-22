import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/widgets/large_screen_widget.dart';
import 'package:admin_panel_tutorial/widgets/small_screen_widget.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResponsivenessWidget(
        largeScreenWidget: LargeScreenWidget(),
        mediumScreenWidget: LargeScreenWidget(),
        smallScreenWidget: SmallScreenWidget(),
      )
    );
  }
}
