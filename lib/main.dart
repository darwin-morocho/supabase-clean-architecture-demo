import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'core/data/repositories/session_repository.dart';
import 'core/domain/repositories/session_repository.dart';
import 'core/presentation/blocs/session/session_bloc.dart';
import 'core/presentation/blocs/session/session_state.dart';
import 'core/presentation/my_app.dart';
import 'features/authentication/data/repositories/authentication_repository.dart';
import 'features/authentication/domain/repositories/authentication_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await supabase.Supabase.initialize(
    url: const String.fromEnvironment('supabaseUrl'),
    anonKey: const String.fromEnvironment('supabaseAnonKey'),
  );

  final supabaseClient = supabase.Supabase.instance.client;

  runApp(
    MultiProvider(
      providers: [
        Provider<SessionRepository>(
          create: (_) => SessionRepositoryImpl(
            authClient: supabaseClient.auth,
          ),
        ),
        Provider<AuthenticationRepository>(
          create: (_) => AuthenticationRepositoryImpl(
            authClient: supabaseClient.auth,
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => SessionBloc(
            SessionState.loading(),
            context.read<SessionRepository>(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
