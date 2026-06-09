import 'package:flutter/material.dart';
import 'screens/attendance_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Attendance Tracker',

      theme: ThemeData(
        useMaterial3: true,
      ),

      home: const AttendanceScreen(),
    );
  }
}