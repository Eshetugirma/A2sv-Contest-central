import 'package:contest_central/features/contest/presentation/pages/leader_board/leader_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContestsDemo extends StatefulWidget {
  const ContestsDemo({super.key});

  @override
  State<ContestsDemo> createState() => _ContestsDemoState();
}

class _ContestsDemoState extends State<ContestsDemo> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
        // headingRowColor: MaterialStateProperty.all(Colors.green[100]),
        columnSpacing: 60,
        dividerThickness: 0,
        decoration: const BoxDecoration(
            // color: Colors.white,
            // border: Border(
            //   right: BorderSide(
            //     color: Colors.red,
            //     width: 0.5,
            //   ),
            //   top: BorderSide(
            //     color: Colors.red,
            //     width: 0.5,
            //   ),
            // ),
            ),
        columns: const [
          DataColumn(label: Text('Contest Name')),
          DataColumn(label: Text('Date')),
          DataColumn(label: Text('Status')),
        ],
        rows: [
          ...teamsData.map((team) => DataRow(
                cells: [
                  DataCell(Container(
                      child: Text(
                    team.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ))),
                  DataCell(Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.points.toString()))),
                  DataCell(
                    SvgPicture.asset(
                      team.position % 2 == 0
                          ? "assets/images/Vector.svg"
                          : "assets/images/eye.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ))
        ]);
  }
}

class Team {
  Team({
    required this.position,
    required this.name,
    required this.points,
    required this.played,
    required this.won,
    required this.drawn,
    required this.lost,
    required this.against,
    required this.gd,
  });

  final int position;
  final String name;
  final int points;
  final int played;
  final int won;
  final int drawn;
  final int lost;
  final int against;
  final int gd;
}

List<Team> teamsData = [
  Team(
      position: 1,
      name: 'Atletico Madrid',
      points: 11,
      played: 5,
      won: 3,
      drawn: 2,
      lost: 0,
      against: 4,
      gd: 3),
  Team(
      position: 2,
      name: 'Real Madrid',
      points: 10,
      played: 4,
      won: 3,
      drawn: 1,
      lost: 0,
      against: 6,
      gd: 7),
  Team(
      position: 3,
      name: 'Valencia',
      points: 10,
      played: 4,
      won: 3,
      drawn: 2,
      lost: 0,
      against: 2,
      gd: 7),
  Team(
      position: 4,
      name: 'Athletic Bilbao',
      points: 9,
      played: 5,
      won: 2,
      drawn: 3,
      lost: 0,
      against: 1,
      gd: 3),
  Team(
      position: 5,
      name: 'Real Sociedad',
      points: 9,
      played: 4,
      won: 3,
      drawn: 0,
      lost: 1,
      against: 4,
      gd: 2),
  Team(
      position: 6,
      name: 'Osasuna',
      points: 8,
      played: 5,
      won: 2,
      drawn: 2,
      lost: 1,
      against: 6,
      gd: 0)
];
