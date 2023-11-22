import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/task.dart';

part 'in_progress_tasks_state.freezed.dart';

@freezed
sealed class InProgressTasksState with _$InProgressTasksState {
  const factory InProgressTasksState.loading() = InProgressTasksLoadingState;
  const factory InProgressTasksState.failed() = InProgressTasksFailedState;
  const factory InProgressTasksState.loaded({
    required List<Task> tasks,
  }) = InProgressTasksLoadedState;
}
