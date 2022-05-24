import 'package:flutter/material.dart';

class DashBoardLogoWidget extends StatelessWidget {
  const DashBoardLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      child: Image.asset("assets/logo/logo.png", width: 20,),
    );
  }
}
