import 'package:admin_panel_tutorial/pages/clients/widgets/clients_table_widget.dart';
import 'package:admin_panel_tutorial/widgets/page_title_widget.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageTitleWidget(),
        const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ClientsTableWidget()
              ],
            ),
          ),
        )
      ],
    );
  }
}
