import 'package:admin_panel_tutorial/helpers/responsiveness_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/overview_cards_large_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/overview_cards_medium_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/overview_cards_small_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section_large_widget.dart';
import 'package:admin_panel_tutorial/pages/overview/widgets/revenue_section_small_widget.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                !ResponsivenessWidget.isSmallScreen(context)
                  ? ResponsivenessWidget.isCustomScreen(context)
                    ? const OverviewCardsMediumWidget()
                    : const OverviewCardsLargeWidget()
                  : const OverviewCardsSmallWidget(),
                !ResponsivenessWidget.isSmallScreen(context)
                  ? const RevenueSectionLargeWidget()
                  : const RevenueSectionSmallWidget()
              ],
            ),
          ),
        )
      ],
    );
  }
}
