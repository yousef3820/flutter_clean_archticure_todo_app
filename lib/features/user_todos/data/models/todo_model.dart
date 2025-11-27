import 'package:flutter_clean_archticure_todo_app/core/databases/apis/api_end_points.dart';

class TodoModel{
  final int id;
  final String title;
  final int userId;
  final bool completed;
  TodoModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
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
