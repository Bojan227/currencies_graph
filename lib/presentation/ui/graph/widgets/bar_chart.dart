import 'package:currencies_graph/core/utils/convert_date.dart';
import 'package:currencies_graph/domain/entities/rates_entity.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/bottom_titles.dart';
import 'package:currencies_graph/presentation/ui/graph/widgets/left_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartWidget extends StatelessWidget {
  final List<Rate> rates;

  const BarChartWidget({super.key, required this.rates});

  @override
  Widget build(BuildContext context) {
    List<String> bottomTitles =
        rates.map((rate) => convertDate(rate.date)).toList();

    return SizedBox(
      height: 350,
      width: double.infinity,
      child: BarChart(
        BarChartData(
          barGroups: [
            for (final (index, rate) in rates.indexed)
              BarChartGroupData(
                x: index,
                barsSpace: 6,
                barRods: [
                  BarChartRodData(
                    borderRadius: BorderRadius.zero,
                    color: Colors.black,
                    width: 20,
                    toY: double.parse(
                      double.parse(rate.rates["PKR"]).toStringAsFixed(2),
                    ),
                  )
                ],
              ),
          ],
          minY: 0,
          maxY: 250,
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
                reservedSize: 88,
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
                  interval: 250 / 2),
            ),
          ),
          gridData: FlGridData(
            show: false,
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
        swapAnimationDuration: const Duration(milliseconds: 450),
        swapAnimationCurve: Curves.linear,
      ),
    );
  }
}
