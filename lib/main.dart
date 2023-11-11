import 'package:flutter/material.dart';
import 'package:flutter_todo/my_home_page.dart';
import 'package:flutter_todo/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      // home: Home(),
      home: MyHomePage()
    );
  }
}
