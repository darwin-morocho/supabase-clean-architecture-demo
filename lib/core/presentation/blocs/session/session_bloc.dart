import 'package:flutter/foundation.dart';

import '../../../domain/entities/user.dart';

class SessionBloc extends ValueNotifier<User?> {
  SessionBloc(super.value);
}
