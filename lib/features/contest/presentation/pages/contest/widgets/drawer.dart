import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';

class Drawers extends StatefulWidget {
  @override
  State<Drawers> createState() => _EndDrawersState();
}

class _EndDrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
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
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.grid,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.stats_chart,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Contest',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.person,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Users',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.settings,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Settings',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.stats_chart,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Leader Board',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.people,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Members',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            const Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Icon(
                    Ionicons.log_out,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Logout',
                    style: TextStyle(
                      // fontFamily: 'Poppins-Light',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
