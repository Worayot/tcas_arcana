import 'package:flutter/material.dart';
import 'package:options/pages/checkbox_page.dart';
import 'package:options/pages/summary.dart';
import 'package:options/pages/textfield_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Options',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff366B0B)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CheckboxListPage(),
        '/textfield': (context) => const TextFieldPage(),
        '/summary': (context) => Summary(),
      },
    );
  }
}
