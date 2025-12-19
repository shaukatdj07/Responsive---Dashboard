import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:practice/Config/responsive.dart';
import 'package:practice/res/app_color.dart';

class BarChatRepresentation extends StatelessWidget {
  const BarChatRepresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
         barGroups:_chartValue(context),
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        gridData: FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              interval: 30,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return Text(
                      '0',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    );
                  case 10:
                    return Text(
                      '30K',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    );
                  case 50:
                    return Text(
                      '50K',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    );
                  case 100:
                    return Text(
                      '100K',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    );
                  default:
                    return SizedBox.shrink();
                }
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                final months = [
                  'JAN',
                  'FEB',
                  'MAR',
                  'APR',
                  'MAY',
                  'JUN',
                  'JUL',
                  'AUG',
                  'SEP',
                  'OCT',
                  'NOV',
                  'DEC',
                ];
                if (value.toInt() >= 0 && value.toInt() < months.length) {
                  return Text(
                    months[value.toInt()],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
      swapAnimationDuration: Duration(microseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }

  List<BarChartGroupData> _chartValue(BuildContext context) {
    final List<double> values = [
      20,
      35,
      50,
      90,
      60,
      40,
      25,
      15,
      70,
      90,
      70,
      60,
    ];
    return List.generate(values.length, (index) {
      return BarChartGroupData(
        x: index,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
            toY: values[index],
            color: Colors.black,
            width: Responsive.isDesktop(context) ? 40 : 10,
            borderRadius: BorderRadius.zero,
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 90,
              color: MyAppColor.barBg,
            ),
          ),
        ],
      );
    });
  }
}
