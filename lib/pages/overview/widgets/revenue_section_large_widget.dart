import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/constants/style.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/chart_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_info_widget.dart';
import 'package:admin_panel_tutorial/widgets/custom_text_widget.dart';
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            color: lightGrey.withOpacity(0.1),
            blurRadius: 12
          )
        ],
        border: Border.all(color: lightGrey, width: 0.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Container(
            height: 120,
            width: 2,
            color: lightGrey,
          ),
          Expanded(
            child: _revenueInfoCardsWidget()
          )
        ],
      ),
    );
  }

  Widget _revenueInfoCardsWidget() {
    const double width = 5;
    List<Widget> revenueRow1 = [const SizedBox(width: width)];
    List<Widget> revenueRow2 = [const SizedBox(width: width)];
    for (int index = 0; index < OverviewCardDataModel.mockData.length; index++) {
      OverviewRevenueInfoDataModel item = OverviewRevenueInfoDataModel.mockData[index];
      if (index < OverviewCardDataModel.mockData.length / 2) {
        revenueRow1.add(RevenueInfoWidget(title: item.title, amount: item.amount));
        revenueRow1.add(const SizedBox(width: width));
      } else {
        revenueRow2.add(RevenueInfoWidget(title: item.title, amount: item.amount));
        revenueRow2.add(const SizedBox(width: width));
      }
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: revenueRow1,
        ),
        Row(
          children: revenueRow2,
        )
      ],
    );
  }
}
