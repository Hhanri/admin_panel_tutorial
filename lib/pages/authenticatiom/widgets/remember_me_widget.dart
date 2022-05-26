import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class RememberMeForgotPassWordWidget extends StatelessWidget {
  const RememberMeForgotPassWordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    return Row(
      children: [
        StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Checkbox(
              value: checkBoxValue,
              onChanged: (newValue){
                setState(() {
                  checkBoxValue = newValue!;
                });
              }
            );
          }
        ),
        CustomTextWidget(text: "Remember Me"),
        const Spacer(),
        CustomTextWidget(text: "Forgot Password", color: active,),
      ],
    );
  }
}
