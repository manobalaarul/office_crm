import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/color_theme.dart';

class DashChart extends StatelessWidget {
  const DashChart({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColorTheme>()!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 260,
        child: LineChart(
          LineChartData(
            minX: 0,
            maxX: 6,
            minY: 0,
            maxY: 100,

            gridData: FlGridData(
              show: true,
              drawVerticalLine: true,
              horizontalInterval: 20,
              verticalInterval: 1,
            ),

            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    const days = [
                      "Mon",
                      "Tue",
                      "Wed",
                      "Thu",
                      "Fri",
                      "Sat",
                      "Sun",
                    ];
                    return Text(
                      days[value.toInt()],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    );
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true, interval: 20),
              ),
            ),

            borderData: FlBorderData(
              show: true,
              border: Border.all(color: Colors.grey.shade300),
            ),

            lineBarsData: [
              LineChartBarData(
                spots: const [
                  FlSpot(0, 20),
                  FlSpot(1, 40),
                  FlSpot(2, 35),
                  FlSpot(3, 60),
                  FlSpot(4, 55),
                  FlSpot(5, 80),
                  FlSpot(6, 70),
                ],
                isCurved: true,
                color: colors.secondaryText,
                barWidth: 3,
                belowBarData: BarAreaData(show: true, color: colors.primary),
                dotData: const FlDotData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
