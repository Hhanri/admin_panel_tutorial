import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:flutter/material.dart';

class RevenueInfoWidget extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfoWidget({
    Key? key,
    required this.title,
    required this.amount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "$title\n\n",
              style: TextStyle(color: lightGrey, fontSize: 16)
            ),
            TextSpan(
              text: "$amount\n",
              style: TextStyle(color: dark, fontSize: 24, fontWeight: FontWeight.bold)
            )
          ]
        ),
      ),
    );
  }
}
