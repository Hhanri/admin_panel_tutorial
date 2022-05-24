import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomTextWidget(
        text: "Authentication",
        fontWeight: FontWeight.normal,
        size: 16,
        color: Colors.black,
      ),
    );
  }
}
