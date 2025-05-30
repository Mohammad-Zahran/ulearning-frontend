import 'package:flutter/material.dart';

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
