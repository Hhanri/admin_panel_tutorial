import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section/revenue_info_widget.dart';
import 'package:flutter/material.dart';

class RevenueInfoCardsWidget extends StatelessWidget {
  const RevenueInfoCardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
