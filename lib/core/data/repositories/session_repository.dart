import '../../domain/repositories/session_repository.dart';
import '../../failures/session_failure.dart';
import '../../typedefs.dart';
import '../models/user_model.dart';

class SessionRepositoryImpl implements SessionRepository {
  @override
  FutureEither<SessionFailure, UserModel> getCurrentAuthenticatedUser() {
    // TODO: implement getCurrentAuthenticatedUser
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
