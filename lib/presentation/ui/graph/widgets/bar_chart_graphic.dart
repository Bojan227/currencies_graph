import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class BarChartCraphic extends StatelessWidget {
  final List<Rate> rates;

  const BarChartCraphic({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> createChartData() {
      final List<Map<String, dynamic>> chartData = [];

      for (var rate in rates) {
        chartData.add(
          {
            'day': convertDate(rate.date),
            'value': rate.rates['PKR'],
          },
        );
      }

      return chartData;
    }

    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 350,
      height: 300,
      child: Chart(
        data: createChartData(),
        variables: {
          'day': Variable(
            accessor: (Map map) => map['day'] as String,
          ),
          'value': Variable(
            accessor: (Map map) => map['value'] as num,
          ),
        },
        marks: [
          IntervalMark(
            transition: Transition(
                duration: const Duration(seconds: 1),
                curve: Curves.linearToEaseOut),
            entrance: {MarkEntrance.y},
            modifiers: [DodgeModifier(ratio: 0.2)],
            label: LabelEncode(
                encoder: (tuple) => Label(tuple['value'].toString())),
            elevation: ElevationEncode(value: 0, updaters: {
              'tap': {true: (_) => 5}
            }),
            color: ColorEncode(value: Colors.black, updaters: {
              'tap': {false: (color) => color.withAlpha(100)}
            }),
          ),
        ],
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
        selections: {'tap': PointSelection(dim: Dim.x)},
        tooltip: TooltipGuide(),
        crosshair: CrosshairGuide(),
        coord: RectCoord(),
      ),
    );
  }
}
