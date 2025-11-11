import 'package:flutter_clean_archticure_todo_app/core/databases/apis/api_end_points.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/entities/to_do_entity.dart';

class TodoModel extends ToDoEntity {
  final int id;
  final String title;
  TodoModel({
    required this.id,
    required super.userId,
    required this.title,
    required super.completed,
  });

  factory TodoModel.fromjson(Map<String, dynamic> json) {
    return TodoModel(
      id: json[ApiKeys.id],
      userId: json[ApiKeys.userId],
      title: json[ApiKeys.title],
      completed: json[ApiKeys.completed],
    );
  }
}
