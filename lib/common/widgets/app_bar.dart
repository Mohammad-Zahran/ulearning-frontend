/*
  prefferredSize widget gives you a height or space from the appbar downwords and we can 
  put child in the given space.
*/

// This widget is used to create the app bar for the login page
import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/utils/app_colors.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(color: Colors.grey.withOpacity(0.3), height: 1),
    ),
    title: text16Normal(text: "Login", color: AppColors.primaryText),
  );
}
