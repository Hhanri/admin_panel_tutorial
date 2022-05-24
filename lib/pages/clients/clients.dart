import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomTextWidget(
        text: "Clients",
        fontWeight: FontWeight.normal,
        size: 16,
        color: Colors.black,
      ),
    );
  }
}
