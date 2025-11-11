import 'package:flutter_clean_archticure_todo_app/core/databases/apis/api_consumer.dart';
import 'package:flutter_clean_archticure_todo_app/core/databases/apis/api_end_points.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/models/todo_model.dart';

class RemoteDataSource {
  final ApiConsumer apiConsumer;

  RemoteDataSource({required this.apiConsumer});

  Future<List<TodoModel>> getToDo(int id) async {
    final response = await apiConsumer.get(
      "${ApiEndPoints.todos}",
      queryParameters: {"${ApiKeys.userId}": id},
    );
    print(".......................................................");
    print(response);
    print("///////////////////////////////////////////////////////");
    final todos = (response as List)
        .map((todo) => TodoModel.fromjson(todo))
        .toList();
    return todos;
  }
}
