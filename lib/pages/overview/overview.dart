import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomTextWidget(
        text: "Overview",
        fontWeight: FontWeight.normal,
        size: 16,
        color: Colors.black,
      ),
    );
  }
}
