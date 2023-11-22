import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/task.dart';

part 'finished_tasks_state.freezed.dart';

@freezed
sealed class FinishedTasksState with _$FinishedTasksState {
  const factory FinishedTasksState.loading() = FinishedTasksLoadingState;
  const factory FinishedTasksState.failed() = FinishedTasksFailedState;
  const factory FinishedTasksState.loaded({
    required List<Task> tasks,
  }) = FinishedTasksLoadedState;
}
