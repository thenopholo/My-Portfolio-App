import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:my_portfolio/view/first_view.dart';
import 'package:my_portfolio/view/second_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  ///Create a on Next Page Function
  void onNextPage(int page) {
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///For makeing reponsive on all screen
    ui.Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: [
            FirstView(
              onNextPage: () => onNextPage(1),
            ),
            SecondView(
              onNextPage: () => onNextPage(0),
            ),
          ],
        ),
      ),
    );
  }
}
