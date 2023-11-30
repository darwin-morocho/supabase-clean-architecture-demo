import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../failures/session_failure.dart';

part 'session_state.freezed.dart';

@freezed
sealed class SessionState with _$SessionState {
  factory SessionState.loading() = SessionLoadingState;
  factory SessionState.loaded(UserProfile? user) = SessionLoadedState;
  factory SessionState.failed(SessionFailure failure) = SessionFailedState;
}
