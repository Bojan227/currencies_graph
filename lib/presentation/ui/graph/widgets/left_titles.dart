import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LeftTitles extends StatelessWidget {
  const LeftTitles({
    super.key,
    required this.value,
    required this.meta,
  });

  final double value;
  final TitleMeta meta;

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8,
      child: Text(
        '${value.toInt()}',
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
