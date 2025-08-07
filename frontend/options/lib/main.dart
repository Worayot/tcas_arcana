// main.dart
import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:options/pages/checkbox_page.dart';
import 'package:options/pages/home.dart';
import 'package:options/features/scores/screens/summary.dart';
import 'package:options/pages/textfield_page.dart';
// import 'package:options/widgets/hero_test.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('th')],
      path: 'assets/lang', // <-- Path to your JSON files
      fallbackLocale: Locale('th'),
      startLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Options',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff013D5A))),
      initialRoute: '/',
      routes: {
        // '/': (context) => APage(imageUrl: ''),
        '/': (context) => HomePage(),
        '/checkbox': (context) => CheckboxListPage(),
        '/textfield': (context) => const TextFieldPage(),
        // '/summary': (context) => SummaryPage(),
      },
    );
  }
}
