import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Change notifier provider class allows us to use the Task Property throughout the app
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
