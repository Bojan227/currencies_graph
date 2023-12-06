import 'dart:async';
import 'dart:math';
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

  final int year;
  final double sales;
}

class SyncRealTimeChart extends StatefulWidget {
  final List<Rate> rates;

  const SyncRealTimeChart({super.key, required this.rates});

  @override
  State<SyncRealTimeChart> createState() => _SyncRealTimeChartState();
}

class _SyncRealTimeChartState extends State<SyncRealTimeChart> {
  List<_SalesData> sales = [
    _SalesData(1, 45),
    _SalesData(2, 55),
    _SalesData(3, 66),
    _SalesData(4, 32),
    _SalesData(5, 24)
  ];

  late ChartSeriesController chartSeriesController;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 5), updateData);
  }

  int counter = 6;

  void updateData(Timer timer) {
    Random rnd;
    int min = 20;
    int max = 60;
    rnd = Random();
    var r = min + rnd.nextInt(max - min);

    sales.removeAt(0);
    sales.add(
      _SalesData(counter++, r.toDouble()),
    );
    chartSeriesController.updateDataSource(
      addedDataIndex: sales.length - 1,
      removedDataIndex: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          margin: EdgeInsets.zero,
          primaryXAxis: NumericAxis(
              axisLine: AxisLine(color: Colors.transparent, width: 0),
              majorGridLines: MajorGridLines(
                width: 0,
              ),
              //Major tick line customization.
              rangePadding: ChartRangePadding.round,
              majorTickLines:
                  MajorTickLines(color: Colors.transparent, size: 10),

              //Axis label customization.
              labelStyle: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              edgeLabelPlacement: EdgeLabelPlacement.shift,
              labelIntersectAction: AxisLabelIntersectAction.wrap
              // plotOffset: 20,
              ),
          primaryYAxis: NumericAxis(
              axisLine: AxisLine(color: Colors.transparent),
              majorGridLines: MajorGridLines(width: 0),
              isVisible: false),
          // Chart title
          title: ChartTitle(text: 'Syncfusion'),
          // Enable legend

          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<_SalesData, int>>[
            SplineAreaSeries<_SalesData, int>(
                onRendererCreated: (ChartSeriesController controller) {
                  chartSeriesController = controller;
                },
                gradient: _linearGradient,
                borderColor: Colors.purple[900],
                borderWidth: 3,
                dataSource: sales,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: false))
          ]),
    );
  }
}
