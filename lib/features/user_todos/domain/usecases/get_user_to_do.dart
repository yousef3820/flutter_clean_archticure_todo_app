import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/failure.dart';
import 'package:flutter_clean_archticure_todo_app/core/params/todo_params.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/models/todo_model.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/repos/get_user_to_do_repo.dart';

class GetUserToDo {
  final GetUserToDoRepo getUserToDoRepo;

  GetUserToDo({required this.getUserToDoRepo});

  Future<Either<Failure,List<TodoModel>>>call({required TodoParams todoParams})
  {
    return getUserToDoRepo.getUserToDo(todoParams: todoParams);
  }
}