import '../../../../core/failures/failure.dart';
import '../../../../core/typedefs.dart';
import '../entities/task.dart';

abstract interface class TasksRepository {
  FutureEither<Failure, List<Task>> getTodo();
  FutureEither<Failure, List<Task>> getInProgress();
  FutureEither<Failure, List<Task>> getInFinished();
  FutureEither<Failure, void> moveToInProgress();
  FutureEither<Failure, void> moveToFinished();
}
