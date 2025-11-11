import 'package:dartz/dartz.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/exceptions.dart';
import 'package:flutter_clean_archticure_todo_app/core/errors/failure.dart';
import 'package:flutter_clean_archticure_todo_app/core/params/todo_params.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/data/datasources/remote_data_source.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/entities/to_do_entity.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/repos/get_user_to_do_repo.dart';

class GetUsertodoRepoImpl extends GetUserToDoRepo {
  final RemoteDataSource dataSource;

  GetUsertodoRepoImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<ToDoEntity>>> getUserToDo({
    required TodoParams todoParams,
  }) async {
    try {
      final response = await dataSource.getToDo(todoParams.id);
      return Right(response);
    } on ServerExceptions catch (e) {
      return left(Failure(errorMessage: e.errorModel.errorMessage));
    }
  }
}
