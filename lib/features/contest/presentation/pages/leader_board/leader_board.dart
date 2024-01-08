import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

final List<String> Categories = ["Ethiopia", "AASTU", "G46"];

class StatsBody extends StatelessWidget {
  StatsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Categories.isEmpty ? Container() : const ChossenCategories(),
            Text(
              "Problem Status",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomBarChart(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Avg conversion rate",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(
              height: 23,
            ),
            const CustomPieChart(),
          ]),
        ),
      ),
    );
  }
}

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 224,
        color: Theme.of(context).colorScheme.primary,
        child: PieChart(PieChartData(
          centerSpaceRadius: 5,
          borderData: FlBorderData(show: false),
          sectionsSpace: 2,
          sections: [
            PieChartSectionData(
                value: 80,
                title: '80%',
                color: const Color(0xFF264ECA),
                radius: 80),
            PieChartSectionData(
                title: '',
                value: 20,
                color: const Color(0XFFA3B3E5),
                radius: 80),
          ],
        )),
      ),
    );
  }
}

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // add decoration
      width: double.infinity,
      height: 320,
      color: Theme.of(context).colorScheme.primary,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: BarChart(
            BarChartData(
              borderData: FlBorderData(
                // show: fzz,
                border: const Border(
                  top: BorderSide.none,
                  right: BorderSide.none,
                  left: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                ),
              ),
              groupsSpace: 10,
              barGroups: [
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 80,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 100,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 30,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 70,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 50,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 10,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 75,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
                BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      fromY: 0,
                      toY: 10,
                      width: 15,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF264ECA),
                          Color(0XFFA3B3E5),
                        ],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChossenCategories extends StatelessWidget {
  const ChossenCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 23, 0),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0XFFD1D5DB))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        Categories[index],
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
