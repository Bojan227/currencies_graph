import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BottomTitles extends StatelessWidget {
  const BottomTitles({
    super.key,
    required this.value,
    required this.meta,
    required this.titles,
  });

  final double value;
  final TitleMeta meta;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 14, //margin top
      child: Text(
        titles[value.toInt()],
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
