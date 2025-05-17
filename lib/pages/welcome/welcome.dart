import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/pages/welcome/notifier/welcome_notifier.dart';
import 'package:ulearning_frontend/pages/welcome/widgets.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});

  // This is the page controller that will be used to control the PageView.
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // This listens to the indexProvider and rebuilds the widget when the index changes.
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // showing our three welcome pages
                PageView(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    // first page
                    appOnboardingPage(
                      _controller,
                      imagePath: "assets/images/reading.png",
                      title: "First See Learning",
                      subTitle:
                          "Forget about the paper, now learning all in one place",
                      index: 1,
                    ),
                    // second page
                    appOnboardingPage(
                      _controller,
                      imagePath: "assets/images/man.png",
                      title: "Connect With Everyone",
                      subTitle:
                          "Always keep in touch with your tutor and friends. Let's get connected",
                      index: 2,
                    ),
                    // third page
                    appOnboardingPage(
                      _controller,
                      imagePath: "assets/images/boy.png",
                      title: "Always Fascinated Learning",
                      subTitle:
                          "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                      index: 3,
                    ),
                  ],
                ),
                // for showing dots
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    position: index.toDouble(),
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: const Size.square(9.0),
                      activeSize: const Size(24.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
