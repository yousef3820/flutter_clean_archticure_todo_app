import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/cubits/cubit/get_user_to_do_cubit.dart';

class GetToDoButton extends StatelessWidget {
  final int id;
  const GetToDoButton({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<GetUserToDoCubit>().eitherUserToDoOrFailure(id);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 30)
      ),
      child: Text("Get user" , style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
    );
  }
}