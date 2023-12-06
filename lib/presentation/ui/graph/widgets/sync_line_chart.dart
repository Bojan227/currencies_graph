import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// Initializing the gradient variable for the series.
final LinearGradient _linearGradient = LinearGradient(
  colors: <Color>[
    Colors.green[50]!,
    Colors.green[100]!,
    Colors.green[200]!,
  ],
  stops: <double>[0.1, 0.3, 0.4],
  // Setting alignment for the series gradient
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class SyncLineChartWidget extends StatelessWidget {
  final List<Rate> rates;

  const SyncLineChartWidget({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    List<_SalesData> sales = [
      _SalesData('1 pm', 4),
      _SalesData('2 pm', 3.5),
      _SalesData('3 pm', 6),
      _SalesData('4 pm', 3),
      _SalesData('5 pm', 2.4),
      _SalesData('6 pm', 3),
    ];

    return SizedBox(
      height: 250,
      width: 350,
      child: SfCartesianChart(
          plotAreaBorderWidth: 0,
          margin: EdgeInsets.zero,
          primaryXAxis: CategoryAxis(
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            majorGridLines: MajorGridLines(width: 0),
            minimum: 2,
            maximum: 10,
            isVisible: true,
            axisLine: AxisLine(color: Colors.transparent, width: 0),
            minorTickLines: MinorTickLines(width: 0),
            majorTickLines: MajorTickLines(width: 0, color: Colors.transparent),
          ),
          // Chart title
          title: ChartTitle(text: 'Syncfusion'),
          // crosshairBehavior: CrosshairBehavior(
          //     enable: true,
          //     lineColor: Colors.red,
          //     lineDashArray: <double>[5, 5],
          //     lineWidth: 2,
          //     lineType: CrosshairLineType.vertical,
          //     activationMode: ActivationMode.singleTap),

          // Enable tooltip
          trackballBehavior: TrackballBehavior(
            shouldAlwaysShow: true,
            enable: true,
            tooltipSettings: InteractiveTooltip(
              canShowMarker: false,
            ),
            markerSettings: const TrackballMarkerSettings(
              height: 10,
              width: 10,
              markerVisibility: TrackballVisibilityMode.visible,
              borderColor: Colors.black,
              borderWidth: 4,
              color: Colors.blue,
            ),
            lineDashArray: [5, 5],
            lineType: TrackballLineType.vertical,
            lineWidth: 2,
            activationMode: ActivationMode.singleTap,
            tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
            tooltipAlignment: ChartAlignment.center,
          ),
          tooltipBehavior: TooltipBehavior(
              enable: false,
              color: Colors.transparent,
              tooltipPosition: TooltipPosition.pointer,
              builder: (dynamic data, dynamic point, dynamic series,
                  int pointIndex, int seriesIndex) {
                return Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    width: 60,
                    height: 60,
                    child: Column(
                      children: [
                        Text("${data.sales} KWh"),
                        Icon(Icons.car_crash)
                      ],
                    ));
              }),
          series: <ChartSeries<_SalesData, String>>[
            SplineAreaSeries<_SalesData, String>(
                gradient: _linearGradient,
                borderColor: Colors.green[900],
                borderWidth: 2,
                dataSource: sales,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Sales',

                // Enable data label
                enableTooltip: true)
          ]),
    );
  }
}
