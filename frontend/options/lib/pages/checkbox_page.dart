// checkbox_page.dart
import 'package:flutter/material.dart';

class CheckboxListPage extends StatefulWidget {
  @override
  _CheckboxListPageState createState() => _CheckboxListPageState();
}

class _CheckboxListPageState extends State<CheckboxListPage> {
  final List<String> gpax_items = [
    'GPAX',
    'GPA_THAI',
    'GPA_MATH',
    'GPA_SCIENCE',
    'GPA_SOCIAL',
    'GPA_PE',
    'GPA_ART',
    'GPA_KANNGAN',
    'GPA_FOREIGNLANG',
  ];
  final List<String> tgat_items = ['TGAT1', 'TGAT2', 'TGAT3'];
  final List<String> tpat_items = ['TPAT1', 'TPAT3', 'TPAT4', 'TPAT5'];
  final List<String> tpat2_items = ['TPAT21', 'TPAT22', 'TPAT23'];
  final List<String> a_level_items = [
    'A_Level_MATH1',
    'A_Level_MATH2',
    'A_Level_SCIENCE',
    'A_Level_PHY',
    'A_Level_CHEM',
    'A_Level_BIO',
    'A_Level_SOCIAL',
    'A_Level_THAI',
    'A_Level_ENG',
    'A_Level_FRANCE',
    'A_Level_GERMAN',
    'A_Level_JAPANESE',
    'A_Level_CHINESE',
    'A_Level_BALI',
    'A_Level_KOREAN',
    'A_Level_SPAIN',
  ];

  final Map<String, bool> gpax_checked_items = {};
  final Map<String, bool> tgat_checked_items = {};
  final Map<String, bool> tpat_checked_items = {};
  final Map<String, bool> tpat2_checked_items = {};
  final Map<String, bool> a_level_checked_items = {};

  bool enableNextButton = false;

  @override
  void initState() {
    super.initState();
    for (var item in gpax_items) {
      gpax_checked_items[item] = false;
    }
    for (var item in tgat_items) {
      tgat_checked_items[item] = false;
    }
    for (var item in tpat_items) {
      tpat_checked_items[item] = false;
    }
    for (var item in tpat2_items) {
      tpat2_checked_items[item] = false;
    }
    for (var item in a_level_items) {
      a_level_checked_items[item] = false;
    }
  }

  Widget buildCheckboxSection(
    String title,
    List<String> items,
    Map<String, bool> checkedItems,
  ) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      collapsedBackgroundColor: Theme.of(context).colorScheme.primaryFixed,
      children:
          items.map((item) {
            return CheckboxListTile(
              title: Text(item),
              value: checkedItems[item],
              onChanged: (bool? value) {
                setState(() {
                  checkedItems[item] = value ?? false;
                  enableNextButton = getSelectedItems().isNotEmpty;
                });
              },
            );
          }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TCAS Arcana"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          if (enableNextButton)
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  children: [
                    Text('Next', style: TextStyle(fontSize: 20)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              onTap: () {
                List<String> selectedItems = getSelectedItems();
                Navigator.pushNamed(
                  context,
                  '/textfield',
                  arguments: selectedItems,
                );
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0), // Optional padding
          child: Column(
            children: [
              buildCheckboxSection(
                'GPAX และ GPA',
                gpax_items,
                gpax_checked_items,
              ),
              buildCheckboxSection(
                'TGAT และความถนัดทั่วไป',
                tgat_items,
                tgat_checked_items,
              ),
              buildCheckboxSection(
                'TPAT ความถนัดเฉพาะด้าน',
                tpat_items,
                tpat_checked_items,
              ),
              buildCheckboxSection(
                'TPAT2 ความถนัดศิลปกรรมศาสตร์',
                tpat2_items,
                tpat2_checked_items,
              ),
              buildCheckboxSection(
                'A-Level',
                a_level_items,
                a_level_checked_items,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> getSelectedItems() {
    List<String> selected = [];

    gpax_checked_items.forEach((key, value) {
      if (value) selected.add(key);
    });
    tgat_checked_items.forEach((key, value) {
      if (value) selected.add(key);
    });
    tpat_checked_items.forEach((key, value) {
      if (value) selected.add(key);
    });
    tpat2_checked_items.forEach((key, value) {
      if (value) selected.add(key);
    });
    a_level_checked_items.forEach((key, value) {
      if (value) selected.add(key);
    });

    return selected;
  }
}
