import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo(
  String msg, {
  Color backgroundColor = Colors.blue,
  Color textColor = Colors.white,
}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 2,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: 16.0,
  );
}
