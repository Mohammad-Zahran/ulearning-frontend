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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              thirdPartyLogin(),
              // more login options can be added here
              Center(
                child: text14Normal(
                  text: "Or use your email email account to login",
                ),
              ),
              SizedBox(height: 50),
              // email text box
              appTextField(
                text: "Email",
                iconName: "assets/icons/user.png",
                hintText: "Enter your email address",
                obscureText: false,
              ),
              SizedBox(height: 50),
              // password text box
              appTextField(
                text: "Password",
                iconName: "assets/icons/lock.png",
                hintText: "Enter your password",
                obscureText: true,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
