import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/attendance_provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final provider =
    Provider.of<AttendanceProvider>(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text(
          "Attendance Summary",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            Row(
              children: [

                Expanded(
                  child: _buildStatusCard(
                    "Present",
                    provider.presentCount,
                    Colors.green,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _buildStatusCard(
                    "Absent",
                    provider.absentCount,
                    Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    const Text(
                      "Present Students",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      provider.presentStudents
                          .join(", "),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Absent Students",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      provider.absentStudents
                          .join(", "),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(
      String title,
      int count,
      Color color,
      ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Text(title),

            const SizedBox(height: 10),

            CircleAvatar(
              radius: 35,
              backgroundColor:
              color.withOpacity(.2),

              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}