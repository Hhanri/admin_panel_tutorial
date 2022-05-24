import 'package:admin_panel_tutorial/widgets/page_title_widget.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PageTitleWidget()
      ],
    );
  }
}
