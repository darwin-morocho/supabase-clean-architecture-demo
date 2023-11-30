import '../../../../core/domain/entities/user.dart';
import '../../../../core/failures/failure.dart';
import '../../../../core/typedefs.dart';

abstract interface class AuthenticationRepository {
  FutureEither<Failure, UserProfile> signIn({
    required String email,
    required String password,
  });

  FutureEither<Failure, UserProfile> signUp({
    required String email,
    required String name,
    required String password,
  });
}
