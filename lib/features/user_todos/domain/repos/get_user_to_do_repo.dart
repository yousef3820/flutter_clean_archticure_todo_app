import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/failure.dart';
import 'package:flutter_clean_archticure_todo_app/core/params/todo_params.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/entities/to_do_entity.dart';

abstract class GetUserToDoRepo {
  Future<Either<Failure, List <ToDoEntity>>> getUserToDo({
    required TodoParams todoParams,
  });
}
