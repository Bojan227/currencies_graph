import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

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
    final timeSeriesRates = rates.map((rate) {
      return TimeSeriesRates(
        rate.date,
        rate.rates['PKR'],
      );
    }).toList();

    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 350,
      height: 300,
      child: Chart(
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
          LineMark(
            shape: ShapeEncode(
              value: BasicLineShape(smooth: true),
            ),
            selected: {
              'touchMove': {2}
            },
          ),
          PointMark(
            color: ColorEncode(value: Colors.black),
            shape: ShapeEncode(
              value: CircleShape(strokeWidth: 2),
            ),
            size: SizeEncode(value: 8),
          ),
        ],
        coord: RectCoord(),
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
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
          padding: const EdgeInsets.all(14),
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
