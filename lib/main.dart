import 'package:contest_central/features/contest/presentation/pages/contest/contest.dart';
import "package:contest_central/features/contest/presentation/pages/dashboard/dashboard.dart";
import 'package:flutter/material.dart';
import "./features/contest/presentation/pages/login/login.dart";
import "./features/contest/presentation/pages/create_contest/create_contest.dart";
import "./features/contest/presentation/widgets/team.dart";

void main() {
  runApp(const MyApp());
}

// a
bool isDarkMode(BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.dark;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDarkMode(context) ? darkTheme : lightTheme,
      home: const Dashboard(),
    );
  }
}
