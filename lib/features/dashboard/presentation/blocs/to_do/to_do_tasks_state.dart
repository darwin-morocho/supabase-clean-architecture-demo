import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/task.dart';

part 'to_do_tasks_state.freezed.dart';

@freezed
sealed class ToDoTasksState with _$ToDoTasksState {
  const factory ToDoTasksState.loading() = ToDoTasksLoadingState;
  const factory ToDoTasksState.failed() = ToDoTasksFailedState;
  const factory ToDoTasksState.loaded({
    required List<Task> task,
  }) = ToDoTasksLoadedState;
}
