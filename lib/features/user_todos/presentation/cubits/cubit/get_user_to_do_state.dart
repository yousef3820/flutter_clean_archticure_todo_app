part of 'get_user_to_do_cubit.dart';

@immutable
sealed class GetUserToDoState {}

final class GetUserToDoInitial extends GetUserToDoState {}

final class GetUserToDoLoading extends GetUserToDoState {}

final class GetUserToDoSuccess extends GetUserToDoState {
  final List <ToDoEntity> toDoList;

  GetUserToDoSuccess({required this.toDoList});
}

final class GetUserToDoFailure extends GetUserToDoState {
  final String errorMessage;

  GetUserToDoFailure({required this.errorMessage});
}
