import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';
import 'package:ulearning_frontend/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              thirdPartyLogin(),
              // more login options can be added here
              text14Normal(text: "Or use your email email account to login"),
            ],
          ),
        ),
      ),
    );
  }
}
