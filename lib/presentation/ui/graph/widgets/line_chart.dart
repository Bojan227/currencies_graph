import 'package:currencies_graph/presentation/ui/graph/widgets/bottom_titles.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/left_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  static const List<String> bottomTitles = [
    '2023-9-13',
    '2023-9-14',
    '2023-9-15',
    '2023-9-16',
    '2023-9-17',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: double.infinity,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(0, 3),
                FlSpot(1, 2),
                FlSpot(2, 5),
                FlSpot(3, 3.1),
                FlSpot(4, 4),
              ],
              isCurved: true,
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: const FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
              ),
            ),
          ],
          minX: 0,
          maxX: 4,
          minY: 0,
          maxY: 6,
          titlesData: FlTitlesData(
            show: true,
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                interval: 1,
                reservedSize: 56,
                showTitles: true,
                getTitlesWidget: (value, meta) => BottomTitles(
                  titles: bottomTitles,
                  meta: meta,
                  value: value,
                ),
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) =>
                      LeftTitles(value: value, meta: meta),
                  reservedSize: 26,
                  interval: 1),
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: true,
            horizontalInterval: 1,
            verticalInterval: 1,
            getDrawingHorizontalLine: (value) {
              return const FlLine(
                color: Colors.cyan,
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return const FlLine(
                color: Colors.blue,
                strokeWidth: 1,
              );
            },
          ),
        ),
      ),
    );
  }
}
