import 'package:flutter/material.dart';
import 'package:options/models/scores.dart';
import 'package:options/services/get_hope.dart';
import 'package:options/widgets/textfield.dart';
import 'package:options/widgets/university_card.dart'; // Assumes MyTextField is defined here

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  final TextEditingController universityController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  List<Map<String, String>> data = [];

  List<dynamic> _allItems = [];

  List<dynamic> _filteredItems = [];

  void fetchAllHope(Scores scores) async {
    Map<String, dynamic> res = await postData(scores);

    setState(() {
      _allItems = res['response'];
      _filteredItems = _allItems;
    });
  }

  @override
  void initState() {
    super.initState();
    // Delay access to ModalRoute until after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is List<Map<String, String>>) {
        setState(() {
          data = args;
          Scores scores = Scores();
          scores.updateFromDomainTextList(data);
          fetchAllHope(scores);
          universityController.addListener(_filterItems);
          facultyController.addListener(_filterItems);
        });
      } else {
        debugPrint('No valid arguments passed to TextFieldPage');
      }
    });
  }

  void _filterItems() {
    final universityQuery = universityController.text.toLowerCase();
    final facultyQuery = facultyController.text.toLowerCase();
    setState(() {
      _filteredItems =
          _allItems
              .where(
                (item) =>
                    item['program_id'].toString().toLowerCase().contains(
                      universityQuery,
                    ) &&
                    item['program_name_th'].toString().toLowerCase().contains(
                      facultyQuery,
                    ),
              )
              .toList();
    });
  }

  @override
  void dispose() {
    universityController.dispose();
    facultyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("TCAS Arcana"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: universityController,
                    decoration: InputDecoration(
                      labelText: 'University',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: facultyController,
                    decoration: InputDecoration(
                      labelText: 'Faculty',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            if (_filteredItems.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    final item = _filteredItems[index];
                    return UniversityCard(
                      universityName:
                          item['program_id'] ??
                          '', // or use a real university field if available
                      programName: item['program_name_th'] ?? '',
                      estMinScore: item['estimated_min_score'].toString(),
                      yourScore: item['your_score'].toStringAsFixed(2),
                      lastYearMinScore: item['lastyear_min_score']
                          .toStringAsFixed(2),
                      lastYearMaxScore: item['lastyear_max_score']
                          .toStringAsFixed(2),
                      distance: item['distance'].toStringAsFixed(2),
                    );
                  },
                ),
              ),
            if (_filteredItems.isEmpty) Text('None'),
          ],
        ),
      ),
    );
  }
}
