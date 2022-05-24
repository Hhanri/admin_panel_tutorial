import 'package:admin_panel_tutorial/constants/controllers.dart';
import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: ResponsivenessWidget.isSmallScreen(context) ? 56 : 6, left: 20),
          child: CustomTextWidget(
            text: menuController.activeItem.value,
            size: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        )
      ],
    ));
  }
}
