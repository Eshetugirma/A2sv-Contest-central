import 'package:contest_central/features/contest/presentation/pages/create_contest/create_contest.dart';
import 'package:contest_central/features/contest/presentation/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import "../../widgets//drawer.dart";

import 'widgets/button.dart';
import 'widgets/search_bar.dart';
import 'widgets/table.dart';

class Contests extends StatefulWidget {
  const Contests({super.key});

  @override
  State<Contests> createState() => _ContestsState();
}

class _ContestsState extends State<Contests> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Contest"),
      drawer: Drawers(page: "contest"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10, left: 8, right: 8),
          padding: EdgeInsets.only(top: 4, left: 4, right: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.tertiary),
            // border: Border.all(color: const Color.fromARGB(255, 230, 230, 230)),
            // color: Colors.red,
          ),
          child: Column(
            children: [
              SearchInput(),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Button(
                        name: "filters",
                        icon: Icons.filter_list,
                        onPresse: () async {
                          final DateTimeRange? dateTimeRange =
                              await showDateRangePicker(
                            context: context,
                            firstDate: DateTime(2020),
                            lastDate: DateTime.now(),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Button(
                        name: "sort",
                        icon: Icons.sort,
                      ),
                    ],
                  ),
                  Button(
                      name: "create",
                      icon: Icons.add_circle_outline,
                      bg: Colors.blue,
                      textColor: Colors.white,
                      onPresse: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormBody()),
                        );
                      }),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  FixedColumnWidget(),
                  ScrollableColumnWidget(),
                ],
              ),
              SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

