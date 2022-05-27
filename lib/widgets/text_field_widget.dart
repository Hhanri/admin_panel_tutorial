import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final GlobalKey<FormState> formKey;
  const TextFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.obscureText,
    required this.validator,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      onFieldSubmitted: (value) {
        if (formKey.currentState!.validate()) {
          Get.offAllNamed(rootRoute);
        }
      },
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
      ),
    );
  }
}
