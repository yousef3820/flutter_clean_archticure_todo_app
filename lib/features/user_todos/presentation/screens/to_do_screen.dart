import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/cubits/cubit/get_user_to_do_cubit.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/widgets/get_to_do_button.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/widgets/landing_header.dart';
import 'package:flutter_clean_archticure_todo_app/features/user_todos/presentation/widgets/slider_widget.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  int currentIndex = 1;
  @override
  void initState() {
    context.read<GetUserToDoCubit>().eitherUserToDoOrFailure(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GetUserToDoCubit, GetUserToDoState>(
        listener: (context, state) {},
        builder: (context, state) {
          Widget content;
          if (state is GetUserToDoLoading) {
            content = const Center(child: CircularProgressIndicator());
          } else if (state is GetUserToDoSuccess) {
            content = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LandingHeader(
                  length: state.toDoList.length.toString(),
                  userid: state.toDoList[currentIndex].userId.toString(),
                  noOfCompleted: state.toDoList
                      .where((todo) => todo.completed)
                      .length
                      .toString(),
                ),
                SizedBox(height: 40),

                SliderWidget(
                  currentValue: currentIndex.toDouble(),
                  onChange: (value) {
                    setState(() {
                      currentIndex = value.toInt();
                    });
                  },
                ),
                SizedBox(height: 40),
                GetToDoButton(id: currentIndex),
              ],
            );
          } else {
            // Fallback (shouldn’t happen)
            content = const Center(child: Text('Unknown state'));
          }
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(child: content),
            ),
          );
        },
      ),
    );
  }
}
