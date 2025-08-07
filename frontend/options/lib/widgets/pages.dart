import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:options/pages/checkbox_page.dart';
import 'package:options/pages/home.dart';
import 'package:options/features/scores/screens/summary.dart';
import 'package:options/pages/textfield_page.dart';

class SlidablePages extends StatelessWidget {
  SlidablePages({super.key});
  final pages = [
    HomePage(),
    CheckboxListPage(),
    TextFieldPage(),
    // SummaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return PagesWrapper(pages: pages);
  }
}

class PagesWrapper extends StatefulWidget {
  final List<Widget> pages;
  const PagesWrapper({super.key, required this.pages});
  @override
  _PagesWrapperState createState() => _PagesWrapperState();
}

class _PagesWrapperState extends State<PagesWrapper> {
  final LiquidController _controller = LiquidController();
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final List<Widget> pages = widget.pages;
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Stack(
            children: [
              IgnorePointer(
                child: LiquidSwipe(
                  pages: pages,
                  // fullTransitionValue: 30,
                  initialPage: 0,
                  enableLoop: false,
                  waveType: WaveType.liquidReveal,
                  // ignoreUserGestureWhileAnimating: true,
                  liquidController: _controller,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // if _controller.currentPage
                        int currentPage = _controller.currentPage;
                        int prevPage = (currentPage - 1) % pages.length;
                        _controller.animateToPage(page: prevPage == 0 ? 0 : currentPage - 1);
                      },
                      child: Text("Previous"),
                    ),
                    Container(width: width * 0.15, constraints: BoxConstraints(maxWidth: 150)),
                    ElevatedButton(
                      onPressed: () {
                        int nextPage = (_controller.currentPage + 1) % pages.length;
                        _controller.animateToPage(page: nextPage);
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
