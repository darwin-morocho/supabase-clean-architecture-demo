import 'package:equatable/equatable.dart';

class Task extends Equatable {
  const Task({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  final String id;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final TaskStatus status;

  @override
  List<Object?> get props => [id, name, createdAt, updatedAt, status];
}

enum TaskStatus {
  toDo,
  inProgress,
  finished,
}
