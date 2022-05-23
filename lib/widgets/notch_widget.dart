import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:flutter/material.dart';

class NotchWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool isVisible;
  const NotchWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.isVisible
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      maintainAnimation: true,
      maintainSize: true,
      maintainState: true,
      child: Container(
        width: width,
        height: height,
        color: dark,
      ),
    );
  }
}
