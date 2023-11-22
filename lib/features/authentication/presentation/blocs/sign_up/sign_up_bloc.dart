import 'package:flutter/foundation.dart';

import 'sign_up_state.dart';

class SignUpBloc extends ValueNotifier<SignUpState> {
  SignUpBloc(super.value);

  void onEmailChanged(String email) {
    value = value.copyWith(
      email: email.trim(),
    );
  }

  void onNamelChanged(String name) {
    value = value.copyWith(
      name: name.trim(),
    );
  }

  void onPasswordChanged(String password) {
    value = value.copyWith(
      password: password.trim(),
    );
  }
}
