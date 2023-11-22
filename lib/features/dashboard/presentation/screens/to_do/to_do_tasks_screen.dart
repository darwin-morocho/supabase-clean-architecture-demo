import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../blocs/to_do/to_do_tasks_bloc.dart';
import '../../blocs/to_do/to_do_tasks_state.dart';

class ToDoTasksScreen extends StatelessWidget {
  const ToDoTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => ToDoTasksBloc(
        const ToDoTasksState.loading(),
      ),
      child: Material(),
    );
  }
}
