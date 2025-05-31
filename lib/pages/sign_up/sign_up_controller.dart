import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/common/widgets/popup_messages.dart';
import 'package:ulearning_frontend/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  // The WidgetRef is used to access the state and methods of the notifier.
  late WidgetRef ref;

  // Constructor to initialize the WidgetRef
  // This allows the controller to access the state and methods of the notifier.
  SignUpController({required this.ref});

  void handleSignUp() {
    // Accessing the state of the RegisterNotifier using the ref
    // This allows you to read the current state of the registration process.
    var state = ref.read(registerNotifierProvider);

    // Here you can implement the logic to handle the sign-up process
    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    print("Your name is $name");
    print("Your email is $email");
    print("Your password is $password");
    print("Your rePassword is $rePassword");

    if (state.password != state.rePassword) {
      toastInfo("Your passwords do not match");
    } else {
      // Here you can add the logic to handle the sign-up process, such as making an API call.
      print("Sign up successful");
    }
  }
}
