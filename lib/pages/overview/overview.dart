import 'package:admin_panel_tutorial/pages/overview/widgets/overview_cards_large_widget.dart';
import 'package:admin_panel_tutorial/widgets/page_title_widget.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PageTitleWidget(),
        const SizedBox(height: 20),
        Expanded(
          child: Column(
            children: const [
              OverviewCardsLargeWidget(),
            ],
          ),
        )
      ],
    );
  }
}
