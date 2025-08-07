import 'package:flutter/material.dart';

class NavigatorButtons extends StatefulWidget {
  final VoidCallback previousButtonAction;
  final VoidCallback nextButtonAction;
  const NavigatorButtons({
    super.key,
    required this.previousButtonAction,
    required this.nextButtonAction,
  });

  @override
  _NavigatorButtonsState createState() => _NavigatorButtonsState();
}

class _NavigatorButtonsState extends State<NavigatorButtons> {
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: widget.previousButtonAction,
          child: Text("Previous"),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          constraints: BoxConstraints(maxWidth: 150),
        ),
        ElevatedButton(onPressed: widget.nextButtonAction, child: Text("Next")),
      ],
    );
  }
}
