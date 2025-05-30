import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning_frontend/common/widgets/app_bar.dart';
import 'package:ulearning_frontend/common/widgets/app_textfields.dart';
import 'package:ulearning_frontend/common/widgets/button_widgets.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                // more login options can be added here
                Center(
                  child: text14Normal(
                    text: "Enter your details below & free sign up",
                  ),
                ),
                SizedBox(height: 50),
                // user name text box
                appTextField(
                  text: "User name",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your user name",
                  obscureText: false,
                ),
                SizedBox(height: 20),
                // email text box
                appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email address",
                  obscureText: false,
                ),
                SizedBox(height: 20),
                // password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your Password",
                  obscureText: true,
                ),
                SizedBox(height: 20),
                // confirm password text box
                appTextField(
                  text: "Confirm Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your Confirm Password",
                  obscureText: true,
                ),
                SizedBox(height: 20),
                // terms and conditions text
                Container(
                  margin: EdgeInsets.only(right: 50, left: 50),
                  child: text14Normal(
                    text:
                        "By creating an account, you agree to our Terms of Service and Privacy Policy.",
                  ),
                ),
                SizedBox(height: 100),
                // app register button
                Center(
                  child: appButton(
                    buttonName: "Register",
                    isLogin: true,
                    context: context,
                    func: () => print("register"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
