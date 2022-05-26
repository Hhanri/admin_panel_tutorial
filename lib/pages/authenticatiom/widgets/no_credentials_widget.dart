import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:flutter/material.dart';

class NoCredentialsWidget extends StatelessWidget {
  const NoCredentialsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: "Don't have admin credentials?"),
          TextSpan(text: "Request credentials!", style: TextStyle(color: active))
        ]
      ),
    );
  }
}
