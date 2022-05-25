import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/constants/theme.dart';
import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final VoidCallback onTap;
  const InfoCardWidget({
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
          alignment: Alignment.center,
          height: 110,
          decoration: containerBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container(color: topColor, height: 5)),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 4,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n",
                        style: TextStyle(
                          fontSize: 16,
                          color: isActive ? active : lightGrey
                        )
                      ),
                      TextSpan(
                        text: value,
                        style: TextStyle(
                          fontSize: 40,
                          color: isActive ? active : lightGrey
                        )
                      )
                    ]
                  )
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
