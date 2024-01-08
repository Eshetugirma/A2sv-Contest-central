import 'package:contest_central/features/contest/presentation/pages/contest/contest.dart';
import 'package:contest_central/features/contest/presentation/pages/dashboard/widgets/AngleBox.dart';
import 'package:contest_central/features/contest/presentation/pages/dashboard/widgets/contests_demo.dart';
import 'package:contest_central/features/contest/presentation/pages/leader_board/leader_board.dart';
import 'package:contest_central/features/contest/presentation/widgets/customAppBar.dart';

import 'widgets/chart.dart';
import 'widgets/dashboardcard.dart';
import '../../widgets/drawer.dart';
import 'widgets/top_contest.dart';
import 'widgets/top_groups.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import "widgets/CustomLineChart.dart";

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<bool> _selections = List.generate(4, (index) => (index == 1));
  List<String> _options = ['Week', 'Month', 'Quarter', 'Year'];
  String _selectedOption = 'Month';
  String selectedValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFE6E7EC),
      appBar: CustomAppBar(title: "Dashboard"),
      drawer: Drawers(page: "dashboard"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // =====  Dashboard cards  =====
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashBoardCard(
                  title: 'Total Contest',
                  icon: Icon(
                    Ionicons.stats_chart,
                    color: Color(0xFF2148C0),
                  ),
                ),
                SizedBox(width: 10),
                DashBoardCard(
                  title: 'Total Group',
                  icon: Icon(
                    Ionicons.people_outline,
                    color: Color(0xFF26AF61),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DashBoardCard(
                  title: 'Total Member',
                  icon: Icon(
                    Ionicons.person_outline,
                    color: Color(0xFFF6B612),
                  ),
                ),
                SizedBox(width: 10),
                DashBoardCard(
                  title: 'Total Hour',
                  icon: Icon(
                    Ionicons.time_outline,
                    color: Color(0xFFFA4A49),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            // Text("hi"),
            // ParallelogramWidget(),
            const SizedBox(
              height: 20,
            ),
            // ====  Graph ====
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.62,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtons(
                        isSelected: _selections,
                        onPressed: (int index) {
                          setState(() {
                            for (int buttonIndex = 0;
                                buttonIndex < _selections.length;
                                buttonIndex++) {
                              _selections[buttonIndex] = (buttonIndex == index);
                            }
                            _selectedOption = _options[index];
                          });
                        },
                        children: _options.map((option) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: Text(option),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          value: 'All',
                          child: Text('All'),
                        ),
                        DropdownMenuItem(
                          value: 'rated',
                          child: Text('rated'),
                        ),
                        DropdownMenuItem(
                          value: 'unrated',
                          child: Text('unrated'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const CustomLineChart(),

            const SizedBox(
              height: 25,
            ),

            // ====  Top Groups  ====
            const TopGroups(),

            const SizedBox(
              height: 20,
            ),

            // ====  Top Contestants  ====
            const TopConteststants(),

            const SizedBox(
              height: 10,
            ),

            // === Recent Contest List =====
            const SizedBox(
              height: 10,
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(
                  color: Theme.of(context).colorScheme.background,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.background,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const ContestsDemo(),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Set the background color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contests()),
                );
              },
              child: const Text(
                "see more",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
