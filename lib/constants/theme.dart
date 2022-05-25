import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme({required BuildContext context}) => ThemeData(
  scaffoldBackgroundColor: light,
  appBarTheme: const AppBarTheme(
    elevation: 0),
  textTheme: GoogleFonts.mulishTextTheme(
    Theme.of(context).textTheme
  ).apply(
    bodyColor: Colors.black
  ),
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
    }
  ),
  primaryColor: Colors.blue
);

BoxDecoration containerBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(8),
  boxShadow: [
    BoxShadow(
      offset: const Offset(0, 6),
      color: lightGrey.withOpacity(0.1),
      blurRadius: 12
    )
  ],
  border: Border.all(color: lightGrey, width: 0.5)
);