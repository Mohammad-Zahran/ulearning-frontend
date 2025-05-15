import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Inside the braces is called optional named Parameter
Widget text24Normal({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16Normal({String text = ""}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}
