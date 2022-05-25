import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:flutter/material.dart';

class HorizontalDividerWidget extends StatelessWidget {
  final double width;
  const HorizontalDividerWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 2,
      color: lightGrey,
    );
  }
}

class VerticalDividerWidget extends StatelessWidget {
  final double height;
  const VerticalDividerWidget({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: height,
      color: lightGrey,
    );
  }
}
