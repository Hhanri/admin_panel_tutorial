import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/constants/theme.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section/chart_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section/revenue_info_cards_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class RevenueSectionLargeWidget extends StatelessWidget {
  const RevenueSectionLargeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding = EdgeInsets.all(24);
    const EdgeInsets margin = EdgeInsets.symmetric(vertical: 30);
    return Container(
      padding: padding,
      margin: margin,
      decoration: containerBoxDecoration,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextWidget(text: "Revenue Chart", size: 20, color: lightGrey, fontWeight: FontWeight.bold),
                SizedBox(
                  width: 600,
                  height: 200,
                  child: ChartWidget.withSampleData(),
                )
              ],
            ),
          ),
          const VerticalDividerWidget(height: 120),
          const Expanded(
            child: RevenueInfoCardsWidget()
          )
        ],
      ),
    );
  }
}
