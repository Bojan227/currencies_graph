import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class TimeSeriesRates {
  final int day;
  final double currency;

  TimeSeriesRates(this.day, this.currency);
}

class GraphicRealTimeChart extends StatefulWidget {
  final List<Rate> rates;

  const GraphicRealTimeChart({super.key, required this.rates});

  @override
  State<GraphicRealTimeChart> createState() => _GraphicRealTimeChartState();
}

class _GraphicRealTimeChartState extends State<GraphicRealTimeChart> {
  late List<TimeSeriesRates> timeSeriesRates;

  late Timer timer;

  late int counter;
  @override
  void initState() {
    // TODO: implement initState
    counter = widget.rates.length;
    timeSeriesRates = [];
    timeSeriesRates = widget.rates.map((rate) {
      return TimeSeriesRates(
        6,
        rate.rates['PKR']!,
      );
    }).toList();
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      Random rnd;
      int min = 100;
      int max = 220;
      rnd = Random();
      var r = min + rnd.nextInt(max - min);

      setState(() {
        // timeSeriesRates.removeAt(0);
        timeSeriesRates.add(
          TimeSeriesRates(
            counter++,
            r.toDouble(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 300,
      child: Chart(
        padding: (_) => EdgeInsets.all(12),
        data: timeSeriesRates,
        variables: {
          'day': Variable(
            accessor: (TimeSeriesRates datum) => datum.day,
            scale: TimeScale(
              formatter: (time) => convertDate(time),
            ),
          ),
          'currency': Variable(
            accessor: (TimeSeriesRates datum) => datum.currency,
          ),
        },
        marks: [
          AreaMark(
            size: SizeEncode(encoder: (_) => 35),
            gradient: GradientEncode(
              encoder: (_) => LinearGradient(
                colors: [
                  Colors.purple[50]!,
                  Colors.purple[100]!,
                  Colors.purple[200]!,
                  Colors.purple[300]!,
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
              encoder: (p0) => Colors.purple[900]!,
            ),
            size: SizeEncode(encoder: (_) => 3),
            transition: Transition(duration: const Duration(seconds: 1)),
            entrance: {MarkEntrance.x, MarkEntrance.y, MarkEntrance.opacity},
            shape: ShapeEncode(
              value: BasicLineShape(smooth: true),
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
        ],
        selections: {
          'touchMove': PointSelection(
            on: {
              GestureType.scaleUpdate,
              GestureType.tapDown,
              GestureType.longPressMoveUpdate
            },
            dim: Dim.x,
          )
        },
        tooltip: TooltipGuide(
          elevation: 6,
          followPointer: [false, true],
          align: Alignment.topLeft,
          offset: const Offset(-20, -20),
        ),
        crosshair: CrosshairGuide(
          followPointer: [true, true],
        ),
      ),
    );
  }
}
