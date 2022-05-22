import 'package:flutter/material.dart';

const int largeScreenSize = 1336;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;

class ResponsivenessWidget extends StatelessWidget {
  final Widget largeScreenWidget;
  final Widget mediumScreenWidget;
  final Widget smallScreenWidget;
  const ResponsivenessWidget({
    Key? key,
    required this.largeScreenWidget,
    required this.mediumScreenWidget,
    required this.smallScreenWidget,
  }) : super(key: key);

  static isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isLargeScreen = constraints.minWidth >= largeScreenSize;
        bool isSmallScreen = constraints.maxWidth < mediumScreenSize;
        bool isMediumScreen = constraints.maxWidth >= mediumScreenSize && constraints.maxWidth < largeScreenSize;
        if (isLargeScreen) {
          return largeScreenWidget;
        } else if (isMediumScreen) {
          return mediumScreenWidget;
        } else {
          return smallScreenWidget;
        }
      }
    );
  }
}
