import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/common/utils/app_colors.dart';
import 'package:ulearning_frontend/common/global_loader/global_loader.dart';
import 'package:ulearning_frontend/common/widgets/app_bar.dart';
import 'package:ulearning_frontend/common/widgets/app_textfields.dart';
import 'package:ulearning_frontend/common/widgets/button_widgets.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';
import 'package:ulearning_frontend/pages/sign_up/notifier/register_notifier.dart';
import 'package:ulearning_frontend/pages/sign_up/sign_up_controller.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Using the registerNotifierProvider to access the state and methods of RegisterNotifier
    final loader = ref.watch(appLoaderProvider);
    final regProvider = ref.watch(registerNotifierProvider);
    print("User Name: ${regProvider.userName}");

    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(title: "Sign Up"),
          backgroundColor: Colors.white,
          body:
              loader == false
                  ? SingleChildScrollView(
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
                          // Using the notifier to handle user name changes
                          func:
                              (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onUserNameChange(value),
                        ),
                        SizedBox(height: 20),
                        // email text box
                        appTextField(
                          text: "Email",
                          iconName: "assets/icons/user.png",
                          hintText: "Enter your email address",
                          obscureText: false,
                          func:
                              (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onEmailChange(value),
                        ),
                        SizedBox(height: 20),
                        // password text box
                        appTextField(
                          text: "Password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Enter your Password",
                          obscureText: true,
                          func:
                              (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onPasswordChange(value),
                        ),
                        SizedBox(height: 20),
                        // confirm password text box
                        appTextField(
                          text: "Confirm Password",
                          iconName: "assets/icons/lock.png",
                          hintText: "Enter your Confirm Password",
                          obscureText: true,
                          func:
                              (value) => ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRePasswordChange(value),
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
                            func: () {
                              SignUpController(ref: ref).handleSignUp();
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                  : Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.blue,
                      color: AppColors.primaryElement,
                    ),
                  ),
        ),
      ),
    );
  }
}
