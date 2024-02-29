import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Todo App', debugShowCheckedModeBanner: false, home: HomePage());
  }
}
