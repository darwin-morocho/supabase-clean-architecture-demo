import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../blocs/in_progress/in_progress_tasks_bloc.dart';
import '../../blocs/in_progress/in_progress_tasks_state.dart';

class InProgressTasksScreen extends StatelessWidget {
  const InProgressTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => InProgressTasksBloc(
        const InProgressTasksState.loading(),
      ),
      child: Material(),
    );
  }
}
