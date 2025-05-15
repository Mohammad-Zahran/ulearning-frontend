import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/widgets/app_shadow.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, {
  String imagePath = "assets/images/reading.png",
  String title = "",
  String subTitle = "",
  int index = 0,
}) {
  return Column(
    children: [
      Image.asset(imagePath, fit: BoxFit.fitWidth),

      Container(
        margin: EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),

      Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller),
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(child: text16Normal(text: "next", color: Colors.white)),
    ),
  );
}
