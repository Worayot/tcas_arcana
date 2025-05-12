import 'package:flutter/material.dart';

class UniversityCard extends StatelessWidget {
  final String universityName;
  final String programName;
  final String estMinScore;
  final String yourScore;
  final String lastYearMinScore;
  final String lastYearMaxScore;
  final String distance;

  const UniversityCard({
    super.key,
    required this.universityName,
    required this.programName,
    required this.estMinScore,
    required this.yourScore,
    required this.lastYearMinScore,
    required this.lastYearMaxScore,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onPrimary,
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              universityName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              programName,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Divider(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildScoreColumn("Est. Min", estMinScore),
                _buildScoreColumn("Your Score", yourScore),
                _buildScoreColumn("Last Yr Min", lastYearMinScore),
                _buildScoreColumn("Last Yr Max", lastYearMaxScore),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Distance ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // const Icon(Icons.location_on, size: 16, color: Colors.grey),
                Text(distance, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreColumn(String title, String score) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        Text(
          score,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
