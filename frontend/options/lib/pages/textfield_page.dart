// textfield_page.dart
import 'package:flutter/material.dart';
import 'package:options/widgets/textfield.dart'; // Assumes TextFieldHome is defined here

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  // Map to store controllers for each selected item
  final Map<String, TextEditingController> _controllers = {};
  List<String> _selectedItems = [];

  @override
  void initState() {
    super.initState();

    // Delay access to ModalRoute until after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is List<String>) {
        setState(() {
          _selectedItems = args;
          // Initialize controllers for each selected item
          for (var item in _selectedItems) {
            _controllers[item] = TextEditingController();
          }
        });
      } else {
        // Optional: handle missing or invalid arguments
        debugPrint('No valid arguments passed to TextFieldPage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("TCAS Arcana"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: const [
                  Text('Next', style: TextStyle(fontSize: 20)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            onTap: () {
              // Collect the data from the text fields
              List<Map<String, String>> values = [];
              for (int idx = 0; idx < _controllers.length; idx++) {
                values.add({
                  'domain': _selectedItems[idx],
                  'text': _controllers[_selectedItems[idx]]!.text,
                });
              }

              // Navigate to the next page and pass the collected data
              Navigator.pushNamed(context, '/summary', arguments: values);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ..._selectedItems.map((item) {
              final controller = _controllers[item];
              if (controller == null)
                return const SizedBox(); // Fallback widget
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFieldHome(controller: controller, labelText: item),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of all the controllers when the page is destroyed
    _controllers.forEach((key, controller) {
      controller.dispose();
    });
    super.dispose();
  }
}
