import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../features/authentication/presentation/screens/sign_in/sign_in_screen.dart';
import '../../../features/authentication/presentation/screens/sign_up/sign_up_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<SignInRoute>(
  path: SignInRoute.path,
)
class SignInRoute extends GoRouteData {
  static const path = '/sign-in';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInScreen();
  }
}

@TypedGoRoute<SignUpRoute>(
  path: SignUpRoute.path,
)
class SignUpRoute extends GoRouteData {
  static const path = '/sign-up';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignUpScreen();
  }
}

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
)
class HomeRoute extends GoRouteData {
  static const path = '/home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
