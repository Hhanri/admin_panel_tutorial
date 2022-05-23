import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class TitleMenuItemWidget extends StatelessWidget {
  final bool condition;
  final String itemName;
  const TitleMenuItemWidget({
    Key? key,
    required this.condition,
    required this.itemName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: condition
      ? CustomTextWidget(
          text: itemName,
          color: menuController.isHovering(itemName) ? dark : lightGrey,
          size: 16,
          fontWeight: FontWeight.normal,
      )
      : CustomTextWidget(
          text: itemName,
          color: dark,
          size: 18,
          fontWeight: FontWeight.bold,
      ),
    );
  }
}
