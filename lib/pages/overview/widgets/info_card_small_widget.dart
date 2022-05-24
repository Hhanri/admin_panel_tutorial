import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class InfoCardSmallWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;
  const InfoCardSmallWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.topColor,
    required this.isActive,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: isActive ? active : lightGrey, width: 3)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(text: title, size: 24, color: isActive ? active : lightGrey, fontWeight: FontWeight.w300),
              CustomTextWidget(text: value, size: 24, color: isActive ? active : lightGrey, fontWeight: FontWeight.bold)
            ],
          ),
        ),
      ),
    );
  }
}
