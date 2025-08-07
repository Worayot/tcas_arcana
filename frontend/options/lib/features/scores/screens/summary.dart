import 'package:flutter/material.dart';
import 'package:options/models/scores.dart';
import 'package:options/features/scores/data/score_data_source.dart';
import 'package:options/widgets/textfield.dart';
import 'package:options/widgets/university_card.dart'; // Assumes MyTextField is defined here

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  final TextEditingController universityController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  List<Map<String, dynamic>> data = [];
  bool isLoading = true;
  int filterCount = 0;

  final List<dynamic> _allItems = [];

  List<dynamic> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    universityController.addListener(_updateUI);
    facultyController.addListener(_updateUI);
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
        setState(() {
          isLoading = false;
        });
        debugPrint('No valid arguments passed to TextFieldPage');
      }
    });
  }

  void _filterItems() {
    final universityQuery = universityController.text.toLowerCase();
    final facultyQuery = facultyController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems
          .where((item) => item['program_id'].toString().toLowerCase().contains(universityQuery) && item['program_name_th'].toString().toLowerCase().contains(facultyQuery))
          .toList();
      filterCount = _filteredItems.length;
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
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.primary, foregroundColor: Theme.of(context).colorScheme.surfaceContainer, title: const Text("TCAS Arcana")),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
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
                          suffixIcon: (universityController.text.isNotEmpty)
                              ? IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    universityController.clear();
                                  },
                                )
                              : null,
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
                          suffixIcon: (facultyController.text.isNotEmpty)
                              ? IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: () {
                                    facultyController.clear();
                                  },
                                )
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Count: $filterCount',
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ],
                ),
                const Divider(),
                // SizedBox(height: 16),
                if (_filteredItems.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        final item = _filteredItems[index];
                        return UniversityCard(
                          universityName: item['program_id'] ?? '',
                          programName: item['program_name_th'] ?? '',
                          estMinScore: item['estimated_min_score'].toString(),
                          yourScore: item['your_score'].toStringAsFixed(2),
                          lastYearMinScore: item['lastyear_min_score'].toStringAsFixed(2),
                          lastYearMaxScore: item['lastyear_max_score'].toStringAsFixed(2),
                          distance: item['distance'].toStringAsFixed(2),
                        );
                      },
                    ),
                  ),

                if (isLoading)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CircularProgressIndicator(color: Color(0xff103A57)),
                  ),
                if (_filteredItems.isEmpty && !isLoading) Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0), child: Text('None')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
