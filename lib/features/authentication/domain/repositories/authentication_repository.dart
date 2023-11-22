import '../../../../core/domain/entities/user.dart';
import '../../../../core/failures/failure.dart';
import '../../../../core/typedefs.dart';

abstract interface class AuthenticationRepository {
  FutureEither<Failure, User> signIn({
    String email,
    String password,
  });

  FutureEither<Failure, User> signUp({
    String email,
    String name,
    String password,
  });
}
