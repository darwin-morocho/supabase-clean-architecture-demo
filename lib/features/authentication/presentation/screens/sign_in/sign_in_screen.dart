import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../blocs/sign_in/sign_in_bloc.dart';
import '../../blocs/sign_in/sign_in_state.dart';

class SignInScreen extends StatelessWidget {
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
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormField(
                      onChanged: bloc.onEmailChanged,
                      decoration: const InputDecoration(
                        label: Text('Email'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      onChanged: bloc.onPasswordChanged,
                      decoration: const InputDecoration(
                        label: Text('Password'),
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: const Text('Sign In'),
                    ),
                    const SizedBox(height: 20),
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
