import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendanceProvider extends ChangeNotifier {

  final List<Student> students = [
    Student(name: "Student 1"),
    Student(name: "Student 2"),
    Student(name: "Student 3"),
    Student(name: "Student 4"),
    Student(name: "Student 5"),
    Student(name: "Student 6"),
    Student(name: "Student 7"),
    Student(name: "Student 8"),
    Student(name: "Student 9"),
    Student(name: "Student 10"),
  ];

  void toggleAttendance(int index, bool value) {
    students[index].isPresent = value;

    notifyListeners();
  }

  int get presentCount =>
      students.where((student) => student.isPresent).length;

  int get absentCount =>
      students.where((student) => !student.isPresent).length;

  List<String> get presentStudents =>
      students
          .where((student) => student.isPresent)
          .map((e) => e.name)
          .toList();

  List<String> get absentStudents =>
      students
          .where((student) => !student.isPresent)
          .map((e) => e.name)
          .toList();
}