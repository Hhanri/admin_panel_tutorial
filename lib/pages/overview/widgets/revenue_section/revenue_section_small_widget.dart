import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section/chart_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section/revenue_info_cards_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
import 'package:admin_panel_tutorial/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmallWidget extends StatelessWidget {
  const RevenueSectionSmallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding = EdgeInsets.all(24);
    const EdgeInsets margin = EdgeInsets.symmetric(vertical: 30);
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12
          )
        ],
        border: Border.all(color: lightGrey, width: 0.5),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 260,
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
          const HorizontalDividerWidget(width: 120),
          const SizedBox(
            height: 260,
            child: RevenueInfoCardsWidget()
          )
        ],
      ),
    );
  }
}

