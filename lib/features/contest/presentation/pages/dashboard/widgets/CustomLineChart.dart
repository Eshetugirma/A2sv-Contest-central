import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      // color: Theme.of(context).colorScheme.primary,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: AspectRatio(
        aspectRatio: 1,
        child: LineChart(
          LineChartData(
              lineBarsData: [
                LineChartBarData(
                    spots: const [
                      FlSpot(0, 3),
                      FlSpot(2.6, 2),
                      FlSpot(4.9, 5),
                      FlSpot(6.8, 2.5),
                      FlSpot(8, 3),
                      FlSpot(9.5, 3),
                      FlSpot(11, 4),
                    ],
                    isCurved: true,
                    dotData: const FlDotData(show: false),
                    color: const Color(0xFF003FFF),
                    barWidth: 1.1,
                    belowBarData: BarAreaData(
                      show: true,
                      color: const Color(0xFF003FFF).withOpacity(.2),
                    )),
              ],
              minX: 0,
              maxX: 11,
              minY: 2,
              maxY: 5,
              backgroundColor: Theme.of(context).colorScheme.primary,
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          String text = '';
                          switch (value.toInt()) {
                            case 0:
                              text = 'Sept 15';
                              break;
                            case 3:
                              text = 'Sept 17';
                              break;
                            case 6:
                              text = 'Sept 19';
                              break;
                            // case 9:
                            //   text = 'Sept 21';
                            //   break;
                            // case 11:
                            //   text = 'Sept 23';
                            //   break;
                          }
                          return Text(text);
                        })),
                leftTitles: const AxisTitles(
                  // axisNameWidget: Text('Y axis'),
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                  ),
                ),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: const Color(0xFF003FFF), width: 1),
              )),
        ),
      ),
    );
  }
}
