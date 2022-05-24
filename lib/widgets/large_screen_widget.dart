import 'package:admin_panel_tutorial/helpers/local_navigator.dart';
import 'package:admin_panel_tutorial/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';

class LargeScreenWidget extends StatelessWidget {
  const LargeScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          flex: 1,
          child: SideMenuWidget()
        ),
        Expanded(
          flex: 5,
          child: localNavigator(),
        )
      ],
    );
  }
}
