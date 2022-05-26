import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/layout.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.offAll(() => const SiteLayout());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: active,
        ),
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: CustomTextWidget(text: "Log in", color: Colors.white),
      ),
    );
  }
}
