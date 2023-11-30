import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import '../../features/authentication/presentation/screens/sign_in/sign_in_screen.dart';
import '../../features/authentication/presentation/screens/sign_up/sign_up_screen.dart';
import '../domain/repositories/session_repository.dart';
import 'blocs/session/session_bloc.dart';
import 'blocs/session/session_state.dart';
import 'router/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  Future<void> _init() async {
    final bloc = context.read<SessionBloc>();
    await bloc.init();

    _router = GoRouter(
      initialLocation: switch (bloc.value) {
        SessionLoadedState state =>
          state.user == null ? SignInRoute.path : HomeRoute.path,
        _ => SignInRoute.path,
      },
      routes: $appRoutes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _init(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        }

        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp.router(
            darkTheme: ThemeData.dark(),
            themeMode: ThemeMode.dark,
            routerConfig: _router,
          ),
        );
      },
    );
  }
}
