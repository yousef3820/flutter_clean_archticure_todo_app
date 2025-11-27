import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/failure.dart';
import 'package:flutter_clean_archticure_todo_app/core/params/todo_params.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/models/todo_model.dart';

abstract class GetUserToDoRepo {
  Future<Either<Failure, List <TodoModel>>> getUserToDo({
    required TodoParams todoParams,
  });
}
