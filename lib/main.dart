import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archticure_todo_app/core/service_loactor.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/cubits/cubit/get_user_to_do_cubit.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/screens/to_do_screen.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetUserToDoCubit(),
      child: MaterialApp(home: const ToDoScreen() , debugShowCheckedModeBanner: false,),
    );
  }
}
