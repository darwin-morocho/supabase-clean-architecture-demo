import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/presentation/router/routes.dart';
import '../../../../../core/presentation/utils/validations_ext.dart';
import '../../blocs/sign_in/sign_in_bloc.dart';
import '../../blocs/sign_in/sign_in_state.dart';
import '../../mixins/auth_form_mixin.dart';

class SignInScreen extends StatelessWidget with AuthFormMixin {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignInBloc(
        SignInState(),
      ),
      builder: (context, _) {
        final bloc = context.read<SignInBloc>();
        return Scaffold(
          body: SafeArea(
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Sign In',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      onChanged: bloc.onEmailChanged,
                      validator: emailValidator,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      onChanged: bloc.onPasswordChanged,
                      validator: passwordValidator,
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Consumer<SignInBloc>(
                      builder: (_, bloc, __) {
                        final state = bloc.value;

                        return MaterialButton(
                          color: Colors.blue,
                          onPressed: state.email.isValidEmail &&
                                  state.password.isValidPassword
                              ? () {}
                              : null,
                          child: const Text('Sign In'),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () => SignUpRoute().push(context),
                      child: const Text('Create a new account'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
