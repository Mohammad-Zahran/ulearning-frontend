import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/utils/app_colors.dart';
import 'package:ulearning_frontend/common/widgets/app_shadow.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

Widget appButton({
  double width = 325,
  double height = 50,
  String buttonName = "",
  bool isLogin = true,
  BuildContext? context,
  void Function()? func,
}) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: width,
      height: height,
      // isLogin true then send primaryElement color else primaryBackground color
      decoration: appBoxShadow(
        color: isLogin ? AppColors.primaryElement : AppColors.primaryBackground,
        border: Border.all(color: AppColors.primaryFourElementText),
      ),
      child: Center(
        child: text16Normal(
          text: buttonName,
          color: isLogin ? AppColors.primaryElementText : AppColors.primaryText,
        ),
      ),
    ),
  );
}
