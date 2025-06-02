import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning_frontend/pages/sign_in/notifier/sign_in_state.dart';

// SignInNotifier is a Riverpod notifier that manages the state of the sign-in process.
class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier() : super(const SignInState());

  // Method to handle email changes
  void onEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  // Method to handle password changes
  void onPasswordChange(String password) {
    state = state.copyWith(password: password);
  }
}

// This notifier is used to manage the state of the sign-in form, allowing for reactive updates
// and interactions with the UI. It provides methods to update the email and password fields,
final signInNotifierProvider = StateNotifierProvider((ref) => SignInNotifier());
