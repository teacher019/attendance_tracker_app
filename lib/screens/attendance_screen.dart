import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/attendance_provider.dart';
import '../widgets/attendance_card.dart';
import 'summary_screen.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider =
    Provider.of<AttendanceProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Daily Attendance"),
        centerTitle: true,
      ),

      body: Column(
        children: [

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: provider.students.length,
              itemBuilder: (context, index) {

                final student =
                provider.students[index];

                return AttendanceCard(
                  student: student,
                  onChanged: (value) {
                    provider.toggleAttendance(
                      index,
                      value ?? false,
                    );
                  },
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(14),
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                      const SummaryScreen(),
                    ),
                  );
                },

                child: const Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}