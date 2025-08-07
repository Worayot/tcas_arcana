// checkbox_page.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:options/widgets/item_name_map.dart';

class CheckboxListPage extends StatefulWidget {
  const CheckboxListPage({super.key});

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
    bool allSelected = items.every((item) => checkedItems[item] == true);

    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 600),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Theme(
                      data: Theme.of(
                        context,
                      ).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        backgroundColor: Color(0xffEAF6FF),
                        collapsedBackgroundColor:
                            Theme.of(context).colorScheme.primaryFixed,
                        children:
                            items.map((item) {
                              return CheckboxListTile(
                                title: Text(itemNameMap[item] ?? item),
                                value: checkedItems[item],

                                onChanged: (bool? value) {
                                  setState(() {
                                    checkedItems[item] = value ?? false;
                                    enableNextButton =
                                        getSelectedItems().isNotEmpty;
                                  });
                                },
                              );
                            }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Card(
                color: Color(0xff013D5A),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color:
                              allSelected
                                  ? Colors.transparent
                                  : Colors.white70.withAlpha(
                                    220,
                                  ), // White when unchecked
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Checkbox(
                          value: allSelected,
                          splashRadius: 16,
                          checkColor: Theme.of(context).colorScheme.primary,
                          activeColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (bool? value) {
                            setState(() {
                              for (var item in items) {
                                checkedItems[item] = value ?? false;
                              }
                              enableNextButton = getSelectedItems().isNotEmpty;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "selectAll".tr(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TCAS Arcana"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,

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
          padding: const EdgeInsets.only(
            bottom: 16.0,
            left: 4,
          ), // Optional padding
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                'Select at least one of these items to continue.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
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
