import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/bottom_titles.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/left_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Rate> rates;

  const LineChartWidget({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    List<String> bottomTitles =
        rates.map((rate) => convertDate(rate.date)).toList();

    return SizedBox(
      height: 350,
      width: double.infinity,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                for (final (index, rate) in rates.indexed)
                  FlSpot(
                    index.toDouble(),
                    rate.rates["PKR"]!,
                  ),
              ],
              isCurved: true,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: const FlDotData(
                show: true,
              ),
              belowBarData: BarAreaData(
                show: true,
              ),
            ),
          ],
          minX: 0,
          maxX: bottomTitles.length - 1,
          minY: 0,
          maxY: 500,
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
                  reservedSize: 44,
                  interval: 500 / 2),
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
