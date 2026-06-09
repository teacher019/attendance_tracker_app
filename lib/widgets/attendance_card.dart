import 'package:flutter/material.dart';
import '../models/student.dart';

class AttendanceCard extends StatelessWidget {
  final Student student;
  final ValueChanged<bool?> onChanged;

  const AttendanceCard({
    super.key,
    required this.student,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: CheckboxListTile(
        title: Text(
          student.name,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        value: student.isPresent,
        activeColor: Colors.green,
        onChanged: onChanged,
      ),
    );
  }
}