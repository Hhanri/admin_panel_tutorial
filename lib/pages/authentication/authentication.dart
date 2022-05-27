import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/pages/authentication/widgets/login_button_widget.dart';
import 'package:admin_panel_tutorial/pages/authentication/widgets/no_credentials_widget.dart';
import 'package:admin_panel_tutorial/pages/authentication/widgets/remember_me_widget.dart';
import 'package:admin_panel_tutorial/routing/routes.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    const Widget spacer = SizedBox(height: 15);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    emailController.text = "";
    passwordController.text = "";
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/logo/logo.png"),
                    ),
                    const Spacer()
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "Login",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                CustomTextWidget(text: "Welcome Back to the admin panel", color: lightGrey,),
                spacer,
                TextFieldWidget(
                  formKey: formKey,
                  labelText: "eMail",
                  hintText: "your-email@gmail.com",
                  controller: emailController,
                  obscureText: false,
                  validator: (value) {
                    if (!value!.isEmail) {
                      return "Not email format";
                    }
                    return null;
                  },
                ),
                spacer,
                TextFieldWidget(
                  formKey: formKey,
                  labelText: "password",
                  hintText: "Your Password",
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (!value!.isNotEmpty) {
                      return "Please enter password";
                    }
                    return null;
                  },
                ),
                spacer,
                const RememberMeForgotPassWordWidget(),
                spacer,
                LoginButtonWidget(
                  formKey: formKey,
                ),
                spacer,
                const NoCredentialsWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
