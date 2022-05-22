import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme({required BuildContext context}) => ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
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