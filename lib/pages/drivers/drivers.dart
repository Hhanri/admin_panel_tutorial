import 'package:admin_panel_tutorial/widgets/available_drivers_table/available_drivers_table_widget.dart';
import 'package:admin_panel_tutorial/widgets/page_title_widget.dart';
import 'package:flutter/material.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PageTitleWidget(),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                AvailableDriversTableWidget()
              ],
            ),
          ),
        )
      ],
    );
  }
}
