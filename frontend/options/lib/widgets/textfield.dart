import 'package:flutter/material.dart';

class TextFieldHome extends StatefulWidget {
  final TextEditingController controller;
  final String? labelText;
  final Function(dynamic)? onChanged;
  const TextFieldHome({
    super.key,
    required this.controller,
    this.labelText,
    this.onChanged,
  });

  @override
  _TextFieldHomeState createState() => _TextFieldHomeState();
}

class _TextFieldHomeState extends State<TextFieldHome> {
  @override
  void dispose() {
    widget.controller.dispose(); // Always dispose controllers when done
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
