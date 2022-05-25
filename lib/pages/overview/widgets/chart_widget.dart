import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final List<Series<dynamic, String>> seriesList;
  final bool animate;
  const ChartWidget({
    Key? key,
    required this.seriesList,
    required this.animate
  }) : super(key: key);


  factory ChartWidget.withSampleData() {
    return ChartWidget(
      seriesList: _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      seriesList,
      animate: animate,
    );
  }

  static List<Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales(year: '2014', sales: 5),
      OrdinalSales(year: '2015', sales: 25),
      OrdinalSales(year: '2016', sales: 100),
      OrdinalSales(year: '2017', sales: 75),
    ];

    return [
      Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}


class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales({required this.year, required this.sales});
}