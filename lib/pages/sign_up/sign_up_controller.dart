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

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo("Your name is empty");
      return;
    }

    if (state.userName.length < 6 || name.length < 6) {
      toastInfo("Your name is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (state.password != state.rePassword) {
      toastInfo("Your passwords do not match");
      return;
    }
  }
}
