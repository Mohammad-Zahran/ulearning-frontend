import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/utils/app_colors.dart';
import 'package:ulearning_frontend/common/widgets/app_shadow.dart';
import 'package:ulearning_frontend/common/widgets/image_widgets.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

/*
  prefferredSize widget gives you a height or space from the appbar downwords and we can 
  put child in the given space.
*/

// This widget is used to create the app bar for the login page
AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(color: Colors.red, height: 1),
    ),
    title: text16Normal(text: "Login", color: AppColors.primaryText),
  );
}

// This widget is used to create a row of third-party login buttons
Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

// This widget is used to create a button for third-party login
Widget _loginButton(String imagePath) {
  return GestureDetector(
    child: SizedBox(width: 40, height: 40, child: Image.asset(imagePath)),
  );
}

// This widget is used to create a text field with an icon
Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "Type in your info",
  bool obscureText = false,
}) {
  return Container(
    padding: EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        Container(
          width: 325,
          height: 50,
          decoration: appBoxDecorationTextField(),
          // row contains icon and text field
          child: Row(
            children: [
              // for showing icons
              Container(
                margin: EdgeInsets.only(left: 17),
                child: appImage(imagePath: iconName),
              ),
              // our text field
              SizedBox(
                width: 280,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    // default border without any input
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    // focused border is with input
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  // by default it is false
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
