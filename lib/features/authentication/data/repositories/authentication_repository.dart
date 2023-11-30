import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/data/models/user_model.dart';
import '../../../../core/either.dart';
import '../../../../core/failures/failure.dart';
import '../../../../core/typedefs.dart';
import '../../domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  AuthenticationRepositoryImpl({
    required GoTrueClient authClient,
  }) : _authClient = authClient;

  final GoTrueClient _authClient;

  @override
  FutureEither<Failure, UserModel> signIn({
    required String email,
    required String password,
  }) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  FutureEither<Failure, UserModel> signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final response = await _authClient.signUp(
        email: email,
        password: password,
        data: {
          'name': name,
        },
      );

      final user = response.user!;
      return Either.right(
        UserModel.fromSupabaseUser(
          id: user.id,
          metadata: user.userMetadata ?? {},
        ),
      );
    } catch (e, s) {
      print(e);
      print(s);
      return Either.left(
        Failure(),
      );
    }
  }
}
