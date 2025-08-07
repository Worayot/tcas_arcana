// home.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:options/widgets/button_with_border.dart';
import 'package:options/widgets/home_background.dart';
import 'package:options/widgets/navigator_buttons.dart';
import 'package:water_fx/water_fx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("TCAS Arcana"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Positioned(
            // child: WaterFXContainer.simpleWidgetInstanceForPointer(
            //   child: Background(),
            // ),
            child: Background(),
          ),
          homeBody(context),
        ],
      ),
    ),
  );
}

Widget homeBody(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Center(
    child: Card(
      elevation: 4,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 300, maxWidth: 600),
        child: SizedBox(
          height: height * 0.5,
          width: width * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello there, user!',
                      style: TextStyle(
                        fontSize: 32,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 1), // X and Y offset
                            blurRadius: 1.0, // how blurry the shadow is
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                    TextSpan(
                      text: '\n${'letsGetStarted'.tr()}',
                      style: TextStyle(
                        fontSize: 24,
                        color: Theme.of(context).colorScheme.primary,
                        // fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 1), // X and Y offset
                            blurRadius: 1.0, // how blurry the shadow is
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              buildButtonWithBorder(
                text: "next".tr(),
                width: 100,
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.primaryFixed,
                borderColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.secondaryFixed,
                onPressed: () {
                  Navigator.pushNamed(context, '/checkbox');
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
