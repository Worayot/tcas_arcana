import 'package:flutter/material.dart';
import 'package:options/widgets/item_name_map.dart';
import 'package:options/widgets/textfield.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool _disposed = false;
  // Map to store controllers for each selected item
  final Map<String, TextEditingController> _controllers = {};
  List<String> _selectedItems = [];

  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized && mounted) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is List<String>) {
        _selectedItems = args;
        for (var item in _selectedItems) {
          _controllers[item] = TextEditingController();
        }
        _initialized = true;
      } else {
        debugPrint('No valid arguments passed to TextFieldPage');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surfaceContainer,
        title: const Text("TCAS Arcana"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (!mounted) return;
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
              if (!mounted) return;
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
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            (mounted)
                ? ListView(
                  children: [
                    ..._selectedItems.map((item) {
                      final controller = _controllers[item];
                      if (controller == null) {
                        return const SizedBox();
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFieldHome(
                          controller: controller,
                          labelText: itemNameMap[item],
                        ),
                      );
                    }),
                  ],
                )
                : SizedBox(),
      ),
    );
  }

  @override
  void dispose() {
    if (!_disposed) {
      _controllers.forEach((_, controller) {
        controller.dispose();
      });
      _disposed = true;
    }
    super.dispose();
  }
}
