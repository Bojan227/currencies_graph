import 'dart:ui';

import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class TimeSeriesRates {
  final DateTime day;
  final double currency;

  TimeSeriesRates(this.day, this.currency);
}

class LineChartGraphic extends StatelessWidget {
  final List<Rate> rates;

  const LineChartGraphic({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    List<_SalesData> sales = [
      _SalesData('1 pm', 4),
      _SalesData('2 pm', 3.5),
      _SalesData('3 pm', 6),
      _SalesData('4 pm', 3),
      _SalesData('5 pm', 2.4),
      _SalesData('6 pm', 7.2),
    ];

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 300,
        child: Chart(
          padding: (_) => EdgeInsets.all(12),
          data: sales,
          variables: {
            'day': Variable(
              accessor: (_SalesData datum) => datum.year,
            ),
            'currency': Variable(
              accessor: (_SalesData datum) => datum.sales,
            ),
          },
          marks: [
            AreaMark(
              gradient: GradientEncode(
                encoder: (_) => LinearGradient(
                  stops: [0, 0.2, 0.5, 1],
                  colors: [
                    Colors.green[50]!,
                    Colors.green[100]!,
                    Colors.green[200]!,
                    Colors.green[300]!,
                  ],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                ),
              ),
              shape: ShapeEncode(
                value: BasicAreaShape(smooth: true),
              ),
            ),
            LineMark(
              color: ColorEncode(
                encoder: (p0) => Colors.green[900]!,
              ),
              size: SizeEncode(encoder: (_) => 2),
              transition: Transition(duration: const Duration(seconds: 1)),
              entrance: {MarkEntrance.x, MarkEntrance.y, MarkEntrance.opacity},
              shape: ShapeEncode(
                value: BasicLineShape(
                  smooth: true,
                ),
              ),
              selected: {
                'touchMove': {2}
              },
            ),
            // PointMark(
            //   transition: Transition(duration: const Duration(seconds: 3)),
            //   entrance: {MarkEntrance.x, MarkEntrance.y, MarkEntrance.opacity},
            //   color: ColorEncode(value: Colors.black),
            //   shape: ShapeEncode(
            //     value: CircleShape(strokeWidth: 2),
            //   ),
            //   size: SizeEncode(value: 8),
            // ),
          ],
          coord: RectCoord(),
          axes: [
            Defaults.horizontalAxis
              ..position = 0
              ..grid = null
              ..line = null
              ..dim = Dim.x,
            Defaults.verticalAxis
              ..position = 0
              ..grid = null,
          ],
          selections: {
            'touchMove': PointSelection(
              on: {
                GestureType.tapDown,
              },
              dim: Dim.x,
            )
          },
          tooltip: TooltipGuide(
            followPointer: [true, false],
            align: Alignment.topLeft,
            mark: 0,
          ),
          crosshair: CrosshairGuide(
            styles: [
              PaintStyle(strokeColor: const Color(0xffbfbfbf)),
              PaintStyle(strokeColor: const Color(0x00bfbfbf)),
            ],
            followPointer: [true, false],
          ),
        ),
      ),
    );
  }
}
