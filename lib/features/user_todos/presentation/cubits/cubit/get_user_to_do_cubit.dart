import 'package:bloc/bloc.dart';
import 'package:flutter_clean_archticure_todo_app/core/params/todo_params.dart';
import 'package:flutter_clean_archticure_todo_app/core/service_loactor.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/entities/to_do_entity.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/domain/usecases/get_user_to_do.dart';
import 'package:meta/meta.dart';

part 'get_user_to_do_state.dart';

class GetUserToDoCubit extends Cubit<GetUserToDoState> {
  final GetUserToDo getToDos = locator<GetUserToDo>();
  GetUserToDoCubit() : super(GetUserToDoInitial());

  eitherUserToDoOrFailure(int id) async {
    emit(GetUserToDoLoading());
    final reposnse = await getToDos.call(todoParams: TodoParams(id: id));
    reposnse.fold(
      (failure) => emit(GetUserToDoFailure(errorMessage: failure.errorMessage)),
      (todos) => emit(GetUserToDoSuccess(toDoList: todos)),
    );
  }
}
