import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/common/entities/entities.dart';
import 'package:ulearning_frontend/common/global_loader/global_loader.dart';
import 'package:ulearning_frontend/common/widgets/popup_messages.dart';
import 'package:ulearning_frontend/pages/sign_in/notifier/sign_in_notifier.dart';

class SignInController {
  WidgetRef ref;

  SignInController(this.ref);

  Future<void> handleSignIn() async {
    var state = ref.read(signInNotifierProvider);
    String email = state.email;
    String password = state.password;

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(true);
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user == null) {
        toastInfo("User not found");
        return;
      }

      if (!credential.user!.emailVerified) {
        toastInfo("Please verify your email before signing in");
      }

      var user = credential.user;
      if (user != null) {
        // Extract user information
        String? displayName = user.displayName;
        String? email = user.email;
        String? id = user.uid;
        String? photoUrl = user.photoURL;

        // Create a LoginRequestEntity with the user information
        LoginRequestEntity loginRequestEntity = LoginRequestEntity();
        loginRequestEntity.avatar = photoUrl;
        loginRequestEntity.name = displayName;
        loginRequestEntity.email = email;
        loginRequestEntity.open_id = id;
        loginRequestEntity.type = 1;
      } else {
        toastInfo("login error");
      }
    } catch (e) {}
  }

  void asyncPostAllData(LoginRequestEntity loginRequestEntity) {
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}
