import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/widgets/app_shadow.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';
import 'package:ulearning_frontend/pages/sign_in/sign_in.dart';

Widget appOnboardingPage(
  PageController controller,
  BuildContext context, {
  String imagePath = "assets/images/reading.png",
  String title = "",
  String subTitle = "",
  int index = 0,
}) {
  return Column(
    children: [
      Image.asset(imagePath, fit: BoxFit.fitWidth),

      SizedBox(height: 15),
      text24Normal(text: title),

      SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: text16Normal(text: subTitle),
      ),

      // pass (controller, context, index) in that exact order:
      _nextButton(controller, context, index),
    ],
  );
}

// signature now matches the order you pass it:
Widget _nextButton(PageController controller, BuildContext context, int index) {
  final isLastPage = index == 3;
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index, // zero-based; if you want to go to next, maybe index + 1
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SignIn()),
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      alignment: Alignment.center,
      child: text16Normal(
        text: isLastPage ? "Get Started" : "Next",
        color: Colors.white,
      ),
    ),
  );
}
