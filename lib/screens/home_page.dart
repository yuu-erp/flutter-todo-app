import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/todo.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/widgets/todo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bg,
        appBar: _buildAppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              searchBox(),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, bottom: 20),
                    child: const Text(
                      'All Todos',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  for (ToDo todo in todoList) TodoItem(todo: todo)
                ],
              ))
            ],
          ),
        ));
  }

  Widget searchBox() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(Icons.search, color: AppColors.black, size: 25),
          border: InputBorder.none,
          hintText: 'Search...',
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.blue,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: AppColors.black,
            size: 36,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/images/Sleep.jpeg'),
            ),
          )
        ],
      ),
    );
  }
}
