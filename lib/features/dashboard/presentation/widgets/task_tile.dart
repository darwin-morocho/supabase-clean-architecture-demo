import 'package:flutter/material.dart';

import '../../domain/entities/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.task,
    required this.onTap,
  });
  final Task task;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(task.id),
          Text(task.status.name),
        ],
      ),
    );
  }
}
