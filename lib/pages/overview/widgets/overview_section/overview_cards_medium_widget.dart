import 'package:admin_panel_tutorial/constants/data.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/overview_section/info_card_widget.dart';
import 'package:flutter/material.dart';

class OverviewCardsMediumWidget extends StatelessWidget {
  const OverviewCardsMediumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 64;
    List<Widget> cardsRow1 = [SizedBox(width: width)];
    List<Widget> cardsRow2 = [SizedBox(width: width)];
    for (int index = 0; index < OverviewCardDataModel.mockData.length; index++) {
      OverviewCardDataModel item = OverviewCardDataModel.mockData[index];
      if (index < OverviewCardDataModel.mockData.length / 2) {
        cardsRow1.add(InfoCardWidget(title: item.title, value: item.value, topColor: item.color, isActive: item.isActive, onTap: () {}));
        cardsRow1.add(SizedBox(width: width));
      } else {
        cardsRow2.add(InfoCardWidget(title: item.title, value: item.value, topColor: item.color, isActive: item.isActive, onTap: () {}));
        cardsRow2.add(SizedBox(width: width));
      }
    }
    return Column(
      children: [
        Row(
          children: cardsRow1,
        ),
        Row(
          children: cardsRow2,
        )
      ],
    );
  }
}