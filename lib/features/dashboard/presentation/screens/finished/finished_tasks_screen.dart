import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../blocs/finished/finished_tasks_bloc.dart';
import '../../blocs/finished/finished_tasks_state.dart';

class FinishedTasksScreen extends StatelessWidget {
  const FinishedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => FinishedTasksBloc(
        const FinishedTasksState.loading(),
      ),
      child: Material(),
    );
  }
}
