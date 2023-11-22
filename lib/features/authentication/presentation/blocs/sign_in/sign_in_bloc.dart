import 'package:flutter/foundation.dart';

import 'sign_in_state.dart';

class SignInBloc extends ValueNotifier<SignInState> {
  SignInBloc(super.value);

  void onEmailChanged(String email) {
    value = value.copyWith(
      email: email.trim(),
    );
  }

  void onPasswordChanged(String password) {
    value = value.copyWith(
      password: password.trim(),
    );
  }
}
