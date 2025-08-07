import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Image.asset(
      'assets/images/underwater.png',
      fit: BoxFit.cover,
      height: height,
      width: width,
      color: Theme.of(context).colorScheme.secondaryContainer.withAlpha(180),
      colorBlendMode: BlendMode.modulate,
    );
  }
}
