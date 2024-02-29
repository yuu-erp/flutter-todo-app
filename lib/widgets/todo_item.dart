import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/todo.dart';
import 'package:flutter_application_1/utils/app_colors.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
          print('Check todo item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: AppColors.blue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: AppColors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              print('Click delete item');
            },
          ),
        ),
      ),
    );
  }
}
