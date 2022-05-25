import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  double size;
  Color color;
  FontWeight fontWeight;
  CustomTextWidget({
    Key? key,
    required this.text,
    this.size = 16,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
