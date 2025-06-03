import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/common/global_loader/global_loader.dart';
import 'package:ulearning_frontend/common/utils/app_colors.dart';
import 'package:ulearning_frontend/common/widgets/app_bar.dart';
import 'package:ulearning_frontend/common/widgets/app_textfields.dart';
import 'package:ulearning_frontend/common/widgets/button_widgets.dart';
import 'package:ulearning_frontend/common/widgets/text_widgets.dart';
import 'package:ulearning_frontend/pages/sign_in/notifier/sign_in_notifier.dart';
import 'package:ulearning_frontend/pages/sign_in/sign_in_controller.dart';
import 'package:ulearning_frontend/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> {
  late SignInController _controller;
  @override
  void initState() {
    _controller = SignInController(ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // To access notifier, use .notifier, to access state, just use provider
    final signInProvider = ref.watch(signInNotifierProvider);
    final loader = ref.watch(appLoaderProvider);
    print(signInProvider.email);
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(title: "Login"),
        backgroundColor: Colors.white,
        body:
            loader == false
                ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        controller: _controller.emailController, 
                        text: "Email",
                        iconName: "assets/icons/user.png",
                        hintText: "Enter your email address",
                        obscureText: false,
                        func:
                            (value) => ref
                                .read(signInNotifierProvider.notifier)
                                .onEmailChange(value),
                      ),
                      SizedBox(height: 20),
                      // password text box
                      appTextField(
                        controller: _controller.passwordController,
                        text: "Password",
                        iconName: "assets/icons/lock.png",
                        hintText: "Enter your password",
                        obscureText: true,
                        func:
                            (value) => ref
                                .read(signInNotifierProvider.notifier)
                                .onPasswordChange(value),
                      ),
                      SizedBox(height: 20),
                      // forget text
                      Container(
                        margin: EdgeInsets.only(right: 200),
                        child: textUnderline(text: "Forget Password?"),
                      ),
                      SizedBox(height: 100),
                      // app login button
                      Center(
                        child: appButton(
                          buttonName: "Login",
                          isLogin: true,
                          func: () => _controller.handleSignIn(),
                        ),
                      ),
                      SizedBox(height: 20),
                      // app register button
                      Center(
                        child: appButton(
                          buttonName: "Register",
                          isLogin: false,
                          context: context,
                          func: () => Navigator.pushNamed(context, "/register"),
                        ),
                      ),
                    ],
                  ),
                )
                : const Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.blue,
                    color: AppColors.primaryElement,
                  ),
                ),
      ),
    );
  }
}
