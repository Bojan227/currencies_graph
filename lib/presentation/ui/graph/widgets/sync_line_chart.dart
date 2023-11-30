import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// Initializing the gradient variable for the series.
final LinearGradient _linearGradient = LinearGradient(
  colors: <Color>[
    Colors.purple[50]!,
    Colors.purple[100]!,
    Colors.purple[200]!,
  ],
  stops: <double>[0.1, 0.3, 0.4],
  // Setting alignment for the series gradient
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

class _SalesData {
  _SalesData(this.year, this.sales);

  final DateTime year;
  final double sales;
}

class SyncLineChartWidget extends StatelessWidget {
  final List<Rate> rates;

  const SyncLineChartWidget({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> data = rates
    //     .map((rate) =>
    //         {'date': convertDate(rate.date), 'value': rate.rates['PKR']})
    //     .toList();
    // print(data);
    List<_SalesData> sales = [
      _SalesData(DateTime(2010), 45),
      _SalesData(DateTime(2011), 55),
      _SalesData(DateTime(2012), 66),
      _SalesData(DateTime(2013), 32),
      _SalesData(DateTime(2014), 24)
    ];

    return SizedBox(
      height: 250,
      width: double.infinity,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          margin: EdgeInsets.zero,
          primaryXAxis: DateTimeAxis(
            axisLine: AxisLine(color: Colors.transparent),
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
              axisLine: AxisLine(color: Colors.transparent),
              majorGridLines: MajorGridLines(width: 0),
              minimum: 20,
              maximum: 70,
              isVisible: false),
          // Chart title
          title: ChartTitle(text: 'Syncfusion'),
          // Enable legend

          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<_SalesData, DateTime>>[
            SplineAreaSeries<_SalesData, DateTime>(
                gradient: _linearGradient,
                borderColor: Colors.purple[900],
                borderWidth: 2,
                dataSource: sales,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ]),
    );
  }
}
