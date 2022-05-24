import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/info_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeWidget extends StatelessWidget {
  const OverviewCardsLargeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 64;
    List<Widget> cards = [];
    OverviewCardDataModel.mockData.forEach((item) {
      cards.add(InfoCardWidget(title: item.title, value: item.value, topColor: item.color, isActive: item.isActive, onTap: () {}));
      cards.add(SizedBox(width: width));
    });
    return Row(children: cards);
  }
}
