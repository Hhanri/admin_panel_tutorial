import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/pages/authenticatiom/widgets/login_button_widget.dart';
import 'package:admin_panel_tutorial/pages/authenticatiom/widgets/no_credentials_widget.dart';
import 'package:admin_panel_tutorial/pages/authenticatiom/widgets/remember_me_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget spacer = SizedBox(height: 15);
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24),
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
                labelText: "eMail",
                hintText: "your-email@gmail.com",
                controller: emailController,
                obscureText: false,
              ),
              spacer,
              TextFieldWidget(
                labelText: "password",
                hintText: "Your Password",
                controller: passwordController,
                obscureText: true,
              ),
              spacer,
              const RememberMeForgotPassWordWidget(),
              spacer,
              const LoginButtonWidget(),
              spacer,
              const NoCredentialsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
