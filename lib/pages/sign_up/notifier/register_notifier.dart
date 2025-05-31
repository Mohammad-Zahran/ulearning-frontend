import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ulearning_frontend/pages/sign_up/notifier/register_state.dart';
part 'register_notifier.g.dart';

@riverpod
// RegisterNotifier is a Riverpod notifier that manages the state of the registration process.
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  // Method to handle username changes
  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  // Method to handle email changes
  void onEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  // Method to handle password changes
  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
  }

  // Method to handle re-password changes
  void onRePasswordChange(String rePassword) {
    state = state.copyWith(rePassword: rePassword);
  }
}
