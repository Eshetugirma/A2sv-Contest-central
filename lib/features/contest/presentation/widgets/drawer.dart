import 'package:contest_central/features/contest/presentation/pages/contest/contest.dart';
import 'package:contest_central/features/contest/presentation/pages/create_contest/create_contest.dart';
import 'package:contest_central/features/contest/presentation/pages/dashboard/dashboard.dart';
import 'package:contest_central/features/contest/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:contest_central/features/contest/presentation/pages/leader_board/leader_board.dart';

class Drawers extends StatelessWidget {
  Drawers({
    super.key,
    this.page,
  });
  final String? page;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 200,
              height: 40,
              child: SvgPicture.asset(
                "assets/images/logo 1.svg",
                width: double.infinity,
                height: 50,
              ),
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.grid,
                      color: page == "dashboard"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                        color: page == "dashboard"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contests()),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.stats_chart,
                      color: page == "contest"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Contest',
                      style: TextStyle(
                        color: page == "contest"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormBody()),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.person,
                      color: page == "users"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Users',
                      style: TextStyle(
                        color: page == "users"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatsBody()),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.settings,
                      color: page == "settings"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: page == "settings"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.stats_chart,
                      color: page == "leaderBoard"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Leader Board',
                      style: TextStyle(
                        color: page == "leaderBoard"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.people,
                      color: page == "members"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Members',
                      style: TextStyle(
                        color: page == "members"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Icon(
                      Ionicons.log_out,
                      color: page == "logout"
                          ? Color.fromARGB(255, 13, 137, 238)
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: page == "logout"
                            ? Color.fromARGB(255, 13, 137, 238)
                            : Theme.of(context).colorScheme.onPrimary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
