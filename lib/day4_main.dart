import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'screens/home_page.dart';
import 'screens/learn_page.dart';
import 'screens/course_details_page.dart';
import 'screens/simulation_page.dart';
import 'screens/goals_page.dart';

void main() {
  runApp(const Day4App());
}

class Day4App extends StatelessWidget {
  const Day4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/learn': (context) => const LearnPage(),
        '/course-details': (context) => const CourseDetailsPage(),
        '/simulation': (context) => const SimulationPage(),
        '/goals': (context) => const GoalsPage(),
      },
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
