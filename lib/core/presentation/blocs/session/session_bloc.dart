import 'package:flutter/foundation.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/repositories/session_repository.dart';
import '../../../either.dart';
import 'session_state.dart';

class SessionBloc extends ValueNotifier<SessionState> {
  SessionBloc(super.value, this._sessionRepository);

  final SessionRepository _sessionRepository;

  Future<void> init() async {
    final result = await _sessionRepository.getCurrentAuthenticatedUser();

    switch (result) {
      case Left():
        value = SessionState.loaded(null);
      case Right(value: final user):
        value = SessionState.loaded(user);
    }
  }

  void setUser(UserProfile user) {
    value = SessionState.loaded(user);
  }
}
