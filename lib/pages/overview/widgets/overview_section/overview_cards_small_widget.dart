import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/overview_section/info_card_small_widget.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallWidget extends StatelessWidget {
  const OverviewCardsSmallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [const SizedBox(height: 10)];
    OverviewCardDataModel.mockData.forEach((item) {
      cards.add(InfoCardSmallWidget(title: item.title, value: item.value, topColor: item.color, isActive: item.isActive, onTap: () {}));
      cards.add(const SizedBox(height: 10));
    });
    return SizedBox(height: 400, child: Column(children: cards));
  }
}